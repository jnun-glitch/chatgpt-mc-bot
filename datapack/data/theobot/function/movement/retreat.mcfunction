execute if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"look upon @p[distance=..32,tag=!theobot,gamemode=!spectator] eyes ticks 3"}
execute if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"move backward"}
execute if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"sprint"}
