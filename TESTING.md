# Testing

## Static

CI validates:
- all JSON parses
- load and tick tags exist
- tagged functions exist
- required files exist
- scoreboard objective identifiers are at most 16 characters
- function files are not empty

## Live order

1. Install datapack.
2. Run /reload.
3. Run /function theobot:debug/status.
4. Spawn a bot.
5. Verify the theobot tag and tb.id.
6. Test wander.
7. Test follow.
8. Test path navigation around a simple obstacle.
9. Test last-seen memory and SEARCH.
10. Spawn two bots and verify separate ids and independent scores.
11. Test stuck recovery.
12. Run bot/reset.

## Expected

Spawn:
- fake player appears
- correct identity is initialized
- no existing human player is tagged

Movement:
- wander moves forward
- random look changes are visible
- autojump is active

Follow:
- nearest non-bot player inside 32 blocks is selected
- bot looks at the target
- path entity is requested outside the preferred distance

Memory:
- last-seen position is stored per bot id
- SEARCH tries the remembered location
- state returns to IDLE after memory expiry

Robustness:
- /reload keeps existing bot runtime state
- reset disconnects managed bots
- multiple bots do not share scoreboard state

## Boundary

The exact Minecraft server/mod stack cannot be booted from this environment, so live QA remains an explicit final step.
