scoreboard players set @a[tag=theobot] tb.diff 3
scoreboard players set @a[tag=theobot] tb.ping 0
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"ping 0"}
tellraw @a [{"text":"[TheoBot] Difficulty = CUSTOM (0ms simulated ping)","color":"gold"}]
