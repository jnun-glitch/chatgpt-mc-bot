tellraw @s [{"text":"===== TheoBot Status =====","color":"gold","bold":true}]
tellraw @s [{"text":"Phase: ","color":"gray"},{"score":{"name":"#phase","objective":"tb.phase"}}]
tellraw @s [{"text":"Ticks: ","color":"gray"},{"score":{"name":"#tick","objective":"tb.tick"}}]
tellraw @s [{"text":"Bots: ","color":"gray"},{"score":{"name":"#bots","objective":"tb.bots"}}]
tellraw @s [{"text":"Ready: ","color":"gray"},{"score":{"name":"#ready","objective":"tb.ready"}}]
execute at @a[tag=theobot] run function theobot:debug/status_current
