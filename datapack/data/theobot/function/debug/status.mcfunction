tellraw @s [{"text":"===== TheoBot Status =====","color":"gold","bold":true}]
tellraw @s [{"text":"Phase: ","color":"gray"},{"score":{"name":"#phase","objective":"tb.phase"}}]
tellraw @s [{"text":"Ticks: ","color":"gray"},{"score":{"name":"#tick","objective":"tb.tick"}}]
execute at @a[tag=theobot] run function theobot:debug/status_current