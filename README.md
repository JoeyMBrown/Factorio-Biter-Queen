# Factorio-Queen-Biter
A mod for factorio that aims to add a queen biter that spawns within the game and adds another interesting enemy into the mix.


### Helpful Tid-bits

When working with EnemySpawnerPrototypes, they have a result_units property that caused me some initial confusion.
The result_units is an array of UnitSpawnDefinitions: {unit, spawn_points[SpawnPoint]}.  The SpawnPoint array
takes in the following: evolution_factor and spawn_weight properties.
> evolution_factor: Evolution factor is a property that states at what pollution level the specificed unit will begin to spawn,
for example: {0.0, 1}, the following would start spawning the specified biter at 0 pollution, with 100% spawn chance meaning
we're talking about a hive that would always spawn one unit type.

> spawn_weight: In the above example {0.0, 1} 0.0 is the evolution_factor, and 1 is the spawn_weight.  This is the percentage chance
that the given unit will spawn from the hive when spawning units.  1 being 100% in this example.

    -- evolution factor explanation:

    -- from evolution_factor 0.3 the weight for medium-biter is linearly rising from 0 to 0.3
    -- this means for example that when the evolution_factor is 0.45 the probability of spawning
    -- a small biter is 66% while probability for medium biter is 33%.
    -- res[2] = {"tame-medium-biter", {{0.3, 0.0}, {0.6, 0.3}, {0.8, 0.1}}}
    -- for evolution factor of 1 the spawning probabilities are: small-biter 0%, medium-biter 1/7, big-biter 4/7, behemoth biter 3/7
    -- res[3] = {"tame-big-biter", {{0.6, 0.0}, {1.0, 0.4}}}
    -- res[4] = {"tame-behemoth-biter", {{0.99, 0.0}, {1.0, 0.3}}}