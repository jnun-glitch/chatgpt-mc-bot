scoreboard players set @a[tag=theobot] tb.diff 0
scoreboard players set @a[tag=theobot] tb.ping 250
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"ping 250"}
tellraw @s [{"text":"[TheoBot] ","color":"gold","bold":true},{"text":"Difficulty = NPC (250ms simulated ping)","color":"gray"}]
