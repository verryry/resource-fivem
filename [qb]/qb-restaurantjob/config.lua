Config = {}

Config.Job = "restaurant"

Config.FolderName = "qb-restaurant"

Config.Locations = {
    [1] = {coords = vector3(-1198.92, -895.23, 14.0), text = "Drink Station", config = Drink},
    -- [2] = {coords = vector3(-1202.27, -897.0, 14.0), text = "Prep Station", config = Prep},
    -- [3] = {coords = vector3(-1201.11, -898.67, 14.0), text = "Dough Station", config = Dough},
    [2] = {coords = vector3(-1199.98, -900.32, 14.0), text = "Oven", config = Oven},
    -- [5] = {coords = vector3(-1198.73, -902.15, 14.0), text = "Cheese", config = Cheese},
}

Config.JobStash = {
    [1] =  {coords = vector3(-1196.94, -894.06, 14.0), name = 'Burgershot', size = 4000000, slots = 100},
}

Drink = {
    [1] = {
        label = "Water", 
        description = "Water Bottle", 
        item = "water_bottle", --item that will be given
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Water", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
}

-- Prep = {
--     [1] = {
--         label = "Make Pizza Sauce", 
--         description = "Mushrooms | Onion | Tomatoes", 
--         item = "sauce", --item that will be given
--         required = {
--             [1] = {itemName = "water_bottle", amount = 1},
--             -- [2] = {itemName = "onion", amount = 1},
--             -- [3] = {itemName = "tomatoes", amount = 4},
--         },
--         progressbar = "Making Pizza Sauce", -- text to display on progressbar
--         progresstime = 10000, -- in milliseconds
--         dictionary = "mini@repair", --dictionary name for animation
--         animname = "fixing_a_player", --animation name
--     },
-- }

Oven = {
    [1] = {
        label = "Make Cheese Pizza", 
        description = "Pizza Dough | Sauce | Cheese ", 
        item = "cheese-pizza", --item that will be given
        required = {
            [1] = {itemName = "water_bottle", amount = 1},
            -- [2] = {itemName = "sauce", amount = 3},
            -- [3] = {itemName = "cheese", amount = 4},
        }, -- required items to make
        progressbar = "Making Cheese Pizza", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
}

-- Dough = {
--     [1] = {
--         label = "Make Dough", 
--         description = "Yeast | Flour | Salt", 
--         item = "aluminum", --item that will be given
--         required = {
--             [1] = {itemName = "water_bottle", amount = 1},
--             -- [2] = {itemName = "salt", amount = 3},
--             -- [3] = {itemName = "flour", amount = 2},
--         }, -- required items to make
--         progressbar = "Making Pizza Dough", -- text to display on progressbar
--         progresstime = 10000, -- in milliseconds
--         dictionary = "mini@repair", --dictionary name for animation
--         animname = "fixing_a_player", --animation name
--     },
-- }

-- Cheese = {
--     [1] = {
--         label = "Cheese", 
--         description = "", 
--         item = "cheese", --item that will be given
--         required = {}, -- required items to make
--         progressbar = "Grabbing Cheese", -- text to display on progressbar
--         progresstime = 10000, -- in milliseconds
--         dictionary = "mini@repair", --dictionary name for animation
--         animname = "fixing_a_player", --animation name
--     }
-- }