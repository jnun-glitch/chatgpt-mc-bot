scoreboard players set @s tb.enabled 1
scoreboard players set @s tb.state 0
scoreboard players set @s tb.mode 0
scoreboard players set @s tb.profile 0
scoreboard players set @s tb.diff 1
scoreboard players set @s tb.timer 0
scoreboard players set @s tb.check 0
scoreboard players set @s tb.repath 0
scoreboard players set @s tb.lastseen 999
scoreboard players set @s tb.dist 0
scoreboard players set @s tb.hp 200
scoreboard players set @s tb.rng 0
scoreboard players set @s tb.stuck 0
execute store result score @s tb.px run data get entity @s Pos[0] 10
execute store result score @s tb.py run data get entity @s Pos[1] 10
execute store result score @s tb.pz run data get entity @s Pos[2] 10
scoreboard players operation @s tb.prevx = @s tb.px
scoreboard players operation @s tb.prevy = @s tb.py
scoreboard players operation @s tb.prevz = @s tb.pz
player @s autojump true
player @s stop
function theobot:loadout/apply
