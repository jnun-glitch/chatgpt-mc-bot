# TheoBot Architecture

Minecraft tick
 -> theobot:tick
 -> bot initialization
 -> perception/target update
 -> memory update
 -> state decision
 -> state action
 -> HeroBot command
 -> fake player

## State machine

0 IDLE
1 SEARCH
2 FOLLOW
3 ACTIVE
4 RETREAT
5 WANDER

ACTIVE is kept as a generic active state in the framework and is not a weapon/combat implementation.

## Modes

0 AUTO
1 FOLLOW
2 ACTIVE
3 WANDER
4 STOP

AUTO chooses between IDLE, SEARCH, FOLLOW and ACTIVE based on target distance. ACTIVE is a neutral action state in this repository.

## Profiles

0 BALANCED
1 AGGRESSIVE
2 DEFENSIVE
3 MOBILE
4 PASSIVE

Profiles are used for movement/strafe personality and can be extended without changing the lifecycle.

## Memory

Each bot gets a unique tb.id. Last-seen target coordinates are stored under:

theobot:memory.bots.<id>.x
theobot:memory.bots.<id>.y
theobot:memory.bots.<id>.z

theobot:runtime is synchronous scratch storage for macro expansion.

## Navigation

Follow uses HeroBot path entity. Search uses HeroBot path pos toward the last remembered location. Requests are throttled with tb.repath.

## Stuck recovery

Every 20 ticks the bot position is sampled. Small horizontal displacement increments tb.stuck. When the threshold is reached the bot stops, jumps once and clears the path timer.

## Scoreboard design

Objective identifiers use the short tb.* prefix so every identifier remains within Minecraft's scoreboard-objective length restriction.
