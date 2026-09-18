execute if entity @p[distance=..32,tag=!theobot] store result score @s tb.dist run distance from @s to @p[distance=..32,tag=!theobot] e 2
execute if entity @p[distance=..32,tag=!theobot] run scoreboard players set @s tb.lastseen 0
execute if entity @p[distance=..32,tag=!theobot] run function theobot:memory/capture
execute unless entity @p[distance=..32,tag=!theobot] run scoreboard players add @s tb.lastseen 1
