scoreboard players set @a[tag=theobot] tb.autojump 0
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"autojump false"}
tellraw @s [{"text":"[TheoBot] ","color":"gold","bold":true},{"text":"Auto-Jump = OFF","color":"red"}]
