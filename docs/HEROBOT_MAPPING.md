# HeroBot Integration Map

This project follows the public HeroBot README and keeps the integration in a datapack-friendly layer.

## Spawn

HeroBot provides fake server-side players through `/playerspawn`.

TheoBot wraps that in:

```
function theobot:api/spawn
```

The API stores a requested name, allocates a numeric `tb.id`, spawns the fake player, adds the `theobot` tag, and initializes its state.

## Player control

HeroBot's `/player <targets> ...` command is selector-based. TheoBot therefore identifies a bot with:

```
@a[tag=theobot,distance=..0.2,limit=1]
```

Functions execute at the bot position while keeping the command source server-side. This matches the permission boundary required by HeroBot.

## Movement

HeroBot capabilities used by TheoBot:

```
player <bot-selector> autojump true
player <bot-selector> move forward
player <bot-selector> stop
player <bot-selector> sprint
player <bot-selector> unsprint
player <bot-selector> path entity <target>
player <bot-selector> path stop
```

The main movement decisions live under `movement/` and `behaviour/`.

## Looking

Target tracking uses HeroBot's smooth look command:

```
player <bot-selector> look upon <target> eyes delta 3
```

Wander can use HeroBot's random-look action.

## Distance perception

The HeroBot README documents scoreboard-friendly distance queries. TheoBot records:

- `tb.dist`: 3D distance ×100
- `tb.hdist`: horizontal XZ distance ×100
- `tb.vdist`: vertical Y distance ×100

These values are available to the datapack decision layer.

## Simulated latency

HeroBot exposes a per-bot ping value. TheoBot uses this as a safe responsiveness/latency setting:

- EASY: 100 ms
- NORMAL: 50 ms
- HARD: 25 ms
- CUSTOM: 0 ms

This does not add attack logic; it only changes the fake player's simulated response latency.

## Scope

The project uses HeroBot for fake-player mechanics, movement, looking, navigation, and diagnostics. Attack/weapon automation is intentionally outside this datapack's scope.
