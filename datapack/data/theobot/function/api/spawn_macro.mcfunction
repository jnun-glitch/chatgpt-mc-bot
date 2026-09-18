$execute store result score #spawn tb.spawn run playerspawn $(name)
$execute if score #spawn tb.spawn matches 1 run tag @a[name=$(name),limit=1] add theobot
$execute if score #spawn tb.spawn matches 1 run scoreboard players set @a[name=$(name),limit=1] tb.id $(id)
$execute if score #spawn tb.spawn matches 1 run execute at @a[name=$(name),tag=theobot,limit=1] run function theobot:core/init_bot