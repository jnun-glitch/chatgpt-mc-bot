from pathlib import Path
import json
import re

ROOT = Path(__file__).resolve().parents[1] / "datapack"
errors = []

for path in ROOT.rglob("*.json"):
    try:
        json.loads(path.read_text(encoding="utf-8"))
    except Exception as exc:
        errors.append(f"Invalid JSON: {path}: {exc}")

for ref_file in [
    ROOT / "data/minecraft/tags/function/load.json",
    ROOT / "data/minecraft/tags/function/tick.json",
]:
    if not ref_file.exists():
        errors.append(f"Missing tag file: {ref_file}")
        continue
    data = json.loads(ref_file.read_text(encoding="utf-8"))
    for ref in data.get("values", []):
        if ref.startswith("#"):
            continue
        namespace, name = ref.split(":", 1)
        target = ROOT / "data" / namespace / "function" / f"{name}.mcfunction"
        if not target.exists():
            errors.append(f"Missing tagged function: {ref}")

required = [
    ROOT / "pack.mcmeta",
    ROOT / "data/theobot/function/load.mcfunction",
    ROOT / "data/theobot/function/tick.mcfunction",
]

for path in required:
    if not path.exists():
        errors.append(f"Missing required file: {path}")

objectives = set()
for path in ROOT.rglob("*.mcfunction"):
    text = path.read_text(encoding="utf-8")
    if not text.strip():
        errors.append(f"Empty function: {path}")
    objectives.update(re.findall(r"tb\.[A-Za-z0-9_.-]+", text))

for objective in sorted(objectives):
    if len(objective) > 16:
        errors.append(f"Objective too long: {objective} ({len(objective)})")

if errors:
    print("\n".join(errors))
    raise SystemExit(1)

print(f"Validation PASS: {len(list(ROOT.rglob('*.mcfunction')))} functions, {len(list(ROOT.rglob('*.json')))} JSON files")
