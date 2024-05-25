-- *****************************************************************
-- This, if you choose, is my attemot and optimizing the current config
-- by taking reoccuring data and storing it as a varable to be reused
-- instead of repeated
-- Reckless Gaming Network
-- *****************************************************************

print("^2Jim^7-^2JobGarage ^7v^41^7.^44^7.^43 ^7- ^2Job Garage Script by ^1Jimathy^7"),
print("Optimized by Howard, Contact if there are errors"),

Loc = {},

--[[	LIST OF POSSIBLE VEHICLE MODIFIERS   ]]--
-- Using these will change how each vehicle spawns
-- This can be used for making sure the vehicles comes out exactly how you want it to

-- CustomName = "Police Car", this will show a custom override name for your vehicles so you don't need to add them to your vehicles.lua
-- rank = { 2, 4 }, -- This specifes which grades can see it, and only these grades
-- grade = 4, -- This specifies the lowest grade and above that can see the vehicle
-- colors = { 136, 137 }, -- This is the colour index id of the vehicle, Primary and Secondary in that order
-- bulletproof = true, -- This determines if the tyres are bullet proof (don't ask me why, I was asked to add this)
-- livery = 1, -- This sets the livery id of the vehicle, (most mod menus would number them or have them in number order) 0 = stock
-- extras = { 1, 5 }, -- This enables the selected extras on the vehicle
-- performance = "max", this sets the stats to max if available
-- performance = { 2, 3, 3, 2, 4, true }, -- This allows more specific settings for each upgrade level, in order: engine, brakes, suspension, transmission, armour, turbo
-- trunkItems = { }, -- Use this to add items to the trunk of the vehicle when it is spawned

-- ANY VEHICLE, BOATS, POLICE CARS, EMS VEHICLES OR EVEN PLANES CAN BE ADDED.


-- --------------------------------------------------------
-- ********************************************************
-- ********************************************************
-- TEST CODE 
-- ********************************************************
-- ********************************************************
-- --------------------------------------------------------

Config = {
	Debug = false,  -- Enable to use debug features
	Lan = "en",

	Core = "qb-core",
	Menu = "qb",
	Notify = "qb",

	Fuel = "ps-fuel", -- Set this to your fuel script folder

	CarDespawn = false, -- Sends the vehicle to hell (removal animation)

	DistCheck = false, -- Require the vehicle to be near by to remove it

	local trunkItemsVare = {
		{ name = "water_bottle", label = "Bottle Water", weight = 1, amount = 10, info = {}, type = "item", slot = 1, image = "water.png", },
		{ name = "empty_evidence_bag",label = "Empty Evidence Bag", weight = 0, amount = 15, info = {}, type = "item", slot = 2, image = "empty_evidence_bag.png", },
		{ name = "police_stormram", label = "Police Storm Ram", weight = 0, amount = 1, info = {}, type = "item", slot = 3, image = "police_stormram.png", },
		{ name = "bandage",label = "Bandage", weight = 0, amount = 10, info = {}, type = "item", slot = 4,image = "bandage.png", },
		{ name = "fingerprintkit",label = "Finger Print Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 5,image = "fingerprintkit.png", },
		{ name = "breathalyzer",label = "Breathalyzer", weight = 0, amount = 5, info = {}, type = "item", slot = 6,image = "breathalyzer.png", },
		{ name = "fingerprintreader",label = "Finger Print Reader", weight = 0, amount = 1, info = {}, type = "item", slot = 7,image = "fingerprintreader.png", },
		{ name = "dnatestkit",label = "DNA Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 8,image = "dnatestkit.png", },
		{ name = "drugtestkit",label = "Drug Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 9,image = "drugtestkit.png", },
		{ name = "gsrtestkit",label = "GSR Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 10, image = "gsrtestkit.png", },
		{ name = "body_silhouete",label = "Body layout chalk", weight = 0, amount = 5, info = {}, type = "item", slot = 11, image = "body_silhouete.png", },
		{ name = "evidence_marker",label = "Evidence Markers", weight = 0, amount = 5, info = {}, type = "item", slot = 12, image = "evidence-marker.png", },
		{ name = "ptape_roll",label = "Police Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 13, image = "ptape_roll.png", },
		{ name = "ftape_roll",label = "EMS-Fire Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 14, image = "ftape_roll.png", },
		{ name = "barrier",label = "Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 15, image = "barrier.png", },
		{ name = "barrier_police",label = "Police Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 16, image = "barrier_police.png", },
		{ name = "roadcone",label = "Traffic Cone", weight = 0, amount = 5, info = {}, type = "item", slot = 17, image = "roadcone.png", },
		{ name = "work_light",label = "Work Light", weight = 0, amount = 5, info = {}, type = "item", slot = 18, image = "work_light.png", },
		{ name = "mechanic_toolkit",label = "Mechanic Toolkit", weight = 0, amount = 5, info = {}, type = "item", slot = 19, image = "mechanic_toolkit.png", },
		{ name = "barrier_police_small",label = "Small Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 20, image = "barrier_police_small.png", },
		{ name = "constartion_barrier",label = "Construction Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 21, image = "constartion_barrier.png", },
		{ name = "diving_gear",label = "Scuba Gear", weight = 0, amount = 2, info = {}, type = "item", slot = 22, image = "diving_gear.png", },
		{ name = "diving_fill",label = "Scuba Bottle Fill", weight = 0, amount = 2, info = {}, type = "item", slot = 23, image = "diving_tube.png", },
		{ name = "spikespack",label = "Spike Strip 5 Pack", weight = 0, amount = 5, info = {}, type = "item", slot = 24, image = "spikespack.png", },
	}
	
	-- local garageTemplate = {
		
	-- 	["tr_pddm"] = {
	-- 		CustomName = "Dodge Demon - Interceptor",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["tr_pdchar"] = {
	-- 		CustomName = "2018 Charger SRT - Interceptor",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hvmach1"] = {
	-- 		CustomName = "Mustang Mach1 - Interceptor",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hv20r35"] = {
	-- 		CustomName = "Nissan GTR R35 - Interceptor",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hv21camaro"] = {
	-- 		CustomName = "2020 Camaro - Interceptor",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hv22chsrt"] = {
	-- 		CustomName = "2022 Dodge Charger",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hvcrownvic"] = {
	-- 		CustomName = "Ford Crown Victoria",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hvcaprice"] = {
	-- 		CustomName = "Chevy Caprice",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hv18taur"] = {
	-- 		CustomName = "2018 Ford Taurus",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hv18char"] = {
	-- 		CustomName = "2018 Dodge Charger",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hv20exp"] = {
	-- 		CustomName = "2020 Ford Explorer",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hv21durango"] = {
	-- 		CustomName = "2021 Dodge Durango",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hv23tahoe"] = {
	-- 		CustomName = "2023 Chevy Tahoe",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["hv23ramtrx"] = {
	-- 		CustomName = "2023 Dodge Ram TRX",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["nm_3500hd"] = {
	-- 		CustomName = "2022 Chevy 3500HD",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["speedcamarobb"] = {
	-- 		CustomName = "2021 Chevy Camaro - HEAT",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["speedc8rb"] = {
	-- 		CustomName = "2022 Chevy C8 - HEAT",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	-- 	["speeddemonrb"] = {
	-- 		CustomName = "2019 Dodge Demon - HEAT",
	-- 		colors = { 2, 2 }, -- Color index numbers { primary, secondary },
	-- 		rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
	-- 		performance = "max",
	-- 		trunkItems = trunkItemsVare,
	-- 	},
	

	-- }

	Locations = {
		
		{	zoneEnable = true, -- MRPD Police
			job = "police", -- set this to required job grade 
			garage = {
				spawn = vector4(451.4804, -973.0558, 25.3171, 178.0),  -- MRPD PD
				out = vector4(457.03, -975.19, 25.71, 93.29),  -- MRPD PD
	
				ped = { -- Add a "ped" table to make a ped spawn instead of the parking meter
					model = `s_m_y_cop_01`, -- set ped model here
					scenario = "WORLD_HUMAN_CLIPBOARD" -- set scenario here
				},

				list = garageTemplate,
			},
		},

		-- New MRPD Zone
	}

}

-- --------------------------------------------------------
-- ********************************************************
-- ********************************************************
-- TEST CODE 
-- ********************************************************
-- ********************************************************
-- --------------------------------------------------------

Config = {
	Debug = false,  -- Enable to use debug features
	Lan = "en",

	Core = "qb-core",
	Menu = "qb",
	Notify = "qb",

	Fuel = "ps-fuel", -- Set this to your fuel script folder

	CarDespawn = false, -- Sends the vehicle to hell (removal animation)

	DistCheck = false, -- Require the vehicle to be near by to remove it

	-- local trunkItemsVare = {
	-- 	{ name = "water_bottle", label = "Bottle Water", weight = 1, amount = 10, info = {}, type = "item", slot = 1, image = "water.png", },
	-- 	{ name = "empty_evidence_bag",label = "Empty Evidence Bag", weight = 0, amount = 15, info = {}, type = "item", slot = 2, image = "empty_evidence_bag.png", },
	-- 	{ name = "police_stormram", label = "Police Storm Ram", weight = 0, amount = 1, info = {}, type = "item", slot = 3, image = "police_stormram.png", },
	-- 	{ name = "bandage",label = "Bandage", weight = 0, amount = 10, info = {}, type = "item", slot = 4,image = "bandage.png", },
	-- 	{ name = "fingerprintkit",label = "Finger Print Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 5,image = "fingerprintkit.png", },
	-- 	{ name = "breathalyzer",label = "Breathalyzer", weight = 0, amount = 5, info = {}, type = "item", slot = 6,image = "breathalyzer.png", },
	-- 	{ name = "fingerprintreader",label = "Finger Print Reader", weight = 0, amount = 1, info = {}, type = "item", slot = 7,image = "fingerprintreader.png", },
	-- 	{ name = "dnatestkit",label = "DNA Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 8,image = "dnatestkit.png", },
	-- 	{ name = "drugtestkit",label = "Drug Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 9,image = "drugtestkit.png", },
	-- 	{ name = "gsrtestkit",label = "GSR Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 10, image = "gsrtestkit.png", },
	-- 	{ name = "body_silhouete",label = "Body layout chalk", weight = 0, amount = 5, info = {}, type = "item", slot = 11, image = "body_silhouete.png", },
	-- 	{ name = "evidence_marker",label = "Evidence Markers", weight = 0, amount = 5, info = {}, type = "item", slot = 12, image = "evidence-marker.png", },
	-- 	{ name = "ptape_roll",label = "Police Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 13, image = "ptape_roll.png", },
	-- 	{ name = "ftape_roll",label = "EMS-Fire Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 14, image = "ftape_roll.png", },
	-- 	{ name = "barrier",label = "Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 15, image = "barrier.png", },
	-- 	{ name = "barrier_police",label = "Police Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 16, image = "barrier_police.png", },
	-- 	{ name = "roadcone",label = "Traffic Cone", weight = 0, amount = 5, info = {}, type = "item", slot = 17, image = "roadcone.png", },
	-- 	{ name = "work_light",label = "Work Light", weight = 0, amount = 5, info = {}, type = "item", slot = 18, image = "work_light.png", },
	-- 	{ name = "mechanic_toolkit",label = "Mechanic Toolkit", weight = 0, amount = 5, info = {}, type = "item", slot = 19, image = "mechanic_toolkit.png", },
	-- 	{ name = "barrier_police_small",label = "Small Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 20, image = "barrier_police_small.png", },
	-- 	{ name = "constartion_barrier",label = "Construction Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 21, image = "constartion_barrier.png", },
	-- 	{ name = "diving_gear",label = "Scuba Gear", weight = 0, amount = 2, info = {}, type = "item", slot = 22, image = "diving_gear.png", },
	-- 	{ name = "diving_fill",label = "Scuba Bottle Fill", weight = 0, amount = 2, info = {}, type = "item", slot = 23, image = "diving_tube.png", },
	-- 	{ name = "spikespack",label = "Spike Strip 5 Pack", weight = 0, amount = 5, info = {}, type = "item", slot = 24, image = "spikespack.png", },
	-- }
	
	local garageTemplate = {
		
		["tr_pddm"] = {
			CustomName = "Dodge Demon - Interceptor",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = {
				{ name = "water_bottle", label = "Bottle Water", weight = 1, amount = 10, info = {}, type = "item", slot = 1, image = "water.png", },
				{ name = "empty_evidence_bag",label = "Empty Evidence Bag", weight = 0, amount = 15, info = {}, type = "item", slot = 2, image = "empty_evidence_bag.png", },
				{ name = "police_stormram", label = "Police Storm Ram", weight = 0, amount = 1, info = {}, type = "item", slot = 3, image = "police_stormram.png", },
				{ name = "bandage",label = "Bandage", weight = 0, amount = 10, info = {}, type = "item", slot = 4,image = "bandage.png", },
				{ name = "fingerprintkit",label = "Finger Print Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 5,image = "fingerprintkit.png", },
				{ name = "breathalyzer",label = "Breathalyzer", weight = 0, amount = 5, info = {}, type = "item", slot = 6,image = "breathalyzer.png", },
				{ name = "fingerprintreader",label = "Finger Print Reader", weight = 0, amount = 1, info = {}, type = "item", slot = 7,image = "fingerprintreader.png", },
				{ name = "dnatestkit",label = "DNA Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 8,image = "dnatestkit.png", },
				{ name = "drugtestkit",label = "Drug Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 9,image = "drugtestkit.png", },
				{ name = "gsrtestkit",label = "GSR Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 10, image = "gsrtestkit.png", },
				{ name = "body_silhouete",label = "Body layout chalk", weight = 0, amount = 5, info = {}, type = "item", slot = 11, image = "body_silhouete.png", },
				{ name = "evidence_marker",label = "Evidence Markers", weight = 0, amount = 5, info = {}, type = "item", slot = 12, image = "evidence-marker.png", },
				{ name = "ptape_roll",label = "Police Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 13, image = "ptape_roll.png", },
				{ name = "ftape_roll",label = "EMS-Fire Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 14, image = "ftape_roll.png", },
				{ name = "barrier",label = "Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 15, image = "barrier.png", },
				{ name = "barrier_police",label = "Police Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 16, image = "barrier_police.png", },
				{ name = "roadcone",label = "Traffic Cone", weight = 0, amount = 5, info = {}, type = "item", slot = 17, image = "roadcone.png", },
				{ name = "work_light",label = "Work Light", weight = 0, amount = 5, info = {}, type = "item", slot = 18, image = "work_light.png", },
				{ name = "mechanic_toolkit",label = "Mechanic Toolkit", weight = 0, amount = 5, info = {}, type = "item", slot = 19, image = "mechanic_toolkit.png", },
				{ name = "barrier_police_small",label = "Small Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 20, image = "barrier_police_small.png", },
				{ name = "constartion_barrier",label = "Construction Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 21, image = "constartion_barrier.png", },
				{ name = "diving_gear",label = "Scuba Gear", weight = 0, amount = 2, info = {}, type = "item", slot = 22, image = "diving_gear.png", },
				{ name = "diving_fill",label = "Scuba Bottle Fill", weight = 0, amount = 2, info = {}, type = "item", slot = 23, image = "diving_tube.png", },
				{ name = "spikespack",label = "Spike Strip 5 Pack", weight = 0, amount = 5, info = {}, type = "item", slot = 24, image = "spikespack.png", },
			},
		},
		["tr_pdchar"] = {
			CustomName = "2018 Charger SRT - Interceptor",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = {
				{ name = "water_bottle", label = "Bottle Water", weight = 1, amount = 10, info = {}, type = "item", slot = 1, image = "water.png", },
				{ name = "empty_evidence_bag",label = "Empty Evidence Bag", weight = 0, amount = 15, info = {}, type = "item", slot = 2, image = "empty_evidence_bag.png", },
				{ name = "police_stormram", label = "Police Storm Ram", weight = 0, amount = 1, info = {}, type = "item", slot = 3, image = "police_stormram.png", },
				{ name = "bandage",label = "Bandage", weight = 0, amount = 10, info = {}, type = "item", slot = 4,image = "bandage.png", },
				{ name = "fingerprintkit",label = "Finger Print Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 5,image = "fingerprintkit.png", },
				{ name = "breathalyzer",label = "Breathalyzer", weight = 0, amount = 5, info = {}, type = "item", slot = 6,image = "breathalyzer.png", },
				{ name = "fingerprintreader",label = "Finger Print Reader", weight = 0, amount = 1, info = {}, type = "item", slot = 7,image = "fingerprintreader.png", },
				{ name = "dnatestkit",label = "DNA Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 8,image = "dnatestkit.png", },
				{ name = "drugtestkit",label = "Drug Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 9,image = "drugtestkit.png", },
				{ name = "gsrtestkit",label = "GSR Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 10, image = "gsrtestkit.png", },
				{ name = "body_silhouete",label = "Body layout chalk", weight = 0, amount = 5, info = {}, type = "item", slot = 11, image = "body_silhouete.png", },
				{ name = "evidence_marker",label = "Evidence Markers", weight = 0, amount = 5, info = {}, type = "item", slot = 12, image = "evidence-marker.png", },
				{ name = "ptape_roll",label = "Police Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 13, image = "ptape_roll.png", },
				{ name = "ftape_roll",label = "EMS-Fire Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 14, image = "ftape_roll.png", },
				{ name = "barrier",label = "Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 15, image = "barrier.png", },
				{ name = "barrier_police",label = "Police Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 16, image = "barrier_police.png", },
				{ name = "roadcone",label = "Traffic Cone", weight = 0, amount = 5, info = {}, type = "item", slot = 17, image = "roadcone.png", },
				{ name = "work_light",label = "Work Light", weight = 0, amount = 5, info = {}, type = "item", slot = 18, image = "work_light.png", },
				{ name = "mechanic_toolkit",label = "Mechanic Toolkit", weight = 0, amount = 5, info = {}, type = "item", slot = 19, image = "mechanic_toolkit.png", },
				{ name = "barrier_police_small",label = "Small Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 20, image = "barrier_police_small.png", },
				{ name = "constartion_barrier",label = "Construction Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 21, image = "constartion_barrier.png", },
				{ name = "diving_gear",label = "Scuba Gear", weight = 0, amount = 2, info = {}, type = "item", slot = 22, image = "diving_gear.png", },
				{ name = "diving_fill",label = "Scuba Bottle Fill", weight = 0, amount = 2, info = {}, type = "item", slot = 23, image = "diving_tube.png", },
				{ name = "spikespack",label = "Spike Strip 5 Pack", weight = 0, amount = 5, info = {}, type = "item", slot = 24, image = "spikespack.png", },
			},
		},
		["hvmach1"] = {
			CustomName = "Mustang Mach1 - Interceptor",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = {
				{ name = "water_bottle", label = "Bottle Water", weight = 1, amount = 10, info = {}, type = "item", slot = 1, image = "water.png", },
				{ name = "empty_evidence_bag",label = "Empty Evidence Bag", weight = 0, amount = 15, info = {}, type = "item", slot = 2, image = "empty_evidence_bag.png", },
				{ name = "police_stormram", label = "Police Storm Ram", weight = 0, amount = 1, info = {}, type = "item", slot = 3, image = "police_stormram.png", },
				{ name = "bandage",label = "Bandage", weight = 0, amount = 10, info = {}, type = "item", slot = 4,image = "bandage.png", },
				{ name = "fingerprintkit",label = "Finger Print Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 5,image = "fingerprintkit.png", },
				{ name = "breathalyzer",label = "Breathalyzer", weight = 0, amount = 5, info = {}, type = "item", slot = 6,image = "breathalyzer.png", },
				{ name = "fingerprintreader",label = "Finger Print Reader", weight = 0, amount = 1, info = {}, type = "item", slot = 7,image = "fingerprintreader.png", },
				{ name = "dnatestkit",label = "DNA Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 8,image = "dnatestkit.png", },
				{ name = "drugtestkit",label = "Drug Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 9,image = "drugtestkit.png", },
				{ name = "gsrtestkit",label = "GSR Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 10, image = "gsrtestkit.png", },
				{ name = "body_silhouete",label = "Body layout chalk", weight = 0, amount = 5, info = {}, type = "item", slot = 11, image = "body_silhouete.png", },
				{ name = "evidence_marker",label = "Evidence Markers", weight = 0, amount = 5, info = {}, type = "item", slot = 12, image = "evidence-marker.png", },
				{ name = "ptape_roll",label = "Police Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 13, image = "ptape_roll.png", },
				{ name = "ftape_roll",label = "EMS-Fire Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 14, image = "ftape_roll.png", },
				{ name = "barrier",label = "Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 15, image = "barrier.png", },
				{ name = "barrier_police",label = "Police Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 16, image = "barrier_police.png", },
				{ name = "roadcone",label = "Traffic Cone", weight = 0, amount = 5, info = {}, type = "item", slot = 17, image = "roadcone.png", },
				{ name = "work_light",label = "Work Light", weight = 0, amount = 5, info = {}, type = "item", slot = 18, image = "work_light.png", },
				{ name = "mechanic_toolkit",label = "Mechanic Toolkit", weight = 0, amount = 5, info = {}, type = "item", slot = 19, image = "mechanic_toolkit.png", },
				{ name = "barrier_police_small",label = "Small Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 20, image = "barrier_police_small.png", },
				{ name = "constartion_barrier",label = "Construction Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 21, image = "constartion_barrier.png", },
				{ name = "diving_gear",label = "Scuba Gear", weight = 0, amount = 2, info = {}, type = "item", slot = 22, image = "diving_gear.png", },
				{ name = "diving_fill",label = "Scuba Bottle Fill", weight = 0, amount = 2, info = {}, type = "item", slot = 23, image = "diving_tube.png", },
				{ name = "spikespack",label = "Spike Strip 5 Pack", weight = 0, amount = 5, info = {}, type = "item", slot = 24, image = "spikespack.png", },
			},		
		},
		["hv20r35"] = {
			CustomName = "Nissan GTR R35 - Interceptor",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = {
				{ name = "water_bottle", label = "Bottle Water", weight = 1, amount = 10, info = {}, type = "item", slot = 1, image = "water.png", },
				{ name = "empty_evidence_bag",label = "Empty Evidence Bag", weight = 0, amount = 15, info = {}, type = "item", slot = 2, image = "empty_evidence_bag.png", },
				{ name = "police_stormram", label = "Police Storm Ram", weight = 0, amount = 1, info = {}, type = "item", slot = 3, image = "police_stormram.png", },
				{ name = "bandage",label = "Bandage", weight = 0, amount = 10, info = {}, type = "item", slot = 4,image = "bandage.png", },
				{ name = "fingerprintkit",label = "Finger Print Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 5,image = "fingerprintkit.png", },
				{ name = "breathalyzer",label = "Breathalyzer", weight = 0, amount = 5, info = {}, type = "item", slot = 6,image = "breathalyzer.png", },
				{ name = "fingerprintreader",label = "Finger Print Reader", weight = 0, amount = 1, info = {}, type = "item", slot = 7,image = "fingerprintreader.png", },
				{ name = "dnatestkit",label = "DNA Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 8,image = "dnatestkit.png", },
				{ name = "drugtestkit",label = "Drug Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 9,image = "drugtestkit.png", },
				{ name = "gsrtestkit",label = "GSR Test Kit", weight = 0, amount = 5, info = {}, type = "item", slot = 10, image = "gsrtestkit.png", },
				{ name = "body_silhouete",label = "Body layout chalk", weight = 0, amount = 5, info = {}, type = "item", slot = 11, image = "body_silhouete.png", },
				{ name = "evidence_marker",label = "Evidence Markers", weight = 0, amount = 5, info = {}, type = "item", slot = 12, image = "evidence-marker.png", },
				{ name = "ptape_roll",label = "Police Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 13, image = "ptape_roll.png", },
				{ name = "ftape_roll",label = "EMS-Fire Tape", weight = 0, amount = 5, info = {}, type = "item", slot = 14, image = "ftape_roll.png", },
				{ name = "barrier",label = "Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 15, image = "barrier.png", },
				{ name = "barrier_police",label = "Police Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 16, image = "barrier_police.png", },
				{ name = "roadcone",label = "Traffic Cone", weight = 0, amount = 5, info = {}, type = "item", slot = 17, image = "roadcone.png", },
				{ name = "work_light",label = "Work Light", weight = 0, amount = 5, info = {}, type = "item", slot = 18, image = "work_light.png", },
				{ name = "mechanic_toolkit",label = "Mechanic Toolkit", weight = 0, amount = 5, info = {}, type = "item", slot = 19, image = "mechanic_toolkit.png", },
				{ name = "barrier_police_small",label = "Small Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 20, image = "barrier_police_small.png", },
				{ name = "constartion_barrier",label = "Construction Barrier", weight = 0, amount = 5, info = {}, type = "item", slot = 21, image = "constartion_barrier.png", },
				{ name = "diving_gear",label = "Scuba Gear", weight = 0, amount = 2, info = {}, type = "item", slot = 22, image = "diving_gear.png", },
				{ name = "diving_fill",label = "Scuba Bottle Fill", weight = 0, amount = 2, info = {}, type = "item", slot = 23, image = "diving_tube.png", },
				{ name = "spikespack",label = "Spike Strip 5 Pack", weight = 0, amount = 5, info = {}, type = "item", slot = 24, image = "spikespack.png", },
			},		
		},
		["hv21camaro"] = {
			CustomName = "2020 Camaro - Interceptor",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["hv22chsrt"] = {
			CustomName = "2022 Dodge Charger",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["hvcrownvic"] = {
			CustomName = "Ford Crown Victoria",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["hvcaprice"] = {
			CustomName = "Chevy Caprice",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["hv18taur"] = {
			CustomName = "2018 Ford Taurus",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["hv18char"] = {
			CustomName = "2018 Dodge Charger",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["hv20exp"] = {
			CustomName = "2020 Ford Explorer",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["hv21durango"] = {
			CustomName = "2021 Dodge Durango",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["hv23tahoe"] = {
			CustomName = "2023 Chevy Tahoe",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["hv23ramtrx"] = {
			CustomName = "2023 Dodge Ram TRX",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["nm_3500hd"] = {
			CustomName = "2022 Chevy 3500HD",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["speedcamarobb"] = {
			CustomName = "2021 Chevy Camaro - HEAT",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["speedc8rb"] = {
			CustomName = "2022 Chevy C8 - HEAT",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
		["speeddemonrb"] = {
			CustomName = "2019 Dodge Demon - HEAT",
			colors = { 2, 2 }, -- Color index numbers { primary, secondary },
			rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
			performance = "max",
			trunkItems = trunkItemsVare,
		},
	

	}

	Locations = {
		
		{	zoneEnable = true, -- MRPD Police
			job = "police", -- set this to required job grade 
			garage = {
				spawn = vector4(451.4804, -973.0558, 25.3171, 178.0),  -- MRPD PD
				out = vector4(457.03, -975.19, 25.71, 93.29),  -- MRPD PD
	
				ped = { -- Add a "ped" table to make a ped spawn instead of the parking meter
					model = `s_m_y_cop_01`, -- set ped model here
					scenario = "WORLD_HUMAN_CLIPBOARD" -- set scenario here
				},

				list = garageTemplate,
			},
		},

		-- New MRPD Zone
	}

}