# Spawn one HeroBot-backed training bot at the caller position.
data modify storage theobot:input name set value "TheoTrainer"
function theobot:api/spawn
scoreboard players set @a[name=TheoTrainer,tag=theobot,limit=1] tb.mode 5
scoreboard players set @a[name=TheoTrainer,tag=theobot,limit=1] tb.profile 3
scoreboard players set @a[name=TheoTrainer,tag=theobot,limit=1] tb.diff 1
function theobot:herobot/control with {selector:"@a[name=TheoTrainer,tag=theobot,limit=1]",action:"autojump true"}
function theobot:herobot/control with {selector:"@a[name=TheoTrainer,tag=theobot,limit=1]",action:"ping 50"}
tellraw @s [{"text":"[TheoBot] ","color":"gold"},{"text":"TheoTrainer spawned in TRAINING mode.","color":"aqua"}]
