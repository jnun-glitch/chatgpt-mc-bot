function theobot:herobot/control with {selector:"@a[tag=theobot]",action:"path stop"}
function theobot:herobot/control with {selector:"@a[tag=theobot]",action:"stop"}
function theobot:herobot/control with {selector:"@a[tag=theobot]",action:"autojump false"}
function theobot:herobot/control with {selector:"@a[tag=theobot]",action:"disconnect"}
tellraw @s [{"text":"[TheoBot] ","color":"gold"},{"text":"All managed bots disconnected.","color":"green"}]
