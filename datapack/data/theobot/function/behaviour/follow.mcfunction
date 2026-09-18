# Follow profile behaviour. HeroBot handles player-like movement.
execute if entity @p[distance=..32,tag=!theobot,gamemode=!spectator] run player @a[tag=theobot,distance=..0.2,limit=1] look upon @p[distance=..32,tag=!theobot,gamemode=!spectator] eyes delta 3

# BALANCED: 5 block preferred stop distance.
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 0 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 0..500 run player @a[tag=theobot,distance=..0.2,limit=1] stop
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 0 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 501..3200 if score @a[tag=theobot,distance=..0.2,limit=1] tb.repath matches 0 run function theobot:movement/path_follow

# AGGRESSIVE: closer stop distance and sprint when far.
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 1 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 0..300 run player @a[tag=theobot,distance=..0.2,limit=1] stop
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 1 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 301..3200 if score @a[tag=theobot,distance=..0.2,limit=1] tb.repath matches 0 run function theobot:movement/path_follow
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 1 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 1001..3200 run player @a[tag=theobot,distance=..0.2,limit=1] sprint

# DEFENSIVE: larger stop distance, never sprint.
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 2 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 0..800 run player @a[tag=theobot,distance=..0.2,limit=1] stop
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 2 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 801..3200 if score @a[tag=theobot,distance=..0.2,limit=1] tb.repath matches 0 run function theobot:movement/path_follow
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 2 run player @a[tag=theobot,distance=..0.2,limit=1] unsprint

# MOBILE: balanced distance, more sprint.
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 3 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 0..500 run player @a[tag=theobot,distance=..0.2,limit=1] stop
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 3 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 501..3200 if score @a[tag=theobot,distance=..0.2,limit=1] tb.repath matches 0 run function theobot:movement/path_follow
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 3 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 701..3200 run player @a[tag=theobot,distance=..0.2,limit=1] sprint

# PASSIVE: largest stop distance, never sprint.
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 4 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 0..1000 run player @a[tag=theobot,distance=..0.2,limit=1] stop
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 4 if score @a[tag=theobot,distance=..0.2,limit=1] tb.dist matches 1001..3200 if score @a[tag=theobot,distance=..0.2,limit=1] tb.repath matches 0 run function theobot:movement/path_follow
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.profile matches 4 run player @a[tag=theobot,distance=..0.2,limit=1] unsprint