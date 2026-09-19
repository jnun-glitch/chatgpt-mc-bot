# Training mode is a non-combat practice mode.
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"path stop"}
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"stop"}
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"autojump true"}
scoreboard players set @a[tag=theobot] tb.mode 5
scoreboard players set @a[tag=theobot] tb.state 0
scoreboard players set @a[tag=theobot] tb.timer 0
scoreboard players set @a[tag=theobot] tb.repath 0
tellraw @a [{"text":"[TheoBot] ","color":"gold","bold":true},{"text":"Mode = TRAINING (follow/look/movement only)","color":"aqua"}]
