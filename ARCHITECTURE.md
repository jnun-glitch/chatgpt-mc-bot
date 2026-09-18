# TheoBot Architecture

## Tick pipeline

```text
minecraft:tick
    |
    +-- initialize unready bots
    |
    +-- target/update
    |      |
    |      +-- nearest real player
    |      +-- distance
    |      +-- last-seen memory
    |
    +-- memory/age
    |
    +-- behaviour/decide
    |      |
    |      +-- mode
    |      +-- target distance
    |      +-- last-seen timeout
    |      +-- difficulty cadence
    |
    +-- behaviour/act
           |
           +-- idle
           +-- search
           +-- follow
           +-- active
           +-- retreat
           +-- wander
                  |
                  v
             HeroBot /player
```

## State machine

- `0 IDLE`
- `1 SEARCH`
- `2 FOLLOW`
- `3 ACTIVE`
- `4 RETREAT`
- `5 WANDER`

## Modes

- `0 AUTO`
- `1 FOLLOW`
- `2 ACTIVE`
- `3 WANDER`
- `4 STOP`

AUTO uses target distance to switch between FOLLOW and ACTIVE. If the target disappears, the bot enters SEARCH until the last-seen timeout expires.

## Multi-bot model

The system does not hard-code a specific set of names for the main brain.

Each bot is tagged `theobot` and has:

- `tb.id`
- `tb.enabled`
- `tb.state`
- `tb.mode`
- `tb.profile`
- `tb.diff`
- `tb.timer`
- `tb.repath`
- `tb.lastseen`
- `tb.dist`
- `tb.stuck`

The current execution position identifies the bot for server-side HeroBot commands with a small `distance=..0.2` selector.

## Memory

The custom API assigns `tb.id` from the global `#next` counter.

Coordinates are stored in:

```text
theobot:memory.bots.<id>.x
theobot:memory.bots.<id>.y
theobot:memory.bots.<id>.z
```

Macro functions read/write those values synchronously.

## Navigation

Follow asks HeroBot to path to the nearest eligible real player. A `tb.repath` countdown prevents a new path request every tick.

Search asks HeroBot to path to the last remembered location.

## Stuck recovery

Every 20 ticks the current position is sampled. Horizontal movement below the threshold increases `tb.stuck`; once the threshold is reached HeroBot is told to stop and jump once.

## Permission boundary

HeroBot custom `/player` commands should stay server-side. The datapack therefore uses `execute at`, not `execute as`, for functions that eventually issue HeroBot commands.

## Extension points

New behaviours should follow:

```text
Perception
   ->
Decision
   ->
Action
   ->
HeroBot execution
```
