scoreboard players set @a[tag=theobot] tb.diff 2
scoreboard players set @a[tag=theobot] tb.ping 25
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"ping 25"}
tellraw @a [{"text":"[TheoBot] Difficulty = HARD (25ms simulated ping)","color":"gold"}]
