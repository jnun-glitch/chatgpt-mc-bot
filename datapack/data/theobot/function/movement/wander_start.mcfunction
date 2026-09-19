function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"look random"}
scoreboard players random @a[tag=theobot,distance=..0.2,limit=1] tb.timer 30 80
function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"move forward"}
