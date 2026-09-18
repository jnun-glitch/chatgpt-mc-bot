# Target perception at the current bot position.
execute if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] store result score @a[tag=theobot,distance=..0.2,limit=1] tb.dist run distance from @a[tag=theobot,distance=..0.2,limit=1] to @p[distance=..32,tag=!theobot,gamemode=!spectator] e 2
execute unless entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.dist 0
execute if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen 0
execute if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run function theobot:memory/capture
execute unless entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run scoreboard players add @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen 1