# Verison: 0.2.0

## Date: 1/4/2024

### Additions:
+ Helpful tid-bits section with some brain puke added to Readme
+ Control.lua file containing several event listeners
+ When biter-queen is spawned, player will now chart a small square around the spawning hive
+ When player spawns in an attempt will now be made to spawn a queen-spawner
+ When we spawn queen-spawner, player will chart a small square around the spawning hive
+ After player has charted a small square an attempt will be made to place a chart_tag, permenantly marking the hives location
+ Added gps tagging of attempted spawn location for debugging

### Changes:
* Queen-spawner will no longer be placed on worldgen
* Queen-spawner will now spwan biter-queen 100% of the time at any pollution level
* Biter-queen health increased to 100,000
* Biter-queen now uses behemoth-biter Prototype instead of small-biter

### Removals:
- Code comments in queen-spawner.lua have been temporarily moved to Readme.md (still need formatted / work)

## Date: 1/4/2024

### Additions:
+ Add `queen-spawner.lua` prototype that deep copies `biter-spawner` and changes a few properties
+ Add `queen.lua` prototype that deep copies `small-biter` and changes a few properties
+ Add `data.lua` and require both `queen-spanwer` and `queen` prototypes
+ Add info.json that carries mod specific information
+ Add `locale/en.cfg` to specify names and definitions for the `queen` and `queen-spawner` prototypes

### Changes:
N/a.

### Removals:
N/a.