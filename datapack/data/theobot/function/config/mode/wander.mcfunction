function theobot:herobot/control with {selector:"@a[tag=theobot]",action:"path stop"}
scoreboard players set @a[tag=theobot] tb.mode 3
scoreboard players set @a[tag=theobot] tb.timer 0
tellraw @a [{"text":"[TheoBot] Mode = WANDER","color":"gold"}]
