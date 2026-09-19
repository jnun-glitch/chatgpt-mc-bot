# TheoBot Commands

## Native Dialog UI

The TheoBot menu is a native Minecraft Dialog. No client-side UI mod is required.

Open it manually:

```mcfunction
/function theobot:ui/menu
```

Minecraft also exposes the main dialog through the native Quick Actions key and pause-screen additions.

## Start

```mcfunction
/reload
/function theobot:ui/menu
/function theobot:debug/status
```

## Dialog files

```text
datapack/data/theobot/dialog/main.json
datapack/data/theobot/dialog/bot_menu.json
datapack/data/theobot/dialog/mode_menu.json
datapack/data/theobot/dialog/difficulty_menu.json
datapack/data/theobot/dialog/profile_menu.json
datapack/data/theobot/dialog/diagnostics.json
datapack/data/theobot/dialog/help.json
datapack/data/theobot/dialog/confirm_reset.json
datapack/data/theobot/dialog/confirm_remove.json
```

## Spawn

```mcfunction
/function theobot:bot/spawn
/function theobot:bot/spawn2
/function theobot:bot/spawn3
/function theobot:bot/spawn4
/function theobot:bot/spawn5
/function theobot:bot/spawn_all
/function theobot:bot/spawn_training
/function theobot:bot/spawn_training_all
```

Custom:

```mcfunction
/data modify storage theobot:input.name set value "MyBot"
/function theobot:api/spawn
```

## Modes

```mcfunction
/function theobot:config/mode/auto
/function theobot:config/mode/follow
/function theobot:config/mode/training
/function theobot:config/mode/wander
/function theobot:config/mode/stop
```

## Difficulty

```mcfunction
/function theobot:config/difficulty/easy
/function theobot:config/difficulty/normal
/function theobot:config/difficulty/hard
/function theobot:config/difficulty/custom
```

Difficulty presets also change the HeroBot simulated ping used by the training behaviour:

- EASY = 100 ms
- NORMAL = 50 ms
- HARD = 25 ms
- CUSTOM = 0 ms

## Profiles

```mcfunction
/function theobot:config/profile/balanced
/function theobot:config/profile/aggressive
/function theobot:config/profile/defensive
/function theobot:config/profile/mobile
/function theobot:config/profile/passive
```

## Debug

```mcfunction
/function theobot:debug/status
/function theobot:debug/state
/function theobot:debug/target
/function theobot:debug/path
/function theobot:debug/clear
```

## Reset

```mcfunction
/function theobot:bot/reset
/function theobot:bot/remove_all
```
