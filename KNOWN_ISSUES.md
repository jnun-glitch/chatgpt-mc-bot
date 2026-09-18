# Known Issues

- Live Minecraft execution has not been performed in this environment.
- Target selection currently uses the nearest eligible non-bot player within 32 blocks.
- Pure-datapack server-side bot targeting uses a small local selector around the current bot position; overlapping bots at the same coordinates can be ambiguous.
- The menu is a command-helper UI, not an inventory/container GUI.
- HeroBot is a runtime dependency.
- The combat/weapon layer from the larger staged design is not part of this build.
