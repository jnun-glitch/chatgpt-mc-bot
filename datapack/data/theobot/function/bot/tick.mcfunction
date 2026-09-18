# Kept as the per-bot entry point for documentation/debugging.
# The caller must establish execution position at the bot and retain server source.
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.enabled matches 1 run function theobot:target/update
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.enabled matches 1 run function theobot:memory/age
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.enabled matches 1 run function theobot:behaviour/decide
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.enabled matches 1 run function theobot:behaviour/act