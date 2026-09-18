# Testing

## Static validation

Run from repository root:

```text
python tools/validate_datapack.py
```

The validator checks:

- JSON syntax
- pack version
- required load/tick files
- all referenced datapack functions
- empty functions
- scoreboard objective identifier length
- HeroBot source-context anti-patterns

## Live smoke test

1. Install `datapack/` in a Minecraft 1.21.11 world with HeroBot.
2. `/reload`
3. `/function theobot:setup`
4. `/function theobot:bot/spawn`
5. `/function theobot:debug/status`
6. Test `/function theobot:config/mode/wander`.
7. Test `/function theobot:config/mode/follow`.
8. Walk behind an obstacle and verify SEARCH.
9. Test a simple obstacle for Auto-Jump.
10. Run `/function theobot:bot/spawn_all`.
11. Verify distinct `tb.id` values.
12. Test `/function theobot:bot/reset`.

## Expected

Spawn:
- fake player appears
- bot receives `theobot` and `theobot_ready`
- unique `tb.id`

Movement:
- wander changes direction and moves forward
- follow looks at the nearest eligible player
- path requests happen only when needed
- auto-jump is enabled

Memory:
- last-seen coordinates update while the target is present
- SEARCH heads toward the remembered coordinates
- memory expires after the configured window

Multi-bot:
- multiple bots retain independent score state
- each bot receives its own memory ID

## Test boundary

Live Minecraft server execution is not performed in this environment, so integration must be verified in-game.
