# Neutral active state: orient toward the target and keep a close walking position.
execute if entity @p[distance=..16,tag=!theobot] run player @s look upon @p[distance=..16,tag=!theobot] eyes delta 3
execute if score @s tb.dist matches 0..400 run player @s stop
execute if score @s tb.dist matches 401..1600 if score @s tb.repath matches 0 run function theobot:movement/path_follow
