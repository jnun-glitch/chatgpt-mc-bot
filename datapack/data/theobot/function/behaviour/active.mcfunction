# Close-distance non-combat observation state.
execute if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run function theobot:herobot/control with {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"look upon @p[distance=..32,tag=!theobot,gamemode=!spectator] eyes ticks 3"}
function theobot:herobot/control with {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"stop"}
