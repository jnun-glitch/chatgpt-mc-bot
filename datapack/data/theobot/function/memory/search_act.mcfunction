$function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"look at $(x) $(y) $(z) ticks 8"}
$function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"path pos $(x) $(y) $(z)"}
$execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.id matches $(id) run scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.repath 20
