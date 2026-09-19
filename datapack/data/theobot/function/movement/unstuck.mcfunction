function theobot:herobot/control with {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"stop"}
function theobot:herobot/control with {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"jump once"}
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.stuck 0
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.repath 0
