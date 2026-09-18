function theobot:bot/reset
tag @a[tag=theobot_ready] remove theobot_ready
tellraw @s [{"text":"[TheoBot] ","color":"gold"},{"text":"All managed bots removed.","color":"green"}]