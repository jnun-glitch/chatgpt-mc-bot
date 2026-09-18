# ChatGPT MC Bot — TheoBot

TheoBot is a modular Minecraft Java 1.21.11 bot framework built around HeroBot plus a datapack.

The datapack owns the bot brain: identity, lifecycle, targets, movement decisions, memory, navigation requests, behaviour states, profiles, configuration and diagnostics. HeroBot owns the server-side fake-player implementation and player controls.

## Implemented

- Minecraft Java 1.21.11 datapack structure
- bot identity and unique numeric ids
- custom-name spawn API
- multi-bot spawn helpers
- movement control
- look control
- jump/autojump
- nearest eligible player target detection
- follow mode
- wander mode
- HeroBot path navigation
- last-seen position memory
- search state after target loss
- stuck detection and recovery
- easy/normal/hard/custom difficulty
- balanced/aggressive/defensive/mobile/passive profiles
- runtime debug functions
- menu helpers
- CI static validation

The combat/weapon layer from the larger design is not included in this build. The rest of the bot framework is independent of that layer.

## Requirements

- Minecraft Java Edition 1.21.11
- Fabric server
- HeroBot compatible with 1.21.11

## Install

Copy datapack/ into the world's datapacks directory:

<world>/datapacks/theobot/

Then:

/reload
/function theobot:ui/menu
/function theobot:bot/spawn

## Custom bot name

/data modify storage theobot:input.name set value "MyBot"
/function theobot:api/spawn

The custom API uses the executing position.

## Main modes

/function theobot:config/mode/auto
/function theobot:config/mode/follow
/function theobot:config/mode/wander
/function theobot:config/mode/stop

## Diagnostics

/function theobot:debug/status
/function theobot:debug/state
/function theobot:debug/target
/function theobot:debug/path

See COMMANDS.md and TESTING.md for the full workflow.
