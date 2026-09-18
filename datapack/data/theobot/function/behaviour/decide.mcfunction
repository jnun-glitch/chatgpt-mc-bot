execute if score @s tb.mode matches 4 run scoreboard players set @s tb.state 0
execute if score @s tb.mode matches 4 run player @s stop

execute if score @s tb.mode matches 3 run scoreboard players set @s tb.state 5

execute if score @s tb.mode matches 1 if entity @p[distance=..32,tag=!theobot] run scoreboard players set @s tb.state 2
execute if score @s tb.mode matches 1 unless entity @p[distance=..32,tag=!theobot] run scoreboard players set @s tb.state 0

execute if score @s tb.mode matches 2 if entity @p[distance=..32,tag=!theobot] run scoreboard players set @s tb.state 3
execute if score @s tb.mode matches 2 unless entity @p[distance=..32,tag=!theobot] run scoreboard players set @s tb.state 1

execute if score @s tb.mode matches 0 if entity @p[distance=..32,tag=!theobot] if score @s tb.dist matches 451..3200 run scoreboard players set @s tb.state 2
execute if score @s tb.mode matches 0 if entity @p[distance=..32,tag=!theobot] if score @s tb.dist matches 0..450 run scoreboard players set @s tb.state 3
execute if score @s tb.mode matches 0 unless entity @p[distance=..32,tag=!theobot] if score @s tb.lastseen matches 1..80 run scoreboard players set @s tb.state 1
execute if score @s tb.mode matches 0 unless entity @p[distance=..32,tag=!theobot] if score @s tb.lastseen matches 81.. run scoreboard players set @s tb.state 0
