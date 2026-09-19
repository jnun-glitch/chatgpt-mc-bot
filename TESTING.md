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
8. Test `/function theobot:config/mode/training`.
9. Move around the bot and verify smooth LOOK/FOLLOW behaviour.
10. Walk behind an obstacle and verify SEARCH.
11. Test a simple obstacle for Auto-Jump.
12. Test EASY/NORMAL/HARD and verify the bot ping changes.
13. Run `/function theobot:bot/spawn_training`.
14. Run `/function theobot:bot/spawn_training_all` in a clean test area.
15. Verify distinct `tb.id` values.
16. Test `/function theobot:bot/reset`.

## Expected

Spawn:
- fake player appears
- bot receives `theobot` and `theobot_ready`
- unique `tb.id`

Training:
- nearby real player is detected
- 3D, horizontal and vertical distance values update
- bot smoothly looks at the target
- follow/pathing works
- Auto-Jump is enabled
- simulated ping matches the selected difficulty

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
