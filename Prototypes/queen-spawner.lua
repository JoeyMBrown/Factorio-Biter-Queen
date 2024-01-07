-- copy the table that defines the biter-spawner into queenSpawner variable
local queenSpawner = table.deepcopy(data.raw["unit-spawner"]["biter-spawner"])

queenSpawner.name = "biter-queen-spawner"
queenSpawner.max_health = 10000
queenSpawner.max_count_of_owned_units = 1
queenSpawner.autoplace = nil

queenSpawner.result_units = {{ "biter-queen", {{0.0, 1}} }}

data:extend({queenSpawner})