# Target update increments lastseen while no player is present.
execute if score @a[tag=theobot,distance=..0.2,limit=1] tb.lastseen matches 81.. run function theobot:target/clear