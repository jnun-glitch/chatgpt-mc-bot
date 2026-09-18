$execute store result score #spawn tb.spawn run playerspawn $(name)
$execute if score #spawn tb.spawn matches 1 run tag @a[name=$(name)] add theobot
$execute if score #spawn tb.spawn matches 1 run scoreboard players set @a[name=$(name)] tb.id $(id)
$execute if score #spawn tb.spawn matches 1 run scoreboard players set @a[name=$(name)] tb.enabled 1
$execute if score #spawn tb.spawn matches 1 run scoreboard players set @a[name=$(name)] tb.state 0
$execute if score #spawn tb.spawn matches 1 run scoreboard players set @a[name=$(name)] tb.mode 0
$execute if score #spawn tb.spawn matches 1 run scoreboard players set @a[name=$(name)] tb.profile 0
$execute if score #spawn tb.spawn matches 1 run scoreboard players set @a[name=$(name)] tb.diff 1
$execute if score #spawn tb.spawn matches 1 run scoreboard players set @a[name=$(name)] tb.repath 0
$execute if score #spawn tb.spawn matches 1 run scoreboard players set @a[name=$(name)] tb.lastseen 999
$execute if score #spawn tb.spawn matches 1 run player @a[name=$(name)] autojump true
$execute if score #spawn tb.spawn matches 1 run player @a[name=$(name)] stop
