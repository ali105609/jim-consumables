Config = Config or {}

Config.Consumables = {
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Items that effect status changes, like bleeding can cause problems as they are all handled in their own scripts
    -- Testing these but they may be best left handled by default scripts
    --["ifaks"] = { 			emote = "oxy", 		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 6, widepupils = false, canOD = false } },
    --["bandage"] = { 		emote = "oxy", 		time = math.random(5000, 6000), stress = 0, heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 3, widepupils = false, canOD = false } }, },
    

    --Testing effects & armor with small functionality to drugs - This may be another one left to default scripts
    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --Testing effects & armor with small functionality to drugs - This may be another one left to default scripts
    --[[
    joint = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },

    cokebaggy = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { screen = "focus", effect = "stamina", widepupils = false, canOD = true } },
    crackbaggy = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = true } },
    xtcbaggy = { 		emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "strength", widepupils = true, canOD = true } },
    oxy = { 			emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = false } },
    meth = { 			emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "stamina", widepupils = false, canOD = true } },
    ]]
    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    --[[
    --Example item
    testburgerjim = {
        emote = "burger", 							-- Select an emote from below, it has to be in here
        time = math.random(8000, 10000),			-- Amount of time it takes to consume the item
        stress = math.random(1,2),					-- Amount of stress relief, can be 0
        heal = 0, 									-- Set amount to heal by after consuming
        armor = 5,									-- Amount of armor to add
        type = "food",								-- Type: "alcohol" / "drink" / "food"
        canRun = true,                              -- If true player can run while using the item, if not it will cancel the event

        stats = {
            screen = "thermal",						-- The screen effect to be played when after consuming the item "rampage" "turbo" "focus" "weed" "trevor" "nightvision" "thermal"
            effect = "heal", 						-- The status effect given by the item, "heal" / "stamina"
            -- This supports ps-buffs effects "armor" "stress" "swimming" "hacking" "intelligence" "luck" "strength"
            time = 10000,							-- How long the effect should last (if not added it will default to 10000)
            amount = 6,								-- How much the value is changed by per second
            hunger = math.random(10, 20),			-- The hunger/thirst stats of the item, if not found in the items.lua
            thirst = math.random(10, 20),			-- The hunger/thirst stats of the item, if not found in the items.lua
            canOD = true,                           -- This creates an OD Effect, killing the user if they have too much
        },
        --Reward Items Variables
        -- These can be the only thing in a consumable table and the item will still work
        amounttogive = 3,							-- Used for "RewardItems", tells the script how many to give
        rewards = {
            [1] = {
                item = "plastic", 					-- prize item name
                max = 10,							    -- max amount to give (this is put into math.random(1, max) )
                rarity = 1,							-- the rarity system, 1 being rarest, 4 being most common
            },
        },
    },
    ]]

    -- Box Items
    redwoodpack = {                                     -- Name of the box item in the shared
        emote = "uncuff",                               -- The emote than should run when "unboxing"
        canRun = true,                                  -- If true player can run while using the item, if not it will cancel the event
        time = 5000,                                    -- How long it takes to use the item
        type = "pack",                                  -- Designate it as a "pack" to the script knows what to do
        pack = {
            item = "cigs",                              -- The item to give from the box when complete
            amount = 20                                 -- How many of the item to give
        },
    },

    ammobox_9 = {
        emote = "uncuff",
        canRun = true,
        time = 5000,
        type = "pack",
        pack = {
            item = "ammo-9",
            amount = 50
        },
    },

    -- Required Items
    cigs = {                                            -- Name of the item in your shared items
        emote = "smokecigar",                           -- The emote than should run when "smoking"
        canRun = true,                                  -- If true player can run while using the item, if not it will cancel the event
        time = math.random(6000, 8000),                -- How long it takes to use the item
        type = "smoke",                                 -- Designate it as a "smoke" to the script knows what to do
        requiredItem = "lighter",                       -- Set a required item making it unsable if they don't have it
        stats = {
            effect = "stress",
            time = 5000,
            amount = math.random(10, 15),
            canOD = false
        }
    },

    joint = { 			
        emote = "smoke3",
        canRun = true,
        time = math.random(6000, 8000), 
        stress = math.random(12, 24), 
        heal = 0, 
        armor = 10, 
        type = "drug",
        requiredItem = "lighter",
        stats = { 
            screen = "weed", 
            effect = "armor", 
            widepupils = false, 
            canOD = false 
        } 
    },

    -- Consumables

    ------------
    -- Drinks --
    ------------

    water = {            
        emote = "drink", 		
        canRun = true, 	
        time = math.random(5000, 6000), 
        stress = 0, 
        heal = 0, 
        armor = 0, 
        type = "drink", 
        stats = { 
            thirst = 20, 
        }
    },

    coffee = {                  
        emote = "coffee", 		
        canRun = true, 	
        time = math.random(5000, 6000), 
        stress = 0, 
        heal = 0, 
        armor = 0, 
        type = "drink", 
        stats = {
            thirst = math.random(10,15), 
        }
    },

    ecola = { 		        
        emote = "ecola", 		
        canRun = true, 	
        time = math.random(5000, 6000),  
        stress = math.random(2, 4), 
        heal = 0, 
        armor = 0, 
        type = "drink", 
        stats = { 
            thirst = math.random(10,20), 
        }
    },

    sprunk = { 		        
        emote = "sprunk", 		
        canRun = true, 	
        time = math.random(5000, 6000),   
        stress = math.random(2, 4), 
        heal = 0, 
        armor = 0, 
        type = "drink", 
        stats = { 
            thirst = math.random(10,20), 
        }
    },

    -------------
    -- Alcohol --
    -------------

    vodka = { 			           
        emote = "vodkab", 		
        canRun = true, 	
        time = math.random(5000, 6000), 
        stress = math.random(2, 4), 
        heal = 0, 
        armor = 0, 
        type = "alcohol", 
        stats = { 
            effect = "stress", 
            time = 5000, 
            amount = 2, 
            thirst = math.random(10,20), 
            canOD = true 
        }
    },
    beer = { 			        
        emote = "beer", 		
        canRun = true, 	
        time = math.random(5000, 6000), 
        stress = math.random(2, 4), 
        heal = 0, 
        armor = 0, 
        type = "alcohol", 
        stats = { 
            thirst = math.random(10,20), 
            canOD = true 
        }
    },
    whiskey = { 		        
        emote = "whiskey",  	
        canRun = true, 	
        time = math.random(5000, 6000), 
        stress = math.random(2, 4), 
        heal = 0, 
        armor = 0, 
        type = "alcohol", 
        stats = { 
            thirst = math.random(10,20), 
            canOD = true 
        }
    },

    ----------
    -- Food --
    ----------

    twerks_candy = {            
        emote = "egobar", 		
        canRun = true, 		
        time = math.random(5000, 6000), 
        stress = 0, 
        heal = 0, 
        armor = 0, 
        type = "food", 
        stats = { 
            hunger = math.random(10,15), 
        }
    },

    snikkel_candy = {           
        emote = "egobar", 		
        canRun = true, 		
        time = math.random(5000, 6000), 
        stress = 0, 
        heal = 0, 
        armor = 0, 
        type = "food", 
        stats = { 
            hunger = math.random(10,15), 
        }
    },

    tosti = {                   
        emote = "sandwich", 	
        canRun = true, 	
        time = math.random(5000, 6000), 
        stress = math.random(2, 4), 
        heal = 0, 
        armor = 0, 
        type = "food", 
        stats = { 
            hunger = math.random(10,15), 
        }
    },

    donut = {                   
        emote = "sandwich", 	
        canRun = true, 	
        time = math.random(5000, 6000), 
        stress = math.random(2, 4), 
        heal = 0, 
        armor = 0, 
        type = "food", 
        stats = { 
            hunger = math.random(10,15), 
        }
    },




}