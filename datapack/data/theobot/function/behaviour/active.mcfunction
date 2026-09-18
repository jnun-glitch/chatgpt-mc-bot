# Close-distance state. It is intentionally non-combat: look at the target and hold position.
execute if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run player @a[tag=theobot,distance=..0.2,limit=1] look upon @p[distance=..32,tag=!theobot,gamemode=!spectator] eyes delta 3
player @a[tag=theobot,distance=..0.2,limit=1] stop