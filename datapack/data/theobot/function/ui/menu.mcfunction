tellraw @s [
  {"text":"===== TheoBot =====","color":"gold","bold":true},
  {"text":"\n[Spawn 1]","color":"green","click_event":{"action":"run_command","command":"/function theobot:bot/spawn"}},
  {"text":" [Spawn 5]","color":"green","click_event":{"action":"run_command","command":"/function theobot:bot/spawn_all"}},
  {"text":"\n[Auto]","color":"green","click_event":{"action":"run_command","command":"/function theobot:config/mode/auto"}},
  {"text":" [Follow]","color":"aqua","click_event":{"action":"run_command","command":"/function theobot:config/mode/follow"}},
  {"text":" [Wander]","color":"yellow","click_event":{"action":"run_command","command":"/function theobot:config/mode/wander"}},
  {"text":" [Stop]","color":"red","click_event":{"action":"run_command","command":"/function theobot:config/mode/stop"}},
  {"text":"\n[Easy]","color":"green","click_event":{"action":"run_command","command":"/function theobot:config/difficulty/easy"}},
  {"text":" [Normal]","color":"yellow","click_event":{"action":"run_command","command":"/function theobot:config/difficulty/normal"}},
  {"text":" [Hard]","color":"red","click_event":{"action":"run_command","command":"/function theobot:config/difficulty/hard"}},
  {"text":"\n[Balanced]","color":"green","click_event":{"action":"run_command","command":"/function theobot:config/profile/balanced"}},
  {"text":" [Aggressive]","color":"red","click_event":{"action":"run_command","command":"/function theobot:config/profile/aggressive"}},
  {"text":" [Defensive]","color":"blue","click_event":{"action":"run_command","command":"/function theobot:config/profile/defensive"}},
  {"text":" [Mobile]","color":"aqua","click_event":{"action":"run_command","command":"/function theobot:config/profile/mobile"}},
  {"text":" [Passive]","color":"gray","click_event":{"action":"run_command","command":"/function theobot:config/profile/passive"}},
  {"text":"\n[Status]","color":"aqua","click_event":{"action":"run_command","command":"/function theobot:debug/status"}},
  {"text":" [Reset]","color":"yellow","click_event":{"action":"run_command","command":"/function theobot:bot/reset"}}
]
