execute if score @s tb.enabled matches 0 run player @s stop
execute if score @s tb.enabled matches 1 run function theobot:target/update
execute if score @s tb.enabled matches 1 run function theobot:memory/age
execute if score @s tb.enabled matches 1 run function theobot:behaviour/decide
execute if score @s tb.enabled matches 1 run function theobot:behaviour/act

execute if score @s tb.timer matches 1.. run scoreboard players remove @s tb.timer 1
execute if score @s tb.repath matches 1.. run scoreboard players remove @s tb.repath 1

scoreboard players add @s tb.check 1
execute if score @s tb.check matches 20 run function theobot:movement/stuck_check
execute if score @s tb.check matches 20 run scoreboard players set @s tb.check 0
