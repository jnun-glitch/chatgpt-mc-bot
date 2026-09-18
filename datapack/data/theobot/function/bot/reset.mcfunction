# Full reset. The command source stays server-side, so HeroBot permissions work.
player @a[tag=theobot] path stop
player @a[tag=theobot] stop
player @a[tag=theobot] autojump false
player @a[tag=theobot] disconnect
tellraw @s [{"text":"[TheoBot] ","color":"gold"},{"text":"All managed bots disconnected.","color":"green"}]