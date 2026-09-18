execute store result score @s tb.px run data get entity @s Pos[0] 10
execute store result score @s tb.py run data get entity @s Pos[1] 10
execute store result score @s tb.pz run data get entity @s Pos[2] 10

scoreboard players operation @s tb.dx = @s tb.px
scoreboard players operation @s tb.dx -= @s tb.prevx
scoreboard players operation @s tb.dy = @s tb.py
scoreboard players operation @s tb.dy -= @s tb.prevy
scoreboard players operation @s tb.dz = @s tb.pz
scoreboard players operation @s tb.dz -= @s tb.prevz

execute if score @s tb.dx matches -2..2 if score @s tb.dz matches -2..2 if score @s tb.state matches 1..3 run scoreboard players add @s tb.stuck 1
execute unless score @s tb.dx matches -2..2 if score @s tb.dz matches -2..2 run scoreboard players set @s tb.stuck 0
execute if score @s tb.stuck matches 3.. run function theobot:movement/unstuck

scoreboard players operation @s tb.prevx = @s tb.px
scoreboard players operation @s tb.prevy = @s tb.py
scoreboard players operation @s tb.prevz = @s tb.pz
