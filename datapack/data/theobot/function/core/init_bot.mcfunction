# Server-side initialization at the current bot position.
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.enabled 1
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.state 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.mode 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.profile 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.diff 1
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.timer 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.check 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.repath 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.dist 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.hdist 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.vdist 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.ping 50
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.hp 200
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.rng 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.stuck 0
execute store result score @a[tag=theobot,distance=..0.2,limit=1] tb.px run data get entity @a[tag=theobot,distance=..0.2,limit=1] Pos[0] 10
execute store result score @a[tag=theobot,distance=..0.2,limit=1] tb.py run data get entity @a[tag=theobot,distance=..0.2,limit=1] Pos[1] 10
execute store result score @a[tag=theobot,distance=..0.2,limit=1] tb.pz run data get entity @a[tag=theobot,distance=..0.2,limit=1] Pos[2] 10
scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.prevx = @a[tag=theobot,distance=..0.2,limit=1] tb.px
scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.prevy = @a[tag=theobot,distance=..0.2,limit=1] tb.py
scoreboard players operation @a[tag=theobot,distance=..0.2,limit=1] tb.prevz = @a[tag=theobot,distance=..0.2,limit=1] tb.pz
function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"autojump true"}
function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"ping 50"}
function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"stop"}
function theobot:loadout/apply
tag @a[tag=theobot,distance=..0.2,limit=1] add theobot_ready
