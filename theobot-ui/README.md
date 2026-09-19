# TheoBot UI

A real client-side Minecraft GUI for TheoBot.

## Open

Press **O** in a world.

There is also a client command:

```text
/theobotui
```

## Pages

- Overview
- Bot Management
- Behaviour Modes
- Difficulty
- Profiles
- Diagnostics

All action buttons call the existing TheoBot datapack functions on the connected server.

## Build

Use Java 21:

```text
gradle build
```

The jar is generated in `build/libs/`.

The GUI uses Minecraft's normal Screen/ButtonWidget APIs, so it is a client-side screen rather than a chat/tellraw menu.
