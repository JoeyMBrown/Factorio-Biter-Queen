local queen = table.deepcopy(data.raw["unit"]["behemoth-biter"]) -- copy the table (lua table) that defines the behemoth-biter into the queen variable

queen.name = "biter-queen"

queen.max_health = 100000

data:extend({queen})