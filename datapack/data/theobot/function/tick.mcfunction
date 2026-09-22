scoreboard players add #tick tb.tick 1
scoreboard players set #bots tb.bots 0
scoreboard players set #ready tb.ready 0
execute as @a[tag=theobot] run scoreboard players add #bots tb.bots 1
execute as @a[tag=theobot,tag=theobot_ready] run scoreboard players add #ready tb.ready 1

# Run each bot at its own position while keeping the command source server-side.
execute at @a[tag=theobot,tag=!theobot_ready] run function theobot:core/init_bot
execute at @a[tag=theobot] run function theobot:target/update
execute at @a[tag=theobot] run function theobot:memory/age
execute at @a[tag=theobot,scores={tb.timer=0}] run function theobot:behaviour/decide
execute at @a[tag=theobot] run function theobot:behaviour/act

# Sample movement every 20 ticks for stuck recovery.
scoreboard players add @a[tag=theobot] tb.check 1
execute at @a[tag=theobot,scores={tb.check=20..}] run function theobot:movement/stuck_check
scoreboard players set @a[tag=theobot,scores={tb.check=20..}] tb.check 0

scoreboard players remove @a[tag=theobot,scores={tb.timer=1..}] tb.timer 1
scoreboard players remove @a[tag=theobot,scores={tb.repath=1..}] tb.repath 1
