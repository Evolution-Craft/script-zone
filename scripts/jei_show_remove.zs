/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First remove jei ingradient.
 * v0.2 : Rework the code, Add priority and log sequence.
 * v0.3 : Alphabet correct sequence.
 * v0.4 : Code rework.
 * v0.5 : Rework remove Spawn Eggs.
 * v0.6 : Coin Removed.
 * v0.7 : Hide Creative Item.
 * v0.8 : Remove Duplicate Item.
 */

#priority 999

println("Start script jei_show_remove.");
println("Script Priority 999.");

import mods.jei.JEI;

var removeJeiIngradient = [
	// Alex's Mobs
	"alexsmobs:vine_lasso",
	// Apotheosis
	"apotheosis:ender_lead",
	// Botania
	"botania:creative_pool",
	"botania:corporea_spark_creative",
	"botania:infrangible_platform",
	// Building Gadgets
	"buildinggadgets:construction_paste_container_creative",
	// Create
	"create:creative_blaze_cake",
	"create:creative_crate",
	"create:creative_fluid_tank",
	"create:honeyed_apple",
	// Comforts
	"comforts:hammock_black",
	"comforts:hammock_blue",
	"comforts:hammock_brown",
	"comforts:hammock_cyan",
	"comforts:hammock_gray",
	"comforts:hammock_green",
	"comforts:hammock_light_blue",
	"comforts:hammock_light_gray",
	"comforts:hammock_lime",
	"comforts:hammock_magenta",
	"comforts:hammock_orange",
	"comforts:hammock_pink",
	"comforts:hammock_purple",
	"comforts:hammock_red",
	"comforts:hammock_yellow",
	"comforts:hammock_white",
	"comforts:rope_and_nail",
	// Cyclic
	"cyclic:apple_ender",
	"cyclic:apple_lofty_stature",
	"cyclic:battery_infinite",
	"cyclic:boomerang_carry",
	"cyclic:boomerang_damage",
	"cyclic:boomerang_stun",
	"cyclic:carrot_ender",
	"cyclic:conveyor",
	"cyclic:crafting_bag",
	"cyclic:crafting_stick",
	"cyclic:diamond_carrot_health",
	"cyclic:emerald_carrot_jump",
	"cyclic:ender_fishing",
	"cyclic:ender_torch",
	"cyclic:experience_pylon",
	"cyclic:fan",
	"cyclic:fan_slab",
	"cyclic:fire_killer",
	"cyclic:flute_summoning",
	"cyclic:heart",
	"cyclic:heart_empty",
	"cyclic:hopper",
	"cyclic:hopper_gold",
	"cyclic:item_infinite",
	"cyclic:laser_cannon",
	"cyclic:magic_net",
	"cyclic:redstone_carrot_speed",
	"cyclic:shears_obsidian",
	"cyclic:sleeping_mat",
	"cyclic:sprinkler",
	"cyclic:wand_hypno",
	"cyclic:wand_missile",
	"cyclic:workbench",
	"cyclic:uncrafter",
	// Croptopia
	"croptopia:salt",
	"croptopia:salt_ore",
	"croptopia:tea",
	// Easy Villagers
	"easy_villagers:iron_farm",
	// Electrodynamics
	"electrodynamics:creativepowersource",
	"electrodynamics:creativefluidsource",
	"electrodynamics:dustsalt",
	// Elemental Craft
	"elementalcraft:creative_container",
	// Exchanger
	"exchangers:creative_exchanger",
	// Extended Crafting
	"extendedcrafting:handheld_table",
	// Extreme Reactors
	"bigreactors:basic_turbinecreativesteamgenerator",
	"bigreactors:reinforced_turbinecreativesteamgenerator",
	"bigreactors:reinforced_reactorcreativewatergenerator",
	// Immersive Engineering
	"immersiveengineering:armor_piercing",
	"immersiveengineering:buckshot",
	"immersiveengineering:buzzsaw",
	"immersiveengineering:casull",
	"immersiveengineering:capacitor_creative",
	"immersiveengineering:chemthrower",
	"immersiveengineering:dragons_breath",
	"immersiveengineering:drill",
	"immersiveengineering:drillhead_iron",
	"immersiveengineering:drillhead_steel",
	"immersiveengineering:empty_casing",
	"immersiveengineering:empty_shell",
	"immersiveengineering:firework",
	"immersiveengineering:flare",
	"immersiveengineering:gunpart_barrel",
	"immersiveengineering:gunpart_drum",
	"immersiveengineering:gunpart_hammer",
	"immersiveengineering:he",
	"immersiveengineering:homing",
	"immersiveengineering:mold_bullet_casing",
	"immersiveengineering:potion",
	"immersiveengineering:powerpack",
	"immersiveengineering:railgun",
	"immersiveengineering:revolver",
	"immersiveengineering:speedloader",
	"immersiveengineering:shield",
	"immersiveengineering:silver",
	"immersiveengineering:skyhook",
	"immersiveengineering:wooden_grip",
	"immersiveengineering:toolupgrade_buzzsaw_spareblades",
	"immersiveengineering:toolupgrade_chemthrower_focus",
	"immersiveengineering:toolupgrade_chemthrower_multitank",
	"immersiveengineering:toolupgrade_drill_capacity",
	"immersiveengineering:toolupgrade_drill_damage",
	"immersiveengineering:toolupgrade_drill_fortune",
	"immersiveengineering:toolupgrade_drill_lube",
	"immersiveengineering:toolupgrade_drill_waterproof",
	"immersiveengineering:toolupgrade_powerpack_antenna",
	"immersiveengineering:toolupgrade_powerpack_induction",
	"immersiveengineering:toolupgrade_powerpack_tesla",
	"immersiveengineering:toolupgrade_railgun_capacitors",
	"immersiveengineering:toolupgrade_railgun_scope",
	"immersiveengineering:toolupgrade_revolver_bayonet",
	"immersiveengineering:toolupgrade_revolver_electro",
	"immersiveengineering:toolupgrade_revolver_magazine",
	"immersiveengineering:toolupgrade_shield_flash",
	"immersiveengineering:toolupgrade_shield_magnet",
	"immersiveengineering:toolupgrade_shield_shock",
	"immersiveengineering:turret_chem",
	"immersiveengineering:turret_gun",
	"immersiveengineering:wolfpack",
	// Immersive Petroleum
	"immersivepetroleum:molotov",
	"immersivepetroleum:speedboat",
	"immersivepetroleum:upgrade_icebreaker",
	"immersivepetroleum:upgrade_paddles",
	"immersivepetroleum:upgrade_reinforced_hull",
	"immersivepetroleum:upgrade_rudders",
	"immersivepetroleum:upgrade_tank",
	// Industrial Foregoing
	"industrialforegoing:infinity_backpack",
	"industrialforegoing:infinity_drill",
	"industrialforegoing:infinity_hammer",
	"industrialforegoing:infinity_launcher",
	"industrialforegoing:infinity_nuke",
	"industrialforegoing:infinity_saw",
	"industrialforegoing:infinity_trident",
	"industrialforegoing:material_stonework_factory",
	// Infernal Expansion
	"infernalexp:ascus_bomb",
	// Integrated Dynamics
	"integrateddynamics:energy_battery_creative",
	// Mekanism
	"mekanism:block_salt",
	"mekanism:creative_bin",
	"mekanism:creative_chemical_tank",
	"mekanism:creative_energy_cube",
	"mekanism:creative_fluid_tank",
	"mekanism:salt",
	// Mekanism Tools
	"mekanismtools:wood_paxel",
	// Mini Utilities
	"miniutilities:iron_drum",
	"miniutilities:netherite_reinforced_drum",
	"miniutilities:reinforced_large_drum",
	"miniutilities:stone_drum",
	"miniutilities:unstable_drum",
	"miniutilities:wooden_spikes",
	// Pneumatic Craft
	"pneumaticcraft:creative_compressor",
	"pneumaticcraft:creative_compressed_iron_block",
	"pneumaticcraft:creative_upgrade",
	// Powah
	"powah:energy_cell_creative",
	"quark:obsidian_pressure_plate",
	// Quark
	"quark:bamboo_block",
	"quark:iron_ladder",
	// Refined Storage
	"refinedstorage:black_creative_controller",
	"refinedstorage:blue_creative_controller",
	"refinedstorage:brown_creative_controller",
	"refinedstorage:cyan_creative_controller",
	"refinedstorage:green_creative_controller",
	"refinedstorage:gray_creative_controller",
	"refinedstorage:light_gray_creative_controller",
	"refinedstorage:lime_creative_controller",
	"refinedstorage:magenta_creative_controller",
	"refinedstorage:orange_creative_controller",
	"refinedstorage:pink_creative_controller",
	"refinedstorage:purple_creative_controller",
	"refinedstorage:red_creative_controller",
	"refinedstorage:creative_controller",
	"refinedstorage:creative_fluid_storage_block",
	"refinedstorage:creative_fluid_storage_disk",
	"refinedstorage:creative_portable_grid",
	"refinedstorage:creative_storage_block",
	"refinedstorage:creative_storage_disk",
	"refinedstorage:creative_wireless_crafting_monitor",
	"refinedstorage:creative_wireless_fluid_grid",
	"refinedstorage:creative_wireless_grid",
	"refinedstorage:yellow_creative_controller",
	"refinedstorage:white_creative_controller",
	// Refined Storage Addons
	"refinedstorageaddons:creative_wireless_crafting_grid",
	// Thermal Series
	"thermal:bamboo_block",
	"thermal:detonator",
	"thermal:drill_head",
	"thermal:dynamo_numismatic",
	"thermal:fluid_tank_creative_augment",
	"thermal:flux_drill",
	"thermal:flux_saw",
	"thermal:machine_catalyst_creative_augment",
	"thermal:machine_efficiency_creative_augment",
	"thermal:press_coin_die",
	"thermal:rf_coil_creative_augment",
	// Thermal Series - COIN
	"thermal:bronze_coin",
	"thermal:constantan_coin",
	"thermal:copper_coin",
	"thermal:electrum_coin",
	"thermal:enderium_coin",
	"thermal:gold_coin",
	"thermal:invar_coin",
	"thermal:iron_coin",
	"thermal:lead_coin",
	"thermal:lumium_coin",
	"thermal:netherite_coin",
	"thermal:nickel_coin",
	"thermal:rose_gold_coin",
	"thermal:signalum_coin",
	"thermal:silver_coin",
	"thermal:steel_coin",
	"thermal:tin_coin",
	// Thermal Series - GRENADE
	"thermal:earth_grenade",
	"thermal:ender_grenade",
	"thermal:explosive_grenade",
	"thermal:fire_grenade",
	"thermal:glowstone_grenade",
	"thermal:ice_grenade",
	"thermal:lightning_grenade",
	"thermal:phyto_grenade",
	"thermal:redstone_grenade",
	"thermal:slime_grenade",
	// Thermal Series - TNT
	"thermal:earth_tnt",
	"thermal:ender_tnt",
	"thermal:fire_tnt",
	"thermal:glowstone_tnt",
	"thermal:ice_tnt",
	"thermal:lightning_tnt",
	"thermal:phyto_tnt",
	"thermal:redstone_tnt",
	"thermal:slime_tnt",
	// Thermal Extra
	"thermal_extra:dragonsteel_coin",
	"thermal_extra:shellite_coin",
	"thermal_extra:soul_infused_coin",
	"thermal_extra:twinite_coin",
	// Thermal Systeams
	"systeams:numismatic_boiler",
	// The One Probe
	"theoneprobe:creativeprobe",
	"theoneprobe:diamond_helmet_probe",
	"theoneprobe:gold_helmet_probe",
	"theoneprobe:iron_helmet_probe",
	"theoneprobe:probe",
	"theoneprobe:probenote",
	// Tinkers Construct
	"tconstruct:creative_slot",
	"tconstruct:coin_cast",
	"tconstruct:coin_sand_cast",
	"tconstruct:coin_red_sand_cast",
	"tconstruct:earth_slime_sling",
	"tconstruct:ender_slime_sling",
	"tconstruct:flint_and_brick",
	"tconstruct:gear_cast",
	"tconstruct:gear_sand_cast",
	"tconstruct:gear_red_sand_cast",
	"tconstruct:ichor_slime_sling",
	"tconstruct:modifier_worktable",
	"tconstruct:sky_slime_sling",
	// Tough As Nails
	"toughasnails:apple_juice",
	"toughasnails:cactus_juice",
	"toughasnails:chorus_fruit_juice",
	"toughasnails:dirty_water_bottle",
	"toughasnails:dirty_water_canteen",
	"toughasnails:empty_canteen",
	"toughasnails:glow_berry_juice",
	"toughasnails:melon_juice",
	"toughasnails:pumpkin_juice",
	"toughasnails:purified_water_bottle",
	"toughasnails:purified_water_canteen",
	"toughasnails:rain_collector",
	"toughasnails:sweet_berry_juice",
	"toughasnails:water_canteen",
	"toughasnails:water_purifier",
	// Twilight Forest
	"twilightforest:iron_ladder",
	"twilightforest:uncrafting_table",
	// Universal Grip
	"universalgrid:creative_wireless_universal_grid",
	// Unusual End
	"unusualend:void_totem",
	// Vinery
	"vinery:apple_juice",
	"vinery:cooking_pot",
	"vinery:fermentation_barrel",
	"vinery:grapevine_pot",
	"vinery:jungle_red_grapejuice_bottle",
	"vinery:jungle_white_grapejuice_bottle",
	"vinery:red_grapejuice_wine_bottle",
	"vinery:savanna_red_grapejuice_bottle",
	"vinery:savanna_white_grapejuice_bottle",
	"vinery:taiga_red_grapejuice_bottle",
	"vinery:taiga_white_grapejuice_bottle",
	"vinery:white_grapejuice_wine_bottle",
	"vinery:wood_fired_oven",
	// Water Strainer
	"waterstrainer:super_worm",
	// Zero Core
	"zerocore:debugtool"
];
for hide_jei in removeJeiIngradient{
	JEI.hideIngredient(<item:${hide_jei}>);
}

// Hide All Spawn Eggs
JEI.hideRegex(".*:.*_spawn_egg");
JEI.hideRegex(".*:spawn_egg_.*");

//JEI.hideIngredient(<item:botania:mana_tablet>.withTag({mana: "500000" as string}));

println("End script jei_show_remove.");