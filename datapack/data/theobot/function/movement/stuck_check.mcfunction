# Called at the current bot position with the server as command source.
execute store result score @a[tag=theobot,distance=..0.2,limit=1] tb.px run data get entity @a[tag=theobot,distance=..0.2,limit=1] Pos[0] 10
execute store result score @a[tag=theobot,distance=..0.2,limit=1] tb.py run data get entity @a[tag=theobot,distance=..0.2,limit=1] Pos[1] 10
execute store result score @a[tag=theobot,distance=..0.2,limit=1] tb.pz run data get entity @a[tag=theobot,distance=..0.2,limit=1] Pos[2] 10

scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.dx = @a[tag=theobot,distance=..0.2,limit=1] tb.px
scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.dx -= @a[tag=theobot,distance=..0.2,limit=1] tb.prevx
scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.dy = @a[tag=theobot,distance=..0.2,limit=1] tb.py
scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.dy -= @a[tag=theobot,distance=..0.2,limit=1] tb.prevy
scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.dz = @a[tag=theobot,distance=..0.2,limit=1] tb.pz
scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.dz -= @a[tag=theobot,distance=..0.2,limit=1] tb.prevz

execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.dx matches -2..2 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dz matches -2..2 if score @a[tag=theobot,distance=..0.2,limit=1] tb.state matches 1..4 run scoreboard players add @a[tag=theobot,distance=..0.2,limit=1] tb.stuck 1
execute unless score @a[tag=theobot,distance=..0.2,limit=1] tb.dx matches -2..2 unless score @a[tag=theobot,distance=..0.2,limit=1] tb.dz matches -2..2 run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.stuck 0
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.stuck matches 3.. run function theobot:movement/unstuck

scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.prevx = @a[tag=theobot,distance=..0.2,limit=1] tb.px
scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.prevy = @a[tag=theobot,distance=..0.2,limit=1] tb.py
scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.prevz = @a[tag=theobot,distance=..0.2,limit=1] tb.pz