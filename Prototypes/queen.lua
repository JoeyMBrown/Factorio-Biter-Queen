local queen = table.deepcopy(data.raw["unit"]["small-biter"]) -- copy the table (lua table) that defines the small-biter into the queen variable

queen.name = "biter-queen"

queen.max_health = 1000

data:extend({queen})