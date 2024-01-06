script.on_event(defines.events.on_entity_spawned,
    function(event)
        local entity = event.entity
        local spawner = event.spawner

        if entity.name == "biter-queen" then
           local playerForce = game.forces["player"]

           playerForce.chart("nauvis", {{spawner.position["x"] - 10, spawner.position["y"] - 10}, {spawner.position["x"] + 10, spawner.position["y"] + 10}})
        end
    end
)

-- On player created, spawn biter-queen-spawner 200-500 tiles away from 0,0
script.on_event(defines.events.on_player_created,
    function(event)
        local player = game.get_player(event.player_index)
        local surface = player.surface
        local spawnPosition = {math.random(player.position["x"] + 200, player.position["x"] + 500), math.random(player.position["y"] + 200, player.position["y"] + 500)}

        -- This line is for testing, will gps tag the location we attempted to spawn the queen at
        local gpsTag = "[gps=" .. spawnPosition[1] .. "," .. spawnPosition[2] .. "]"

        player.force.chart("nauvis", {{spawnPosition[1] - 10, spawnPosition[2] - 10}, {spawnPosition[1] + 10, spawnPosition[2] + 10}})

        -- May be refactor opportunity for math.random calls
        surface.create_entity({name = "biter-queen-spawner", position = spawnPosition})
        player.force.print(gpsTag)
    end
)

script.on_event(defines.events.on_entity_spawned,
    function(event)
        local spawner = event.spawner
        local spawnedEntity = event.entity
        local playerForce = game.forces["player"]

        -- Charting the location may not be necessary here.  Leaving as backup.
        if spawnedEntity.name == "biter-queen" then
            playerForce.chart("nauvis", {{spawner.position["x"] - 20, spawner.position["y"] - 20}, {spawner.position["x"] + 20, spawner.position["y"] + 20}})
            playerForce.add_chart_tag("nauvis", {position = spawner.position, icon = {type = "virtual", name = "signal-info"}, text = "Biter Queen Hive"})
        end
    end
)