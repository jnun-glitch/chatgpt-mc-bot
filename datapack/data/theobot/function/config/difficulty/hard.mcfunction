scoreboard players set @a[tag=theobot] tb.diff 3
scoreboard players set @a[tag=theobot] tb.ping 25
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"ping 25"}
tellraw @s [{"text":"[TheoBot] ","color":"gold","bold":true},{"text":"Difficulty = HARD (25ms simulated ping)","color":"yellow"}]
