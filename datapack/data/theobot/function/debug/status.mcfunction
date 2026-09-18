tellraw @s [{"text":"===== TheoBot Status =====","color":"gold","bold":true}]
tellraw @s [{"text":"Phase: ","color":"gray"},{"score":{"name":"#phase","objective":"tb.phase"}}]
tellraw @s [{"text":"Ticks: ","color":"gray"},{"score":{"name":"#tick","objective":"tb.tick"}}]
execute as @a[tag=theobot] run tellraw @a [{"text":"Bot ","color":"aqua"},{"selector":"@s"},{"text":" state=","color":"gray"},{"score":{"name":"@s","objective":"tb.state"}},{"text":" mode=","color":"gray"},{"score":{"name":"@s","objective":"tb.mode"}},{"text":" id=","color":"gray"},{"score":{"name":"@s","objective":"tb.id"}}]
