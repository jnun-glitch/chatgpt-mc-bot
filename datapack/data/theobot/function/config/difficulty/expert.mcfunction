scoreboard players set @a[tag=theobot] tb.diff 5
scoreboard players set @a[tag=theobot] tb.ping 0
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"ping 0"}
tellraw @s [{"text":"[TheoBot] ","color":"gold","bold":true},{"text":"Difficulty = EXPERT (0ms simulated ping)","color":"light_purple"}]
