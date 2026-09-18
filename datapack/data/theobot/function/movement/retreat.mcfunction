player @s look upon @p[distance=..32,tag=!theobot] eyes delta 3
player @s move backward
player @s sprint
execute if score @s tb.dist matches 801.. run scoreboard players set @s tb.state 0
