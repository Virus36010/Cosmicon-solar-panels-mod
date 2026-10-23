
require ("util")
local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local item_sounds = require("__base__.prototypes.item_sounds")
local icon = "__Cosmicon-solar-panels__/graphics/icons"
local entity = "__Cosmicon-solar-panels__/graphics/entities"
local technology = "__Cosmicon-solar-panels__/graphics/technology"

data:extend({

    --- Solar-panel-2
    --- Fulgora-solar-panel ?
    {
        type = "item",
        name = "solar-panel-2",
        icon = icon .. "/solar-panel-2.png",
        subgroup = "energy",
        order = "d[solar-panel-2]-a[solar-panel-2]", -- ?
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        stack_size = 50,
        place_result = "solar-panel-2"
    },
    {
        type = "recipe",
        name = "solar-panel-2",
        energy_required = 20,
        enabled = false,
        ingredients = {    -- replace with fulgora items
            {type = 'item', name = "steel-plate", amount = 60},
            {type = 'item', name = "electric-engine-unit", amount = 10},
            {type = 'item', name = "processing-unit", amount = 15},
            {type = 'item', name = "solar-panel", amount = 3}
        },
        results = {{type = "item", name = "solar-panel-2", amount = 1}},
    },
    {
        type = "technology",
        name = "solar-energy-2",
        icon = technology .. "/solar-energy-2.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "solar-panel-2"
            },
        },
        prerequisites = {"processing-unit", "electric-engine", "utility-science-pack"},
        unit = {
            count = 250,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30
        }
    },
    { -- Entity
        type = "solar-panel",
        name = "solar-panel-2",
        production = "180kW",
        icon = icon .. "/solar-panel-2.png",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "solar-panel-2"},
        max_health = 200,
        fast_replaceable_group = "solar-panel",
        -- next_upgrade = "solar-panel-5",
        corpse = "solar-panel-remnants",
        dying_explosion = "solar-panel-explosion",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        energy_source = {
            type = "electric",
            usage_priority = "solar"
        },
        picture = {
            layers = {
                {
                    filename = entity .. "/solar-panel-2.png",
                    priority = "high",
                    width = 230,
                    height = 224,
                    shift = util.by_pixel(-3, 3.5),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
                    priority = "high",
                    width = 220,
                    height = 180,
                    shift = util.by_pixel(9.5, 6),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        },
        overlay = {
            layers = {
                {
                    filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
                    priority = "high",
                    width = 214,
                    height = 180,
                    shift = util.by_pixel(10.5, 6),
                    scale = 0.5
                }
            }
        }
    },

    --- Solar-panel-3
    --- Vulcanus-solar-panel ?
    {
        type = "item",
        name = "solar-panel-3",
        icon = icon .. "/solar-panel-3.png",
        subgroup = "energy",
        order = "d[solar-panel-3]-a[solar-panel-3]", -- ?
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        stack_size = 50,
        place_result = "solar-panel-3"
    },
    {
        type = "recipe",
        name = "solar-panel-3",
        energy_required = 20,
        enabled = false,
        ingredients = {    -- replace with fulgora items
            {type = 'item', name = "steel-plate", amount = 60},
            {type = 'item', name = "electric-engine-unit", amount = 10},
            {type = 'item', name = "processing-unit", amount = 15},
            {type = 'item', name = "solar-panel", amount = 3}
        },
        results = {{type = "item", name = "solar-panel-3", amount = 1}},
    },
    {
        type = "technology",
        name = "solar-energy-3",
        icon = technology .. "/solar-energy-3.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "solar-panel-3"
            },
        },
        prerequisites = {"processing-unit", "electric-engine", "utility-science-pack"},
        unit = {
            count = 250,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30
        }
    },
    { -- Entity
        type = "solar-panel",
        name = "solar-panel-3",
        production = "180kW",
        icon = icon .. "/solar-panel-3.png",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "solar-panel-3"},
        max_health = 200,
        fast_replaceable_group = "solar-panel",
        -- next_upgrade = "solar-panel-5",
        corpse = "solar-panel-remnants",
        dying_explosion = "solar-panel-explosion",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        energy_source = {
            type = "electric",
            usage_priority = "solar"
        },
        picture = {
            layers = {
                {
                    filename = entity .. "/solar-panel-3.png",
                    priority = "high",
                    width = 230,
                    height = 224,
                    shift = util.by_pixel(-3, 3.5),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
                    priority = "high",
                    width = 220,
                    height = 180,
                    shift = util.by_pixel(9.5, 6),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        },
        overlay = {
            layers = {
                {
                    filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
                    priority = "high",
                    width = 214,
                    height = 180,
                    shift = util.by_pixel(10.5, 6),
                    scale = 0.5
                }
            }
        }
    },

    --- Solar-panel-4
    --- Gleba-solar-panel ?
    {
        type = "item",
        name = "solar-panel-4",
        icon = icon .. "/solar-panel-4.png",
        subgroup = "energy",
        order = "d[solar-panel-4]-a[solar-panel-4]", -- ?
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        stack_size = 50,
        place_result = "solar-panel-4"
    },
    {
        type = "recipe",
        name = "solar-panel-4",
        energy_required = 20,
        enabled = false,
        ingredients = {    -- replace with fulgora items
            {type = 'item', name = "steel-plate", amount = 60},
            {type = 'item', name = "electric-engine-unit", amount = 10},
            {type = 'item', name = "processing-unit", amount = 15},
            {type = 'item', name = "solar-panel", amount = 3}
        },
        results = {{type = "item", name = "solar-panel-4", amount = 1}},
    },
    {
        type = "technology",
        name = "solar-energy-4",
        icon = technology .. "/solar-energy-4.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "solar-panel-4"
            },
        },
        prerequisites = {"processing-unit", "electric-engine", "utility-science-pack"},
        unit = {
            count = 250,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30
        }
    },
    { -- Entity
        type = "solar-panel",
        name = "solar-panel-4",
        production = "180kW",
        icon = icon .. "/solar-panel-4.png",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "solar-panel-4"},
        max_health = 200,
        fast_replaceable_group = "solar-panel",
        -- next_upgrade = "solar-panel-5",
        corpse = "solar-panel-remnants",
        dying_explosion = "solar-panel-explosion",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        energy_source = {
            type = "electric",
            usage_priority = "solar"
        },
        picture = {
            layers = {
                {
                    filename = entity .. "/solar-panel-4.png",
                    priority = "high",
                    width = 230,
                    height = 224,
                    shift = util.by_pixel(-3, 3.5),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
                    priority = "high",
                    width = 220,
                    height = 180,
                    shift = util.by_pixel(9.5, 6),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        },
        overlay = {
            layers = {
                {
                    filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
                    priority = "high",
                    width = 214,
                    height = 180,
                    shift = util.by_pixel(10.5, 6),
                    scale = 0.5
                }
            }
        }
    },

    --- Solar-panel-5
    --- Aquilo-solar-panel

    --- Solar-panel-6
    --- Space-solar-panel

})
