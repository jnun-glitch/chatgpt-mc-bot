scoreboard players set @a[tag=theobot] tb.diff 1
scoreboard players set @a[tag=theobot] tb.ping 100
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"ping 100"}
tellraw @s [{"text":"[TheoBot] ","color":"gold","bold":true},{"text":"Difficulty = EASY (100ms simulated ping)","color":"green"}]
