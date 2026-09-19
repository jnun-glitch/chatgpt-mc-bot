execute if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run function theobot:movement/retreat
execute unless entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"stop"}
