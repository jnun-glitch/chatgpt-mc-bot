scoreboard players add #tick tb.tick 1

# Run each bot at its own position while keeping the command source server-side.
# This is required because HeroBot checks operator permissions for /player.
execute at @a[tag=theobot,tag=!theobot_ready] run function theobot:core/init_bot
execute at @a[tag=theobot] run function theobot:target/update
execute at @a[tag=theobot] run function theobot:memory/age
execute at @a[tag=theobot,scores={tb.timer=0}] run function theobot:behaviour/decide
execute at @a[tag=theobot] run function theobot:behaviour/act

scoreboard players remove @a[tag=theobot,scores={tb.timer=1..}] tb.timer 1
scoreboard players remove @a[tag=theobot,scores={tb.repath=1..}] tb.repath 1