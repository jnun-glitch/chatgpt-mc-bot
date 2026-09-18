player @s look upon @p[distance=..32,tag=!theobot] eyes delta 3
execute if score @s tb.dist matches 0..400 run player @s stop
execute if score @s tb.dist matches 401..3200 if score @s tb.repath matches 0 run function theobot:movement/path_follow
