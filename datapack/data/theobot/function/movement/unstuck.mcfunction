# Small recovery impulse.
player @a[tag=theobot,distance=..0.2,limit=1] stop
player @a[tag=theobot,distance=..0.2,limit=1] jump once
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.stuck 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.repath 0