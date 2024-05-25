Cars = { 
    --Commented out the completed, list items for each garage copied down below
    -- tr_pdchar - 2018 Charger Widebody - Interceptor,
    -- tr_pddm - Demon - Interceptor,
    policebikerb - PD Sanchez - Motorcycle,
    -- hvmach1 - Mustang Mach1 - Interceptor,
    -- hvcrownvic - Crown Victoria - Patrol Car,
    hvcaprice - Caprice - Patrol Car,
    hvbmw - BMW Motorrad - Motorcycle,
    hv23tahoe - Tahoe - Offroad Patrol Car,
    hv23ramtrx - RAM TRX - Offroad Patrol Car,
    -- hv22chsrt - 2022 Charger - Patrol  Car,
    hv21durango - Durango - Offroad Patrol Car,
    -- hv20r35 - Nissan GTR R35 - Interceptor,
    hv20exp - Explorer - Offroad Patrol Car,
    hv18taur - Taurus - Patrol  Car,
    hv18char - 2018 Charger - Patrol  Car,
    as350 - AS350 - Helicopter/Air1,
    -- hv21camaro - Camero - Interceptor,
    nm_3500hd - DirtyMAX - Truck,
    
},

-- Stations Complete


-- Stations Working on
-- MRPD

carsKeeping = {
    ["nm_3500hd"] = {
        CustomName = "2022 Chevy 3500HD",
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
    ["speedcamarobb"] = {
        CustomName = "2020 Chevy Camaro - Heat",
        colors = { 2, 2}, -- Color index numbers { primary, secondary },
        rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
        performance = "max",
        trunkItems = {
            { name = "water_bottle", label = "Bottle Water", weight = 1, amount = 5, info = {}, type = "item", slot = 1, image = "water.png", },
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
    ["speedc8rb"] = {
        CustomName = "2018 Chevy C8 - Heat",
        colors = { 2, 2 }, -- Color index numbers { primary, secondary },
        rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
        performance = "max",
        trunkItems = {
            { name = "water_bottle", label = "Bottle Water", weight = 1, amount = 5, info = {}, type = "item", slot = 1, image = "water.png", },
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
    ["speeddemonrb"] = {
        CustomName = "2018 Dodge Demon - Heat",
        colors = { 2, 2 }, -- Color index numbers { primary, secondary },
        rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},-- Job Grade Required to access this vehicle
        performance = "max",
        trunkItems = {
            { name = "water_bottle", label = "Bottle Water", weight = 1, amount = 5, info = {}, type = "item", slot = 1, image = "water.png", },
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

}
