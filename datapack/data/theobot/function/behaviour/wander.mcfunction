# Wander uses a persistent HeroBot movement action between timer resets.
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.timer matches 0 run function theobot:movement/wander_start
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.timer matches 1 run player @a[tag=theobot,distance=..0.2,limit=1] stop