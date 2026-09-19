function theobot:herobot/control {selector:"@a[tag=theobot]",action:"path stop"}
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"stop"}
scoreboard players set @a[tag=theobot] tb.mode 0
tellraw @a [{"text":"[TheoBot] Mode = AUTO","color":"gold"}]
