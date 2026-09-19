execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.timer matches 0 run function theobot:movement/wander_start
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.timer matches 1 run function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"stop"}
