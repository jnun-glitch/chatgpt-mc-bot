scoreboard players set @a[tag=theobot] tb.diff 2
scoreboard players set @a[tag=theobot] tb.ping 50
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"ping 50"}
tellraw @s [{"text":"[TheoBot] ","color":"gold","bold":true},{"text":"Difficulty = NORMAL (50ms simulated ping)","color":"aqua"}]
