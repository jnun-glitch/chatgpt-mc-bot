from pathlib import Path
import json
import re
import sys

ROOT = Path(__file__).resolve().parents[1] / "datapack"
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

function_root = ROOT / "data"
functions = {
    p.relative_to(function_root).as_posix()
    for p in function_root.rglob("*.mcfunction")
}

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
                ns, fn = ref.split(":", 1)
                expected = f"{ns}/function/{fn}.mcfunction"
                if expected not in functions:
                    errors.append(f"Missing tagged function: {ref}")
        except Exception as exc:
            errors.append(f"Invalid tag file {rel}: {exc}")

required = [
    ROOT / "pack.mcmeta",
    ROOT / "data/theobot/function/load.mcfunction",
    ROOT / "data/theobot/function/tick.mcfunction",
    ROOT / "data/theobot/function/api/spawn.mcfunction",
    ROOT / "data/theobot/function/api/spawn_macro.mcfunction",
]

for path in required:
    if not path.exists():
        errors.append(f"Missing required file: {path}")

ref_pattern = re.compile(r"(?<![\w/])([a-z0-9_.-]+:[a-z0-9_./-]+)(?![\w/])")
for path in ROOT.rglob("*.mcfunction"):
    text = path.read_text(encoding="utf-8")
    if not text.strip():
        errors.append(f"Empty function: {path}")
    for ref in ref_pattern.findall(text):
        # Skip Minecraft commands/resources and scoreboard objective names.
        if ref.startswith("minecraft:"):
            continue
        if ref not in {f"theobot:{x.split('/function/',1)[1][:-10]}" for x in functions if x.startswith("theobot/function/")}:
            # The regex can also see names that are not function references.
            if re.search(rf"\bfunction\s+{re.escape(ref)}\b", text):
                errors.append(f"Missing function reference: {ref} in {path}")

    if re.search(r"\bplayer\s+@s\b", text):
        errors.append(f"HeroBot source-context violation (player @s): {path}")
    if re.search(r"execute\s+as\s+.+?\brun\s+player\b", text):
        errors.append(f"HeroBot source-context violation (execute as ... run player): {path}")

objective_names = set(re.findall(r"\btb\.[A-Za-z0-9_.-]+\b", "\n".join(
    p.read_text(encoding="utf-8") for p in ROOT.rglob("*.mcfunction")
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
    f"{len(functions)} functions, "
    f"{len(list(ROOT.rglob('*.json')))} JSON files"
)
