# Repath toward the nearest eligible real player.
player @a[tag=theobot,distance=..0.2,limit=1] path entity @p[distance=..32,tag=!theobot,gamemode=!spectator]
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.repath 12
player @a[tag=theobot,distance=..0.2,limit=1] sprint