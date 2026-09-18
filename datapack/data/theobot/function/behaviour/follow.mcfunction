# Follow: HeroBot handles the actual player movement/pathing.
execute if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run player @a[tag=theobot,distance=..0.2,limit=1] look upon @p[distance=..32,tag=!theobot,gamemode=!spectator] eyes delta 3
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 0..500 run player @a[tag=theobot,distance=..0.2,limit=1] stop
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 501..3200 if score @a[tag=theobot,distance=..0.2,limit=1] tb.repath matches 0 run function theobot:movement/path_follow