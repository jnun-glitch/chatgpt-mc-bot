# TheoBot Commands

## Native Dialog UI

Open the full Control Center:

```mcfunction
/function theobot:ui/menu
```

The UI is entirely native Minecraft Dialog and requires no client-side TheoBot GUI mod.

## Bot lifecycle

```mcfunction
/function theobot:bot/spawn
/function theobot:bot/spawn_all
/function theobot:bot/spawn_training
/function theobot:bot/spawn_training_all
/function theobot:bot/reset
/function theobot:bot/remove_all
```

## Behaviour

```mcfunction
/function theobot:config/mode/auto
/function theobot:config/mode/follow
/function theobot:config/mode/training
/function theobot:config/mode/wander
/function theobot:config/mode/stop
```

## Difficulty

```mcfunction
/function theobot:config/difficulty/npc
/function theobot:config/difficulty/easy
/function theobot:config/difficulty/normal
/function theobot:config/difficulty/hard
/function theobot:config/difficulty/tier1
/function theobot:config/difficulty/expert
/function theobot:config/difficulty/custom
```

The six staged levels mirror the reference map's idea of progressively slower/faster reaction while keeping TheoBot's own state machine and navigation architecture.

## Movement

```mcfunction
/function theobot:config/movement/autojump_on
/function theobot:config/movement/autojump_off
/function theobot:config/movement/stop
/function theobot:config/movement/wander
```

## Profiles

```mcfunction
/function theobot:config/profile/balanced
/function theobot:config/profile/aggressive
/function theobot:config/profile/defensive
/function theobot:config/profile/mobile
/function theobot:config/profile/passive
```

## Diagnostics

```mcfunction
/function theobot:debug/status
/function theobot:debug/state
/function theobot:debug/target
/function theobot:debug/path
/function theobot:debug/clear
```

Status now also reports total managed bots and initialized/ready bots.
