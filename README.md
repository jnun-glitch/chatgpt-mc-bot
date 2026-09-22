# ChatGPT MC Bot — TheoBot

TheoBot is a modular Minecraft Java 1.21.11 bot framework built around HeroBot plus a datapack.

The datapack owns identity, perception, state, memory, navigation requests, behaviour, profiles, configuration and diagnostics. HeroBot owns the server-side fake-player implementation and player controls.

## Requirements

- Minecraft Java Edition 1.21.11
- Fabric server
- HeroBot compatible with 1.21.11
- operator/server permission for HeroBot control commands

Minecraft 1.21.11 uses Data-Pack version 94.1.

## Install

Copy the `datapack/` directory into your world as:

```text
<world>/datapacks/theobot/
```

Then run:

```mcfunction
/reload
/function theobot:ui/menu
```

The menu is a native Minecraft Dialog supplied by the datapack. No client-side TheoBot GUI mod is required.

## Native Dialog UI

The TheoBot UI lives in:

```text
datapack/data/theobot/dialog/
```

Main entry point:

```mcfunction
/function theobot:ui/menu
```

The same main dialog is also exposed through Minecraft's native Quick Actions key and the pause-screen additions tag.

The UI contains:

- Bot lifecycle and multi-bot controls
- Behaviour modes
- 7 difficulty presets (NPC, EASY, NORMAL, HARD, TIER 1, EXPERT, CUSTOM)
- Movement controls including Auto-Jump and immediate Stop
- Profiles
- Diagnostics with live bot/ready counters
- Help
- Confirmation dialogs for reset/removal

Buttons use Minecraft's native Dialog actions and call the existing TheoBot functions directly.

## Spawn

Single bot:

```mcfunction
/function theobot:bot/spawn
```

Five separated starter bots:

```mcfunction
/function theobot:bot/spawn_all
```

Single training bot:

```mcfunction
/function theobot:bot/spawn_training
```

Five starter bots directly in training mode:

```mcfunction
/function theobot:bot/spawn_training_all
```

Custom name:

```mcfunction
/data modify storage theobot:input.name set value "MyBot"
/function theobot:api/spawn
```

The custom API assigns a unique numeric `tb.id` and initializes the bot.

## Modes

```mcfunction
/function theobot:config/mode/auto
/function theobot:config/mode/follow
/function theobot:config/mode/training
/function theobot:config/mode/wander
/function theobot:config/mode/stop
```

AUTO selects between IDLE, SEARCH, FOLLOW and ACTIVE based on perception.

TRAINING is a dedicated non-combat practice mode. It follows a nearby real player when needed, smoothly looks at the target, uses HeroBot pathing and Auto-Jump, and switches to close-range observation without attack automation.

## Profiles

```mcfunction
/function theobot:config/profile/balanced
/function theobot:config/profile/aggressive
/function theobot:config/profile/defensive
/function theobot:config/profile/mobile
/function theobot:config/profile/passive
```

Profiles change preferred follow distance and sprint behaviour.

## Difficulty

```mcfunction
/function theobot:config/difficulty/easy
/function theobot:config/difficulty/normal
/function theobot:config/difficulty/hard
/function theobot:config/difficulty/custom
```

Difficulty changes decision cadence and HeroBot's simulated ping. The expanded preset ladder adds NPC, TIER 1 and EXPERT stages while keeping the original EASY/NORMAL/HARD/CUSTOM entry points.

## HeroBot mapping

The integration is documented in [`docs/HEROBOT_MAPPING.md`](docs/HEROBOT_MAPPING.md).

The implementation follows HeroBot's documented fake-player model: spawn a server-side player, target bots with selectors, then use HeroBot player controls for movement, look, Auto-Jump, path requests, stop/sprint and ping.

## Movement

```mcfunction
/function theobot:config/movement/autojump_on
/function theobot:config/movement/autojump_off
/function theobot:config/movement/stop
/function theobot:config/movement/wander
```

## Diagnostics

```mcfunction
/function theobot:debug/status
/function theobot:debug/state
/function theobot:debug/target
/function theobot:debug/path
/function theobot:debug/clear
```

## Architecture

```text
Minecraft tick
   |
   +-- perception / target
   |      +-- 3D distance
   |      +-- horizontal distance
   |      +-- vertical distance
   |      +-- last-seen memory
   |
   +-- decision
   +-- behaviour
   |
   +-- HeroBot control
          |
          +-- move
          +-- look
          +-- jump/autojump
          +-- pathfinding
          +-- sprint
          +-- simulated ping
          |
          v
      Fake ServerPlayer
          |
          v
    Minecraft physics
```

### Important permission boundary

Do not execute HeroBot `/player` commands with the bot as the command source. HeroBot checks operator permissions for player command sources.

TheoBot therefore runs decision logic at each bot position while keeping the command source server-side, then targets that bot with a selector.

This also avoids needing separate Java code for every bot name.

## State machine

- 0 IDLE
- 1 SEARCH
- 2 FOLLOW
- 3 ACTIVE
- 4 RETREAT
- 5 WANDER

## Memory

Each bot receives a unique numeric ID. Last-seen coordinates are stored in:

```text
theobot:memory.bots.<id>.x
theobot:memory.bots.<id>.y
theobot:memory.bots.<id>.z
```

Search uses HeroBot pathing toward the stored position.

## Testing

Static checks:

```text
python tools/validate_datapack.py
```

Live Minecraft integration is a separate final QA step and is not claimed as executed in this environment.

## Scope

This repository implements the movement/navigation/NPC framework from the staged plan plus a HeroBot-backed training mode. Attack/weapon automation is deliberately not included.
