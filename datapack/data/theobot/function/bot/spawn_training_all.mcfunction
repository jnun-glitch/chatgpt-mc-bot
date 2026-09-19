function theobot:bot/spawn_all
function theobot:config/mode/training
player @a[tag=theobot] ping 50
tellraw @s [{"text":"[TheoBot] ","color":"gold"},{"text":"All starter bots switched to TRAINING mode.","color":"aqua"}]
