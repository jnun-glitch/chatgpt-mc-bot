# Debug report for one bot.
# The execution position is at the bot; the command source remains server.
execute store result storage theobot:debug.state int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.state
execute store result storage theobot:debug.mode int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.mode
execute store result storage theobot:debug.id int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.id
execute store result storage theobot:debug.dist int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.dist
execute store result storage theobot:debug.lastseen int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen
execute store result storage theobot:debug.repath int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.repath
execute store result storage theobot:debug.stuck int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.stuck
execute store result storage theobot:debug.diff int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.diff
execute store result storage theobot:debug.profile int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.profile

tellraw @a[tag=!theobot] [{"text":"[TheoBot] ","color":"gold","bold":true},{"selector":"@a[tag=theobot,distance=..0.2,limit=1]"},{"text":" id=","color":"gray"},{"nbt":"id","storage":"theobot:debug"},{"text":" state=","color":"gray"},{"nbt":"state","storage":"theobot:debug"},{"text":" mode=","color":"gray"},{"nbt":"mode","storage":"theobot:debug"},{"text":" distX100=","color":"gray"},{"nbt":"dist","storage":"theobot:debug"},{"text":" lastSeen=","color":"gray"},{"nbt":"lastseen","storage":"theobot:debug"},{"text":" repath=","color":"gray"},{"nbt":"repath","storage":"theobot:debug"},{"text":" stuck=","color":"gray"},{"nbt":"stuck","storage":"theobot:debug"},{"text":" diff=","color":"gray"},{"nbt":"diff","storage":"theobot:debug"},{"text":" profile=","color":"gray"},{"nbt":"profile","storage":"theobot:debug"}]