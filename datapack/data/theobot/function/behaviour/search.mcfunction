# Search remembered last-seen position.
player @a[tag=theobot,distance=..0.2,limit=1] stop
player @a[tag=theobot,distance=..0.2,limit=1] unsprint
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen matches 1..80 if score @a[tag=theobot,distance=..0.2,limit=1] tb.repath matches 0 run function theobot:memory/search