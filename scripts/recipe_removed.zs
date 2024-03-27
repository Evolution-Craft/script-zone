/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First remove multiple recipe.
 * v0.2 : Rework the code.
 * v0.3 : Alphabet correct sequence.
 * v0.4 : Add priority and log sequence.
 * v0.5 : Remove Pane In The Glass recipe.
 * v0.6 : Rework Gear.
 * v0.7 : Rework Banner.
 * v0.8 : Coin Remove.
 * v0.9 : Rework Rod.
 * v0.10 : Various Fix and Remove Other Recipe.
 * v0.11 : Remove Stone Cutter Hollow Log.
 * v0.12 : Remve All Vinery Recipe.
 */

#priority 1000

Globals.startScript("recipe_removed");
Globals.priorityScript("1000");

import crafttweaker.api.item.Ingredient;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.recipe.CampFireRecipeManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.recipe.Replacer;

var removeRecipeByName = [
	// Alexs Mobs
	"alexsmobs:banner_pattern_australia_0",
	"alexsmobs:banner_pattern_australia_1",
	"alexsmobs:banner_pattern_bear",
	"alexsmobs:banner_pattern_brazil",
	"alexsmobs:banner_pattern_new_mexico",
	"alexsmobs:vine_lasso",
	// Apotheosis
	"apotheosis:ender_lead",
	// Applied Energistics 2
	"ae2:misc/vanilla_comparator",
	"ae2:tools/matter_cannon",
	// Archers Arsenal
	"archarsenal:arrow_down_vanilla_to_villager",
	"archarsenal:arrow_up_villager_to_vanilla",
	"archarsenal:villager_arrow",
	"archarsenal:arrow_down_barbed_to_vanilla",
	// Baubley Heart Canisters
	"bhc:god_apple",
	// Beyond Earth
	"beyond_earth:desh_plate",
	"beyond_earth:iron_plate",
	"beyond_earth:iron_stick",
	// Beyond Earth Giselle Addon
	"beyond_earth_giselle_addon:compat/immersiveengineering/crafting/plate_desh_hammering",
	// Botania
	"botania:elementium_shears",
	"botania:manasteel_shears",
	// BucketLib
	"bucketlib:cake",
	// Create
	"create:crafting/appliances/slime_ball",
	"create:crafting/curiosities/cake",
	// Cyclic
	"cyclic:apple_chocolate",
	"cyclic:apple_chorus",
	"cyclic:apple_ender",
	"cyclic:apple_honey",
	"cyclic:apple_iron",
	"cyclic:apple_lapis",
	"cyclic:apple_lofty_stature",
	"cyclic:apple_sprout_diamond",
	"cyclic:apple_sprout_emerald",
	"cyclic:boomerang_carry",
	"cyclic:boomerang_damage",
	"cyclic:boomerang_stun",
	"cyclic:carrot_ender",
	"cyclic:charm_torch",
	"cyclic:charm_torch_cave",
	"cyclic:compressed_cobblestone",
	"cyclic:conveyor",
	"cyclic:copper_ingot",
	"cyclic:copper_axe",
	"cyclic:copper_hoe",
	"cyclic:copper_pickaxe",
	"cyclic:copper_shovel",
	"cyclic:copper_sword",
	"cyclic:crafting_bag",
	"cyclic:crafting_stick",
	"cyclic:crafting/dispenser_alt",
	"cyclic:crafting/nether_wart_reverse",
	"cyclic:crafting/quartz",
	"cyclic:crafting/repeater",
	"cyclic:diamond_carrot_health",
	"cyclic:elevation_wand",
	"cyclic:experience_pylon",
	"cyclic:fan",
	"cyclic:fan_slab",
	"cyclic:fire_killer",
	"cyclic:flute_summoning",
	"cyclic:heart",
	"cyclic:heart_empty",
	"cyclic:hopper",
	"cyclic:hopper_gold",
	"cyclic:laser_cannon",
	"cyclic:magic_net",
	"cyclic:magic_net_alt",
	"cyclic:netherite_ingot",
	"cyclic:quiver_damage",
	"cyclic:quiver_lightning",
	"cyclic:redstone_carrot_speed",
	"cyclic:shapeless/spark",
	"cyclic:shapeless/ender_fishing",
	"cyclic:shapeless/ender_torch",
	"cyclic:shears_obsidian",
	"cyclic:sprinkler",
	"cyclic:sleeping_mat",
	"cyclic:wand_hypno",
	"cyclic:wand_missile",
	"cyclic:workbench",
	"cyclic:torch_launcher",
	"cyclic:uncrafter",
	// Comforts
	"comforts:hammock_black",
	"comforts:hammock_black_from_white",
	"comforts:hammock_blue",
	"comforts:hammock_blue_from_white",
	"comforts:hammock_brown",
	"comforts:hammock_brown_from_white",
	"comforts:hammock_cyan",
	"comforts:hammock_cyan_from_white",
	"comforts:hammock_gray",
	"comforts:hammock_gray_from_white",
	"comforts:hammock_green",
	"comforts:hammock_green_from_white",
	"comforts:hammock_light_blue",
	"comforts:hammock_light_blue_from_white",
	"comforts:hammock_light_gray",
	"comforts:hammock_light_gray_from_white",
	"comforts:hammock_lime",
	"comforts:hammock_lime_from_white",
	"comforts:hammock_magenta",
	"comforts:hammock_magenta_from_white",
	"comforts:hammock_orange",
	"comforts:hammock_orange_from_white",
	"comforts:hammock_pink",
	"comforts:hammock_pink_from_white",
	"comforts:hammock_purple",
	"comforts:hammock_purple_from_white",
	"comforts:hammock_red",
	"comforts:hammock_red_from_white",
	"comforts:hammock_yellow",
	"comforts:hammock_yellow_from_white",
	"comforts:hammock_white",
	"comforts:rope_and_nail",
	"comforts:rope_and_nail_shapeless",
	// Croptopia
	"croptopia:shaped_tea",
	//Decorative Blocks
	"decorative_blocks:dirt_from_rocky_dirt",
	// Easy Villagers
	"easy_villagers:iron_farm",
	// Electrodynamics
	"electrodynamics:gear_bronze",
	"electrodynamics:gear_copper",
	"electrodynamics:gear_iron",
	"electrodynamics:gear_steel",
	"electrodynamics:gear_tin",
	"electrodynamics:gunpowder",
	"electrodynamics:obsidian",
	"electrodynamics:plate_bronze",
	"electrodynamics:plate_iron",
	"electrodynamics:plate_lead",
	"electrodynamics:plate_steel",
	// Enlightend
	"enlightened_end:ceruelean_log_to_planks",
	// Enginners Delight
	"tmted:slime_ball",
	// Extended Crafting
	"extendedcrafting:handheld_table",
	// Ftb Quests
	"ftbquests:screen_1",
	"ftbquests:screen_3",
	"ftbquests:screen_5",
	"ftbquests:screen_7",
	// Galosphere
	"galosphere:silver_bomb",
	// Hostile Neural Networks
	"hostilenetworks:living_matter/extraterrestrial/nether_star",
	"hostilenetworks:living_matter/overworldian/arrow",
	// Immersive Engineering
	"immersiveengineering:crafting/blueprint_bannerpatterns",
	"immersiveengineering:crafting/blueprint_bullets",
	"immersiveengineering:crafting/blueprint_components",
	"immersiveengineering:crafting/blueprint_molds",
	"immersiveengineering:crafting/buzzsaw",
	"immersiveengineering:crafting/chemthrower",
	"immersiveengineering:crafting/component_iron",
	"immersiveengineering:crafting/component_steel",
	"immersiveengineering:crafting/drill",
	"immersiveengineering:crafting/drillhead_iron",
	"immersiveengineering:crafting/drillhead_steel",
	"immersiveengineering:crafting/empty_casing",
	"immersiveengineering:crafting/empty_shell",
	"immersiveengineering:crafting/firework",
	"immersiveengineering:crafting/hammercrushing_aluminum",
	"immersiveengineering:crafting/hammercrushing_cobalt",
	"immersiveengineering:crafting/hammercrushing_copper",
	"immersiveengineering:crafting/hammercrushing_gold",
	"immersiveengineering:crafting/hammercrushing_iron",
	"immersiveengineering:crafting/hammercrushing_lead",
	"immersiveengineering:crafting/hammercrushing_nickel",
	"immersiveengineering:crafting/hammercrushing_osmium",
	"immersiveengineering:crafting/hammercrushing_silver",
	"immersiveengineering:crafting/hammercrushing_tin",
	"immersiveengineering:crafting/hammercrushing_uranium",
	"immersiveengineering:crafting/hammercrushing_zinc",
	"immersiveengineering:crafting/gunpart_barrel",
	"immersiveengineering:crafting/gunpart_drum",
	"immersiveengineering:crafting/gunpart_hammer",
	"immersiveengineering:crafting/paper_from_sawdust",
	"immersiveengineering:crafting/plate_aluminum_hammering",
	"immersiveengineering:crafting/plate_constantan_hammering",
	"immersiveengineering:crafting/plate_copper_hammering",
	"immersiveengineering:crafting/plate_electrum_hammering",
	"immersiveengineering:crafting/plate_gold_hammering",
	"immersiveengineering:crafting/plate_iron_hammering",
	"immersiveengineering:crafting/plate_lead_hammering",
	"immersiveengineering:crafting/plate_nickel_hammering",
	"immersiveengineering:crafting/plate_silver_hammering",
	"immersiveengineering:crafting/plate_steel_hammering",
	"immersiveengineering:crafting/plate_uranium_hammering",
	"immersiveengineering:crafting/powerpack",
	"immersiveengineering:crafting/railgun",
	"immersiveengineering:crafting/raw_hammercrushing_aluminum",
	"immersiveengineering:crafting/raw_hammercrushing_cobalt",
	"immersiveengineering:crafting/raw_hammercrushing_copper",
	"immersiveengineering:crafting/raw_hammercrushing_gold",
	"immersiveengineering:crafting/raw_hammercrushing_iron",
	"immersiveengineering:crafting/raw_hammercrushing_lead",
	"immersiveengineering:crafting/raw_hammercrushing_nickel",
	"immersiveengineering:crafting/raw_hammercrushing_osmium",
	"immersiveengineering:crafting/raw_hammercrushing_silver",
	"immersiveengineering:crafting/raw_hammercrushing_tin",
	"immersiveengineering:crafting/raw_hammercrushing_uranium",
	"immersiveengineering:crafting/raw_hammercrushing_zinc",
	"immersiveengineering:crafting/revolver",
	"immersiveengineering:crafting/shield",
	"immersiveengineering:crafting/speedloader",
	"immersiveengineering:crafting/skyhook",
	"immersiveengineering:crafting/stick_aluminum",
	"immersiveengineering:crafting/stick_iron",
	"immersiveengineering:crafting/stick_steel",
	"immersiveengineering:crafting/toolupgrade_buzzsaw_spareblades",
	"immersiveengineering:crafting/toolupgrade_chemthrower_focus",
	"immersiveengineering:crafting/toolupgrade_chemthrower_multitank",
	"immersiveengineering:crafting/toolupgrade_drill_capacity",
	"immersiveengineering:crafting/toolupgrade_drill_damage",
	"immersiveengineering:crafting/toolupgrade_drill_fortune",
	"immersiveengineering:crafting/toolupgrade_drill_lube",
	"immersiveengineering:crafting/toolupgrade_drill_waterproof",
	"immersiveengineering:crafting/toolupgrade_powerpack_antenna",
	"immersiveengineering:crafting/toolupgrade_powerpack_induction",
	"immersiveengineering:crafting/toolupgrade_powerpack_tesla",
	"immersiveengineering:crafting/toolupgrade_railgun_capacitors",
	"immersiveengineering:crafting/toolupgrade_railgun_scope",
	"immersiveengineering:crafting/toolupgrade_revolver_bayonet",
	"immersiveengineering:crafting/toolupgrade_revolver_electro",
	"immersiveengineering:crafting/toolupgrade_revolver_magazine",
	"immersiveengineering:crafting/toolupgrade_shield_flash",
	"immersiveengineering:crafting/toolupgrade_shield_magnet",
	"immersiveengineering:crafting/toolupgrade_shield_shock",
	"immersiveengineering:crafting/turret_chem",
	"immersiveengineering:crafting/turret_gun",
	"immersiveengineering:crafting/wooden_grip",
	"immersiveengineering:powerpack_attach",
	// Immersive Petroleum
	"immersivepetroleum:molotov_wool",
	"immersivepetroleum:molotov_fabric",
	"immersivepetroleum:speedboat",
	"immersivepetroleum:toolupgrade_drill_lube",
	"immersivepetroleum:upgrade_icebreaker",
	"immersivepetroleum:upgrade_paddles",
	"immersivepetroleum:upgrade_reinforced_hull",
	"immersivepetroleum:upgrade_rudders",
	"immersivepetroleum:upgrade_tank",
	// Immersive Posts
	"immersiveposts:has_constantan_rod",
	"immersiveposts:has_copper_rod",
	"immersiveposts:has_electrum_rod",
	"immersiveposts:has_gold_rod",
	"immersiveposts:has_lead_rod",
	"immersiveposts:has_nickel_rod",
	"immersiveposts:has_silver_rod",
	"immersiveposts:has_uranium_rod",
	// Industrial Foregoing
	"industrialforegoing:diamond_gear",
	"industrialforegoing:gold_gear",
	"industrialforegoing:iron_gear",
	"industrialforegoing:material_stonework_factory",
	// Infernal Expansion
	"infernalexp:crafting/crafting_shaped/blast_furnace_from_smooth_stones",
	"infernalexp:crafting/crafting_shaped/paper_from_mushrooms",
	"infernalexp:crafting/crafting_shapeless/gold_ingot_from_molten_cluster_1",
	"infernalexp:crafting/crafting_shapeless/gold_ingot_from_molten_cluster_2",
	// Leathered Boots
	"leatheredboots:crafting/leathered_chainmail_boots",
	"leatheredboots:crafting/leathered_iron_boots",
	"leatheredboots:crafting/leathered_gold_boots",
	"leatheredboots:crafting/leathered_diamond_boots",
	"leatheredboots:crafting/leathered_netherite_boots",
	// Library Ferret
	"libraryferret:crafting_shaped/fake_diamond_block",
	"libraryferret:crafting_shaped/fake_emerald_block",
	"libraryferret:crafting_shaped/fake_gold_block",
	"libraryferret:crafting_shaped/fake_iron_block",
	"libraryferret:crafting_shaped/fake_netherite_block",
	// Mekanism Tools
	"mekanismtools:wood_paxel",
	// Minecraft
	"minecraft:arrow",
	"minecraft:beacon",
	"minecraft:cake",
	"minecraft:creeper_banner_pattern",
	"minecraft:daylight_detector",
	"minecraft:end_crystal",
	"minecraft:flower_banner_pattern",
	"minecraft:lead",
	"minecraft:magma_cream",
	"minecraft:mojang_banner_pattern",
	"minecraft:skull_banner_pattern",
	"minecraft:spectral_arrow",
	"minecraft:sticky_piston",
	"minecraft:wooden_axe",
	"minecraft:wooden_hoe",
	"minecraft:wooden_pickaxe",
	"minecraft:wooden_shovel",
	"minecraft:wooden_sword",
	// Mini Utilities
	"miniutilities:chorus_tile",
	"miniutilities:destruction_pickaxe",
	"miniutilities:erosion_shovel",
	"miniutilities:ender_dust_to_ender_pearl",
	"miniutilities:ender_tile",
	"miniutilities:etheric_sword",
	"miniutilities:golden_lasso",
	"miniutilities:healing_axe",
	"miniutilities:iron_drum",
	"miniutilities:kikoku",
	"miniutilities:laser_hub",
	"miniutilities:laser_port",
	"miniutilities:lunar_panel",
	"miniutilities:magical_egg",
	"miniutilities:mechanical_miner",
	"miniutilities:mechanical_placer",
	"miniutilities:netherite_reinforced_drum",
	"miniutilities:precision_shears",
	"miniutilities:redstone_clock",
	"miniutilities:reinforced_large_drum",
	"miniutilities:reversing_hoe",
	"miniutilities:solar_panel",
	"miniutilities:solar_panel_controller",
	"miniutilities:stone_drum",
	"miniutilities:unstable_drum",
	"miniutilities:wooden_spikes",
	// Mob Grinding Utils
	"mob_grinding_utils:gm_chicken_feed",
	"mob_grinding_utils:recipe_cursed_feed",
	"mob_grinding_utils:recipe_entity_conveyor",
	"mob_grinding_utils:recipe_entity_spawner",
	"mob_grinding_utils:recipe_fan",
	"mob_grinding_utils:recipe_fan_upgrade_height",
	"mob_grinding_utils:recipe_fan_upgrade_speed",
	"mob_grinding_utils:recipe_fan_upgrade_width",
	"mob_grinding_utils:recipe_mob_swab",
	"mob_grinding_utils:recipe_nutritious_feed",
	"mob_grinding_utils:recipe_spawner_upgrade_height",
	"mob_grinding_utils:recipe_spawner_upgrade_width",
	"mob_grinding_utils:recipe_spikes",
	// Nature Aura
	"naturesaura:ancient_planks_from_bark",
	// Pneumatic Craft
	"pneumaticcraft:compressed_iron_gear",
	// Supplementaries
	"supplementaries:bomb",
	"supplementaries:soap/hammock",
	"supplementaries:spiky_bomb_2",
	// Quark
	"quark:automation/crafting/obsidian_pressure_plate",
	"quark:building/crafting/compressed/bamboo_block",
	"quark:building/crafting/compressed/bamboo_block_uncompress",
	"quark:building/crafting/iron_ladder",
	// RF Tools Builder
	"rftoolsbuilder:blue_shield_template_block",
	"rftoolsbuilder:green_shield_template_block",
	"rftoolsbuilder:mover",
	"rftoolsbuilder:mover_control",
	"rftoolsbuilder:mover_control_back",
	"rftoolsbuilder:mover_control2",
	"rftoolsbuilder:mover_control3",
	"rftoolsbuilder:mover_control4",
	"rftoolsbuilder:mover_controller",
	"rftoolsbuilder:mover_status",
	"rftoolsbuilder:red_shield_template_block",
	"rftoolsbuilder:shield_block1",
	"rftoolsbuilder:shield_block2",
	"rftoolsbuilder:shield_block3",
	"rftoolsbuilder:shield_block4",
	"rftoolsbuilder:space_chamber",
	"rftoolsbuilder:space_chamber_card",
	"rftoolsbuilder:space_chamber_controller",
	"rftoolsbuilder:vehicle_builder",
	"rftoolsbuilder:vehicle_card",
	"rftoolsbuilder:vehicle_control_module",
	"rftoolsbuilder:vehicle_status_module",
	"rftoolsbuilder:yellow_shield_template_block",
	// The Undergarden
	"undergarden:undergarden_scaffolding",
	// Thermal Series
	"thermal:dynamo_numismatic",
	"thermal:fire_charge/bronze_ingot_4",
	"thermal:fire_charge/constantan_ingot_2",
	"thermal:fire_charge/electrum_ingot_2",
	"thermal:fire_charge/enderium_ingot_2",
	"thermal:fire_charge/invar_ingot_3",
	"thermal:fire_charge/lumium_ingot_4",
	"thermal:fire_charge/signalum_ingot_4",
	"thermal:drill_head",
	"thermal:flux_drill",
	"thermal:flux_saw",
	"thermal:gunpowder_4",
	"thermal:lightning_charge/witch_from_villager",
	"thermal:lightning_charge/zombified_piglin_from_pig",
	"thermal:parts/bronze_gear",
	"thermal:parts/constantan_gear",
	"thermal:parts/copper_gear",
	"thermal:parts/diamond_gear",
	"thermal:parts/electrum_gear",
	"thermal:parts/emerald_gear",
	"thermal:parts/enderium_gear",
	"thermal:parts/gold_gear",
	"thermal:parts/iron_gear",
	"thermal:parts/invar_gear",
	"thermal:parts/lapis_gear",
	"thermal:parts/lead_gear",
	"thermal:parts/lumium_gear",
	"thermal:parts/netherite_gear",
	"thermal:parts/nickel_gear",
	"thermal:parts/quartz_gear",
	"thermal:parts/rose_gold_gear",
	"thermal:parts/signalum_gear",
	"thermal:parts/silver_gear",
	"thermal:parts/steel_gear",
	"thermal:parts/tin_gear",
	"thermal:press_coin_die",
	"thermal:storage/bamboo_block",
	"thermal:storage/bamboo_from_block",
	"thermal:tools/detonator",
	// Thermal Series - GRENADE
	"thermal:earth_grenade_4",
	"thermal:ender_grenade_4",
	"thermal:explosive_grenade_4",
	"thermal:fire_grenade_4",
	"thermal:glowstone_grenade_4",
	"thermal:ice_grenade_4",
	"thermal:lightning_grenade_4",
	"thermal:phyto_grenade_4",
	"thermal:redstone_grenade_4",
	"thermal:slime_grenade_4",
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
	"thermal_extra:parts/dragonsteel_gear",
	"thermal_extra:parts/shellite_gear",
	"thermal_extra:parts/soul_infused_gear",
	"thermal_extra:parts/twinite_gear",
	// Thermal Systeams
	"systeams:boilers/numismatic",
	"systeams:boilers/upgrades/numismatic_downgrade",
	"systeams:boilers/upgrades/numismatic_upgrade",
	// Tinkers Construct
	"tconstruct:gadgets/slimesling/earth",
	"tconstruct:gadgets/slimesling/ender",
	"tconstruct:gadgets/slimesling/ichor",
	"tconstruct:gadgets/slimesling/sky",
	"tconstruct:gadgets/shuriken/flint_shuriken",
	"tconstruct:gadgets/shuriken/quartz_shuriken",
	"tconstruct:gadgets/throwball/efln_ball",
	"tconstruct:tables/modifier_worktable",
	"tconstruct:tools/building/flint_and_brick",
	"tconstruct:tools/modifiers/wither_bone_conversion",
	// Tough As Nails
	"toughasnails:apple_juice",
	"toughasnails:cactus_juice",
	"toughasnails:canteen",
	"toughasnails:chorus_fruit_juice",
	"toughasnails:glow_berry_juice",
	"toughasnails:melon_juice",
	"toughasnails:pumpkin_juice",
	"toughasnails:rain_collector",
	"toughasnails:sweet_berry_juice",
	"toughasnails:water_purifier",
	// Twilight Decor
	"twilightdecor:crafting/canopy/canopy_planks",
	"twilightdecor:crafting/darkwood/darkwood_planks",
	"twilightdecor:crafting/mangrove/mangrove_planks",
	"twilightdecor:crafting/mining/mine_planks",
	"twilightdecor:crafting/sorting/sort_planks",
	"twilightdecor:crafting/timewood/time_planks",
	"twilightdecor:crafting/transformation/trans_planks",
	"twilightdecor:crafting/twilight_oak/twilight_oak_planks",
	// Twilight Forest
	"twilightforest:iron_ladder",
	"twilightforest:wood/canopy_from_stripped_planks",
	"twilightforest:wood/canopy_from_stripped_wood_planks",
	"twilightforest:wood/canopy_from_wood_planks",
	"twilightforest:wood/darkwood_from_stripped_planks",
	"twilightforest:wood/darkwood_from_stripped_wood_planks",
	"twilightforest:wood/darkwood_from_wood_planks",
	"twilightforest:wood/mangrove_from_stripped_planks",
	"twilightforest:wood/mangrove_from_stripped_wood_planks",
	"twilightforest:wood/mangrove_from_wood_planks",
	"twilightforest:wood/mining_from_stripped_planks",
	"twilightforest:wood/mining_from_stripped_wood_planks",
	"twilightforest:wood/mining_from_wood_planks",
	"twilightforest:wood/sorting_from_stripped_planks",
	"twilightforest:wood/sorting_from_stripped_wood_planks",
	"twilightforest:wood/sorting_from_wood_planks",
	"twilightforest:wood/time_from_stripped_planks",
	"twilightforest:wood/time_from_stripped_wood_planks",
	"twilightforest:wood/time_from_wood_planks",
	"twilightforest:wood/transformation_from_stripped_planks",
	"twilightforest:wood/transformation_from_stripped_wood_planks",
	"twilightforest:wood/transformation_from_wood_planks",
	"twilightforest:wood/twilight_oak_from_stripped_planks",
	"twilightforest:wood/twilight_oak_from_stripped_wood_planks",
	"twilightforest:wood/twilight_oak_from_wood_planks",
	// Vinery
	"vinery:cooking_pot",
	"vinery:fermentation_barrel",
	"vinery:grapevine_pot",
	"vinery:wood_fired_oven"
];
for remove_recipe_by_name in removeRecipeByName {
	craftingTable.removeByName(remove_recipe_by_name);
}
var removeRecipeByModid = [
	// Pane In The Glass
	"pitg",
	// The One Probe
	"theoneprobe"
];
for remove_recipe_by_modid in removeRecipeByModid {
	craftingTable.removeByModid(remove_recipe_by_modid);
}

// Blasting Furnace
var removeRecipeByNameBlastingFurnace = [
	// Beyond Earth
	"beyond_earth:steel_ingot_blasting",
	// Croptopia
	"croptopia:blasting_salt",
	// Library Ferret
	"libraryferret:blasting/diamond_coins_jtl",
	"libraryferret:blasting/emerald_coins_jtl",
	"libraryferret:blasting/gold_coins_jtl",
	"libraryferret:blasting/iron_coins_jtl",
	"libraryferret:blasting/netherite_coins_jtl",
];
for remove_recipe_by_name_blasting_furnace in removeRecipeByNameBlastingFurnace {
	blastFurnace.removeByName(remove_recipe_by_name_blasting_furnace);
}

// Campfire
campfire.removeByName("apotheosis:torch");

// Furnace
var removeRecipeByNameFurnace = [
	"cyclic:smelting/fireball",
	// Croptopia
	"croptopia:salt_from_water_bottle",
	// Library Ferret
	"libraryferret:smelting/diamond_coins_jtl",
	"libraryferret:smelting/emerald_coins_jtl",
	"libraryferret:smelting/gold_coins_jtl",
	"libraryferret:smelting/iron_coins_jtl",
	"libraryferret:smelting/netherite_coins_jtl",
	// Mini Utilities
	"miniutilities:smelting/ender_ore",
	// Refinde Storage
	"refinedstorage:silicon",
	// Thermal Series
	"thermal:smelting/glowstone_dust_from_spores_smelting",
	"thermal:smelting/gunpowder_from_spores_smelting",
	"thermal:smelting/redstone_from_spores_smelting"
];
for remove_recipe_by_name_furnace in removeRecipeByNameFurnace {
	furnace.removeByName(remove_recipe_by_name_furnace);
}

// Smithing Table
var removeRecipeByNameSmithingTable = [
	// Leathered Boots
	"leatheredboots:smithing/leathered_chainmail_boots",
	"leatheredboots:smithing/leathered_iron_boots",
	"leatheredboots:smithing/leathered_gold_boots",
	"leatheredboots:smithing/leathered_diamond_boots",
	"leatheredboots:smithing/leathered_netherite_boots",
	"leatheredboots:smithing/leathered_netherite_boots_from_diamond"
];
for remove_recipe_by_name_smithing_table in removeRecipeByNameSmithingTable {
	smithing.removeByName(remove_recipe_by_name_smithing_table);
}

// Smoker
smoker.removeByName("croptopia:salt_from_smoking_water_bottle");

// Stone Cutter
stoneCutter.removeByRegex("mcwfences:.*railing_.*");
stoneCutter.removeByRegex("mcwfences:railing_.*");
stoneCutter.removeByRegex("twilightforest:.*hollow_.*");
stoneCutter.removeByName("twilightforest:stonecutting/dark_log/towerwood");
stoneCutter.removeByName("twilightforest:stonecutting/dark_wood/towerwood");

// Alchemistry
<recipetype:alchemistry:dissolver>.removeByName("alchemistry:dissolver/storage_blocks/bamboo");

// Applied Energistics
<recipetype:ae2:inscriber>.removeByName("lazierae2:compat/ae2/inscriber/universal_press");

// Beyond Earth: Giselle Addon
<recipetype:beyond_earth_giselle_addon:extruding>.removeByName("beyond_earth_giselle_addon:extruding/iron_stick");
<recipetype:beyond_earth_giselle_addon:rolling>.removeByName("beyond_earth_giselle_addon:rolling/iron_plate");

// Botania
var removeManaInfsionRecipeByName = [
	"botania:mana_infusion/acacia_log_to_dark_oak_log",
	"botania:mana_infusion/acacia_sapling_to_dark_oak_sapling",
	"botania:mana_infusion/birch_log_to_jungle_log",
	"botania:mana_infusion/birch_sapling_to_jungle_sapling",
	"botania:mana_infusion/dark_oak_log_to_oak_log",
	"botania:mana_infusion/dark_oak_sapling_to_oak_sapling",
	"botania:mana_infusion/jungle_log_to_acacia_log",
	"botania:mana_infusion/jungle_sapling_to_acacia_sapling",
	"botania:mana_infusion/oak_log_to_spruce_log",
	"botania:mana_infusion/oak_sapling_to_spruce_sapling",
	"botania:mana_infusion/spruce_log_to_birch_log",
	"botania:mana_infusion/spruce_sapling_to_birch_sapling",
	"botania:mana_infusion/cactus_to_slime",
	"botania:mana_infusion/coal_dupe",
	"botania:mana_infusion/glowstone_dupe",
	"botania:mana_infusion/quartz_dupe",
	"botania:mana_infusion/redstone_dupe"
];
for remove_mana_infusion_recipe_by_name in removeManaInfsionRecipeByName {
	<recipetype:botania:mana_infusion>.removeByName(remove_mana_infusion_recipe_by_name);
}

// Create
<recipetype:create:filling>.removeByName("create:filling/honeyed_apple");

// Cyclic
var removeCyclicCrusherRecipeByName = [
	"cyclic:crusher/coal_ore",
	"cyclic:crusher/copper_ore",
	"cyclic:crusher/diamond_ore",
	"cyclic:crusher/emerald_ore",
	"cyclic:crusher/gold_ore",
	"cyclic:crusher/hopper_gold",
	"cyclic:crusher/iron_ore",
	"cyclic:crusher/lapis_ore",
	"cyclic:crusher/quartz_ore",
	"cyclic:crusher/redstone_ore"
];
for remove_cyclic_crusher_recipe_by_name in removeCyclicCrusherRecipeByName {
	<recipetype:cyclic:crusher>.removeByName(remove_cyclic_crusher_recipe_by_name);
}

// Electrodynamics
<recipetype:electrodynamics:lathe_recipe>.removeByName("electrodynamics:item2item/lathe/steel_rod");

// Immersive Engineering
var removeBlueprintRecipeByName = [
	"immersiveengineering:blueprint/banner_wolf",
	"immersiveengineering:blueprint/banner_wolf_r",
	"immersiveengineering:blueprint/banner_wolf_l",
	"immersiveengineering:blueprint/bullet_armorpiercing",
	"immersiveengineering:blueprint/bullet_buckshot",
	"immersiveengineering:blueprint/bullet_casull",
	"immersiveengineering:blueprint/bullet_dragonsbreath",
	"immersiveengineering:blueprint/bullet_explosive",
	"immersiveengineering:blueprint/bullet_flare_green",
	"immersiveengineering:blueprint/bullet_flare_yellow",
	"immersiveengineering:blueprint/bullet_flare_red",
	"immersiveengineering:blueprint/bullet_homing",
	"immersiveengineering:blueprint/bullet_potion",
	"immersiveengineering:blueprint/bullet_silver",
	"immersiveengineering:blueprint/bullet_wolfpack",
	"immersiveengineering:blueprint/mold_bullet_casing"
];
for remove_blueprint_recipe_by_name in removeBlueprintRecipeByName {
	<recipetype:immersiveengineering:blueprint>.removeByName(remove_blueprint_recipe_by_name);
}
<recipetype:immersiveengineering:bottling_machine>.removeByName("immersiveengineering:bottling/empty_shell");
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/bullet_casing");

// Industrial Foregoing
var removeRecipeByNameIndustrialForegoing = [
	"industrialforegoing:dissolution_chamber/infinity_backpack",
	"industrialforegoing:dissolution_chamber/infinity_drill",
	"industrialforegoing:dissolution_chamber/infinity_hammer",
	"industrialforegoing:dissolution_chamber/infinity_launcher",
	"industrialforegoing:dissolution_chamber/infinity_nuke",
	"industrialforegoing:dissolution_chamber/infinity_saw",
	"industrialforegoing:dissolution_chamber/infinity_trident",
];
for remove_industrial_foregoing_recipe_by_name in removeRecipeByNameIndustrialForegoing {
	<recipetype:industrialforegoing:dissolution_chamber>.removeByName(remove_industrial_foregoing_recipe_by_name);
}

// Lazier
<recipetype:lazierae2:etcher>.removeByName("lazierae2:etcher/universal_press");

// Pneumatic Craft
<recipetype:pneumaticcraft:amadron>.removeAll();

// Twilight Forest
<recipetype:twilightforest:uncrafting>.removeAll();

// Thermal Series
var removeMultiservoPressRecipeByName = [
	// Coin
	"thermal:machines/press/press_bronze_ingot_to_coin",
	"thermal:machines/press/press_bronze_nugget_to_coin",
	"thermal:machines/press/press_constantan_ingot_to_coin",
	"thermal:machines/press/press_constantan_nugget_to_coin",
	"thermal:machines/press/press_copper_ingot_to_coin",
	"thermal:machines/press/press_copper_nugget_to_coin",
	"thermal:machines/press/press_electrum_ingot_to_coin",
	"thermal:machines/press/press_electrum_nugget_to_coin",
	"thermal:machines/press/press_enderium_ingot_to_coin",
	"thermal:machines/press/press_enderium_nugget_to_coin",
	"thermal:machines/press/press_gold_ingot_to_coin",
	"thermal:machines/press/press_gold_nugget_to_coin",
	"thermal:machines/press/press_invar_ingot_to_coin",
	"thermal:machines/press/press_invar_nugget_to_coin",
	"thermal:machines/press/press_iron_ingot_to_coin",
	"thermal:machines/press/press_iron_nugget_to_coin",
	"thermal:machines/press/press_lead_ingot_to_coin",
	"thermal:machines/press/press_lead_nugget_to_coin",
	"thermal:machines/press/press_lumium_ingot_to_coin",
	"thermal:machines/press/press_lumium_nugget_to_coin",
	"thermal:machines/press/press_netherite_ingot_to_coin",
	"thermal:machines/press/press_nickel_ingot_to_coin",
	"thermal:machines/press/press_nickel_nugget_to_coin",
	"thermal:machines/press/press_signalum_ingot_to_coin",
	"thermal:machines/press/press_signalum_nugget_to_coin",
	"thermal:machines/press/press_silver_ingot_to_coin",
	"thermal:machines/press/press_silver_nugget_to_coin",
	"thermal:machines/press/press_steel_ingot_to_coin",
	"thermal:machines/press/press_steel_nugget_to_coin",
	"thermal:machines/press/press_rose_gold_ingot_to_coin",
	"thermal:machines/press/press_rose_gold_nugget_to_coin",
	"thermal:machines/press/press_tin_ingot_to_coin",
	"thermal:machines/press/press_tin_nugget_to_coin",
	"thermal_extra:machine/press/dragonsteel_coin",
	"thermal_extra:machine/press/dragonsteel_nugget_to_coin",
	"thermal_extra:machine/press/shellite_coin",
	"thermal_extra:machine/press/shellite_nugget_to_coin",
	"thermal_extra:machine/press/soul_infused_coin",
	"thermal_extra:machine/press/soul_infused_nugget_to_coin",
	"thermal_extra:machine/press/twinite_coin",
	"thermal_extra:machine/press/twinite_nugget_to_coin"
];
for remove_multiservo_press_recipe_by_name in removeMultiservoPressRecipeByName {
	<recipetype:thermal:press>.removeByName(remove_multiservo_press_recipe_by_name);
}
<recipetype:thermal:bottler>.removeByName("thermal:compat/create/bottler_create_honeyed_apple");

// Tinkers Construct
var removeCastingTableRecipeByName = [
	// Gold Cast
	"tconstruct:smeltery/casts/gold_casts/gears",
	"tconstruct:smeltery/casts/gold_casts/coins",
	// Coin Gold Cast
	"tconstruct:smeltery/casting/metal/bronze/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/constantan/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/copper/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/electrum/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/enderium/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/gold/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/invar/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/iron/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/lead/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/lumium/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/netherite/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/nickel/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/rose_gold/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/signalum/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/silver/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/steel/coin_gold_cast",
	"tconstruct:smeltery/casting/metal/tin/coin_gold_cast",
	"thermal_extra:compat/tconstruct/casting/dragonsteel/coin_gold_cast",
	"thermal_extra:compat/tconstruct/casting/soul_infused/coin_gold_cast",
	// Gear Gold Cast
	"tconstruct:smeltery/casting/metal/bronze/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/constantan/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/copper/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/electrum/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/enderium/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/gold/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/invar/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/iron/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/lead/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/lumium/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/netherite/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/nickel/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/rose_gold/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/signalum/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/silver/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/steel/gear_gold_cast",
	"tconstruct:smeltery/casting/metal/tin/gear_gold_cast",
	"thermal_extra:compat/tconstruct/casting/dragonsteel/gear_gold_cast",
	"thermal_extra:compat/tconstruct/casting/soul_infused/gear_gold_cast",
	// Coin Sand Cast
	"tconstruct:smeltery/casting/metal/bronze/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/constantan/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/copper/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/electrum/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/enderium/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/gold/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/invar/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/iron/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/lead/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/lumium/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/netherite/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/nickel/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/rose_gold/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/signalum/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/silver/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/steel/coin_sand_cast",
	"tconstruct:smeltery/casting/metal/tin/coin_sand_cast",
	"thermal_extra:compat/tconstruct/casting/dragonsteel/coin_sand_cast",
	"thermal_extra:compat/tconstruct/casting/soul_infused/coin_sand_cast",
	// Gear Sand Cast
	"tconstruct:smeltery/casting/metal/bronze/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/constantan/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/copper/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/electrum/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/enderium/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/gold/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/invar/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/iron/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/lead/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/lumium/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/netherite/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/nickel/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/rose_gold/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/signalum/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/silver/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/steel/gear_sand_cast",
	"tconstruct:smeltery/casting/metal/tin/gear_sand_cast",
	"thermal_extra:compat/tconstruct/casting/dragonsteel/gear_sand_cast",
	"thermal_extra:compat/tconstruct/casting/soul_infused/gear_sand_cast"
];
for remove_casting_table_recipe_by_name in removeCastingTableRecipeByName {
	<recipetype:tconstruct:casting_table>.removeByName(remove_casting_table_recipe_by_name);
}
var removeMoldingTableRecipeByName = [
	// Sand Cast
	"tconstruct:smeltery/casts/sand_casts/coins",
	"tconstruct:smeltery/casts/red_sand_casts/coins",
	"tconstruct:smeltery/casts/sand_casts/gears",
	"tconstruct:smeltery/casts/red_sand_casts/gears"
];
for remove_molding_table_recipe_by_name in removeMoldingTableRecipeByName {
	<recipetype:tconstruct:molding_table>.removeByName(remove_molding_table_recipe_by_name);
}
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/quartz/gem_1");
<recipetype:tconstruct:modifier_worktable>.removeAll();

// Vinery
<recipetype:vinery:pot_cooking>.removeAll();
<recipetype:vinery:wine_fermentation>.removeAll();
<recipetype:vinery:wood_fired_oven_cooking>.removeAll();

Globals.endScript("recipe_removed");