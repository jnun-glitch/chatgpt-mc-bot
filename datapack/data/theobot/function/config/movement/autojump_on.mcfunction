scoreboard players set @a[tag=theobot] tb.autojump 1
function theobot:herobot/control {selector:"@a[tag=theobot]",action:"autojump true"}
tellraw @s [{"text":"[TheoBot] ","color":"gold","bold":true},{"text":"Auto-Jump = ON","color":"green"}]
