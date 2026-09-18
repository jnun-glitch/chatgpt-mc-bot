# Search memory for the bot at the current execution position.
execute store result storage theobot:runtime.id int 1 run scoreboard players get @a[tag=theobot,distance=..0.2,limit=1] tb.id
function theobot:memory/search_dispatch with storage theobot:runtime