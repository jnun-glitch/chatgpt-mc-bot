# Spawn API.
# Set theobot:input name before calling this function.
data modify storage theobot:runtime name set from storage theobot:input name
scoreboard players add #next tb.next 1
execute store result storage theobot:runtime id int 1 run scoreboard players get #next tb.next
function theobot:api/spawn_macro with storage theobot:runtime
