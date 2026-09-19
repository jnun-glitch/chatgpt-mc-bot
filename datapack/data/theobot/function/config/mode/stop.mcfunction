function theobot:herobot/control {selector:"@a[tag=theobot]",action:"path stop"}
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"stop"}
scoreboard players set @a[tag=theobot] tb.mode 4
scoreboard players set @a[tag=theobot] tb.state 0
tellraw @a [{"text":"[TheoBot] Mode = STOP","color":"gold"}]
