function theobot:herobot/control {selector:"@a[tag=theobot]",action:"path stop"}
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"stop"}
scoreboard players set @a[tag=theobot] tb.state 0
scoreboard players set @a[tag=theobot] tb.timer 0
scoreboard players set @a[tag=theobot] tb.repath 0
tellraw @s [{"text":"[TheoBot] ","color":"gold","bold":true},{"text":"Alle Bots angehalten.","color":"yellow"}]
