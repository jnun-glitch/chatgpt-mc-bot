# Repath toward the nearest eligible real player.
function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"path entity @p[distance=..32,tag=!theobot,gamemode=!spectator]"}
scoreboard players set @a[tag=theobot,distance=..0.2,limit=1] tb.repath 12
function theobot:herobot/control {selector:"@a[tag=theobot,distance=..0.2,limit=1]",action:"sprint"}
