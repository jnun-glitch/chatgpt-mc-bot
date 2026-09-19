# Per-bot diagnostic report. Execution position is the current bot.
execute store result storage theobot:debug id int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.id
execute store result storage theobot:debug state int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.state
execute store result storage theobot:debug mode int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.mode
execute store result storage theobot:debug dist int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.dist
execute store result storage theobot:debug hdist int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.hdist
execute store result storage theobot:debug vdist int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.vdist
execute store result storage theobot:debug ping int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.ping
execute store result storage theobot:debug lastseen int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen
execute store result storage theobot:debug repath int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.repath
execute store result storage theobot:debug stuck int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.stuck
execute store result storage theobot:debug diff int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.diff
execute store result storage theobot:debug profile int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.profile
tellraw @a[tag=!theobot] [{"text":"[TheoBot] ","color":"gold","bold":true},{"selector":"@a[tag=theobot,distance=..0.2,limit=1]"},{"text":" id="},{"nbt":"id","storage":"theobot:debug"},{"text":" state="},{"nbt":"state","storage":"theobot:debug"},{"text":" mode="},{"nbt":"mode","storage":"theobot:debug"},{"text":" distX100="},{"nbt":"dist","storage":"theobot:debug"},{"text":" hdistX100="},{"nbt":"hdist","storage":"theobot:debug"},{"text":" vdistX100="},{"nbt":"vdist","storage":"theobot:debug"},{"text":" ping="},{"nbt":"ping","storage":"theobot:debug"},{"text":" lastSeen="},{"nbt":"lastseen","storage":"theobot:debug"},{"text":" repath="},{"nbt":"repath","storage":"theobot:debug"},{"text":" stuck="},{"nbt":"stuck","storage":"theobot:debug"},{"text":" diff="},{"nbt":"diff","storage":"theobot:debug"},{"text":" profile="},{"nbt":"profile","storage":"theobot:debug"}]
