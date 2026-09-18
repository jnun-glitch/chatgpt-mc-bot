function theobot:bot/spawn
execute positioned ~2 ~ ~ run function theobot:bot/spawn2
execute positioned ~-2 ~ ~ run function theobot:bot/spawn3
execute positioned ~ ~ ~2 run function theobot:bot/spawn4
execute positioned ~ ~ ~-2 run function theobot:bot/spawn5
tellraw @s [{"text":"[TheoBot] ","color":"gold"},{"text":"Five bot slots initialized.","color":"green"}]