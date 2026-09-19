from pathlib import Path
import json
import re
import sys

ROOT = Path(__file__).resolve().parents[1] / "datapack"
DATA_ROOT = ROOT / "data"
errors = []

pack_path = ROOT / "pack.mcmeta"
if not pack_path.exists():
    errors.append("Missing datapack/pack.mcmeta")
else:
    try:
        meta = json.loads(pack_path.read_text(encoding="utf-8"))["pack"]
        if meta.get("min_format") != [94, 1]:
            errors.append("pack.mcmeta min_format must be [94, 1]")
        if meta.get("max_format") != [94, 1]:
            errors.append("pack.mcmeta max_format must be [94, 1]")
        if "pack_format" in meta:
            errors.append("Legacy pack_format key is not allowed here")
    except Exception as exc:
        errors.append(f"Invalid pack.mcmeta: {exc}")

function_root = DATA_ROOT
function_files = list(function_root.rglob("*.mcfunction"))

# Store both filesystem-relative paths and real Minecraft function IDs.
functions = {p.relative_to(function_root).as_posix() for p in function_files}
function_ids = set()
for path in function_files:
    rel = path.relative_to(function_root)
    if len(rel.parts) < 3 or rel.parts[1] != "function":
        continue
    namespace = rel.parts[0]
    function_path = Path(*rel.parts[2:]).with_suffix("").as_posix()
    function_ids.add(f"{namespace}:{function_path}")

for rel in (
    "minecraft/tags/function/load.json",
    "minecraft/tags/function/tick.json",
):
    path = function_root / rel
    if not path.exists():
        errors.append(f"Missing {rel}")
    else:
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
            for ref in data.get("values", []):
                if ref.startswith("#"):
                    continue
                if ref not in function_ids:
                    errors.append(f"Missing tagged function: {ref}")
        except Exception as exc:
            errors.append(f"Invalid tag file {rel}: {exc}")

required = [
    ROOT / "pack.mcmeta",
    DATA_ROOT / "theobot/function/load.mcfunction",
    DATA_ROOT / "theobot/function/tick.mcfunction",
    DATA_ROOT / "theobot/function/api/spawn.mcfunction",
    DATA_ROOT / "theobot/function/api/spawn_macro.mcfunction",
]

for path in required:
    if not path.exists():
        errors.append(f"Missing required file: {path}")

function_ref_pattern = re.compile(r"\bfunction\s+([a-z0-9_.-]+:[a-z0-9_./-]+)")
for path in function_files:
    text = path.read_text(encoding="utf-8")
    for match in function_ref_pattern.finditer(text):
        ref = match.group(1)
        if ref not in function_ids:
            errors.append(f"Missing function reference: {ref} in {path}")

    if re.search(r"\bplayer\s+@s\b", text):
        errors.append(f"HeroBot source-context violation (player @s): {path}")
    if re.search(r"execute\s+as\s+.+?\brun\s+player\b", text):
        errors.append(f"HeroBot source-context violation (execute as ... run player): {path}")

objective_names = set(re.findall(r"\btb\.[A-Za-z0-9_.-]+\b", "\n".join(
    p.read_text(encoding="utf-8") for p in function_files
)))
for objective in objective_names:
    if len(objective) > 16:
        errors.append(f"Objective too long: {objective}")

if (ROOT / "data/theobot/functions").exists():
    errors.append("Legacy data/theobot/functions directory exists")

if errors:
    print("VALIDATION FAILED")
    print("\n".join(f"- {e}" for e in errors))
    sys.exit(1)

print(
    f"VALIDATION PASSED: "
    f"{len(function_files)} functions, "
    f"{len(list(ROOT.rglob('*.json')))} JSON files"
)
