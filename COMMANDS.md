# TheoBot Commands

## Start

```mcfunction
/reload
/function theobot:ui/menu
/function theobot:debug/status
```

## Spawn

```mcfunction
/function theobot:bot/spawn
/function theobot:bot/spawn2
/function theobot:bot/spawn3
/function theobot:bot/spawn4
/function theobot:bot/spawn5
/function theobot:bot/spawn_all
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
