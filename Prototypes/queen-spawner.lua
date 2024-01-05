-- copy the table that defines the biter-spawner into queenSpawner variable
local queenSpawner = table.deepcopy(data.raw["unit-spawner"]["biter-spawner"])

queenSpawner.name = "biter-queen-spawner"
queenSpawner.max_health = 10000
queenSpawner.max_count_of_owned_units = 1

queenSpawner.result_units = {{ "biter-queen", {{0.0, 0.3}, {0.35, 0}} }}

data:extend({queenSpawner})

    -- evolution factor explanation:

    -- from evolution_factor 0.3 the weight for medium-biter is linearly rising from 0 to 0.3
    -- this means for example that when the evolution_factor is 0.45 the probability of spawning
    -- a small biter is 66% while probability for medium biter is 33%.
    -- res[2] = {"tame-medium-biter", {{0.3, 0.0}, {0.6, 0.3}, {0.8, 0.1}}}
    -- for evolution factor of 1 the spawning probabilities are: small-biter 0%, medium-biter 1/7, big-biter 4/7, behemoth biter 3/7
    -- res[3] = {"tame-big-biter", {{0.6, 0.0}, {1.0, 0.4}}}
    -- res[4] = {"tame-behemoth-biter", {{0.99, 0.0}, {1.0, 0.3}}}