tellraw @s {"text":"===== TheoBot =====","color":"gold","bold":true}
tellraw @s {"text":"[Spawn 1]","color":"green","click_event":{"action":"run_command","command":"/function theobot:bot/spawn"}}
tellraw @s {"text":"[Spawn 5]","color":"green","click_event":{"action":"run_command","command":"/function theobot:bot/spawn_all"}}
tellraw @s {"text":"[Training Bot]","color":"aqua","click_event":{"action":"run_command","command":"/function theobot:bot/spawn_training"}}
tellraw @s {"text":"Modes: Auto / Follow / Training / Wander / Stop","color":"yellow"}
tellraw @s {"text":"  Auto","color":"green","click_event":{"action":"run_command","command":"/function theobot:config/mode/auto"}}
tellraw @s {"text":"  Follow","color":"aqua","click_event":{"action":"run_command","command":"/function theobot:config/mode/follow"}}
tellraw @s {"text":"  Training","color":"aqua","click_event":{"action":"run_command","command":"/function theobot:config/mode/training"}}
tellraw @s {"text":"  Wander","color":"yellow","click_event":{"action":"run_command","command":"/function theobot:config/mode/wander"}}
tellraw @s {"text":"  Stop","color":"red","click_event":{"action":"run_command","command":"/function theobot:config/mode/stop"}}
tellraw @s {"text":"Difficulty: Easy / Normal / Hard / Custom","color":"gray"}
tellraw @s {"text":"  Easy","color":"green","click_event":{"action":"run_command","command":"/function theobot:config/difficulty/easy"}}
tellraw @s {"text":"  Normal","color":"yellow","click_event":{"action":"run_command","command":"/function theobot:config/difficulty/normal"}}
tellraw @s {"text":"  Hard","color":"red","click_event":{"action":"run_command","command":"/function theobot:config/difficulty/hard"}}
tellraw @s {"text":"  Custom","color":"light_purple","click_event":{"action":"run_command","command":"/function theobot:config/difficulty/custom"}}
tellraw @s {"text":"Profiles: Balanced / Aggressive / Defensive / Mobile / Passive","color":"gray"}
tellraw @s {"text":"  Balanced","color":"green","click_event":{"action":"run_command","command":"/function theobot:config/profile/balanced"}}
tellraw @s {"text":"  Aggressive","color":"red","click_event":{"action":"run_command","command":"/function theobot:config/profile/aggressive"}}
tellraw @s {"text":"  Defensive","color":"blue","click_event":{"action":"run_command","command":"/function theobot:config/profile/defensive"}}
tellraw @s {"text":"  Mobile","color":"aqua","click_event":{"action":"run_command","command":"/function theobot:config/profile/mobile"}}
tellraw @s {"text":"  Passive","color":"gray","click_event":{"action":"run_command","command":"/function theobot:config/profile/passive"}}
tellraw @s {"text":"[Status]","color":"aqua","click_event":{"action":"run_command","command":"/function theobot:debug/status"}}
tellraw @s {"text":"[Reset]","color":"yellow","click_event":{"action":"run_command","command":"/function theobot:bot/reset"}}
