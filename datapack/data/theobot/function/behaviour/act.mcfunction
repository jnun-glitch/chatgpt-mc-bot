execute if score @s tb.state matches 0 run function theobot:behaviour/idle
execute if score @s tb.state matches 1 run function theobot:behaviour/search
execute if score @s tb.state matches 2 run function theobot:behaviour/follow
execute if score @s tb.state matches 3 run function theobot:behaviour/active
execute if score @s tb.state matches 4 run function theobot:behaviour/retreat
execute if score @s tb.state matches 5 run function theobot:behaviour/wander
