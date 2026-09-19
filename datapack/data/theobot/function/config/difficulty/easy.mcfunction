scoreboard players set @a[tag=theobot] tb.diff 0
scoreboard players set @a[tag=theobot] tb.ping 100
function theobot:herobot/control with {selector:"@a[tag=theobot]",action:"ping 100"}
tellraw @a [{"text":"[TheoBot] Difficulty = EASY (100ms simulated ping)","color":"gold"}]
