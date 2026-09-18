# Decision layer. Called at the bot position, with the server as command source.
# State: 0 IDLE, 1 SEARCH, 2 FOLLOW, 3 ACTIVE, 4 RETREAT, 5 WANDER.
# Mode: 0 AUTO, 1 FOLLOW, 2 ACTIVE, 3 WANDER, 4 STOP.

execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 4 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 0
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 3 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 5

execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 1 if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 2
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 1 unless entity @p[distance=..32,tag=!theobot,gamemode=!spectator] if score @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen matches 1..80 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 1
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 1 unless entity @p[distance=..32,tag=!theobot,gamemode=!spectator] if score @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen matches 81.. run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 0

execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 2 if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 3
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 2 unless entity @p[distance=..32,tag=!theobot,gamemode=!spectator] if score @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen matches 1..80 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 1
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 2 unless entity @p[distance=..32,tag=!theobot,gamemode=!spectator] if score @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen matches 81.. run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 0

execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 0 if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 801..3200 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 2
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 0 if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 0..800 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 3
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 0 unless entity @p[distance=..32,tag=!theobot,gamemode=!spectator] if score @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen matches 1..80 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 1
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.mode matches 0 unless entity @p[distance=..32,tag=!theobot,gamemode=!spectator] if score @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen matches 81.. run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 0

execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.diff matches 0 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.timer 5
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.diff matches 1 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.timer 2
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.diff matches 2 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.timer 0
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.diff matches 3 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.timer 3
