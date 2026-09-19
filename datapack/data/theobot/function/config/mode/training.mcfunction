# Training mode is a non-combat practice mode: track, look, path, and move without attack automation.
player @a[tag=theobot] path stop
player @a[tag=theobot] stop
player @a[tag=theobot] autojump true
scoreboard players set @a[tag=theobot] tb.mode 5
scoreboard players set @a[tag=theobot] tb.state 0
scoreboard players set @a[tag=theobot] tb.timer 0
scoreboard players set @a[tag=theobot] tb.repath 0
tellraw @a [{"text":"[TheoBot] ","color":"gold","bold":true},{"text":"Mode = TRAINING (follow/look/movement only)","color":"aqua"}]
