scoreboard players set @a[tag=theobot] tb.diff 4
scoreboard players set @a[tag=theobot] tb.ping 10
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"ping 10"}
tellraw @s [{"text":"[TheoBot] ","color":"gold","bold":true},{"text":"Difficulty = TIER 1 (10ms simulated ping)","color":"aqua"}]
