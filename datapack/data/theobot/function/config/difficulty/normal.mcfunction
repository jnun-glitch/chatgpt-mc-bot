scoreboard players set @a[tag=theobot] tb.diff 1
scoreboard players set @a[tag=theobot] tb.ping 50
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"ping 50"}
tellraw @a [{"text":"[TheoBot] Difficulty = NORMAL (50ms simulated ping)","color":"gold"}]
