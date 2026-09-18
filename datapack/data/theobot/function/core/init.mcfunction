# Initialize only bots that do not have a runtime profile yet.
execute unless score @s tb.enabled matches 0..1 run function theobot:core/init_bot
