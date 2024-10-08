/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 1000

Globals.startScript("recipe_removed");
Globals.priorityScript("1000");

import crafttweaker.api.item.Ingredient;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.recipe.Replacer;

var removeRecipeByName = [
	// Alexs Mobs
	"alexsmobs:banner_pattern_australia_0",
	"alexsmobs:banner_pattern_australia_1",
	"alexsmobs:banner_pattern_bear",
	"alexsmobs:banner_pattern_brazil",
	"alexsmobs:banner_pattern_new_mexico",
	"alexsmobs:shark_tooth_arrow",
	"alexsmobs:vine_lasso",
	// Apotheosis
	"apotheosis:ender_lead",
	// Applied Energistics 2
	"ae2:misc/vanilla_comparator",
	"ae2:tools/matter_cannon",
	// Aquaculture
	"aquaculture:planks_from_driftwood",
	"aquaculture:turtle_soup",
	// Archers Arsenal
	"archarsenal:arrow_down_barbed_to_vanilla",
	"archarsenal:arrow_down_vanilla_to_villager",
	"archarsenal:arrow_up_vanilla_to_barbed",
	"archarsenal:arrow_up_villager_to_vanilla",
	"archarsenal:barbed_arrow",
	"archarsenal:villager_arrow",
	// Baubley Heart Canisters
	"bhc:god_apple",
	// Bamboo Everything
	"bambooeverything:bamboo_torch",
	"bambooeverything:dry_bamboo_torch",
	// Beyond Earth
	"beyond_earth:desh_plate",
	"beyond_earth:iron_plate",
	"beyond_earth:iron_stick",
	// Beyond Earth Giselle Addon
	"beyond_earth_giselle_addon:compat/immersiveengineering/crafting/plate_desh_hammering",
	// Brewin And Chewin
	"brewinandchewin:ham_and_cheese_sandwich",
	"brewinandchewin:pizza",
	// Botania
	"botania:elementium_shears",
	"botania:manasteel_shears",
	// BucketLib
	"bucketlib:aquaculture/turtle_soup",
	"bucketlib:cake",
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
	"cyclic:breaker",
	"cyclic:cable_wrench",
	"cyclic:carrot_ender",
	"cyclic:charm_torch",
	"cyclic:charm_torch_cave",
	"cyclic:conveyor",
	"cyclic:copper_axe",
	"cyclic:copper_chain",
	"cyclic:copper_hoe",
	"cyclic:copper_ingot",
	"cyclic:copper_pickaxe",
	"cyclic:copper_shovel",
	"cyclic:copper_sword",
	"cyclic:crafting_bag",
	"cyclic:crafting_stick",
	"cyclic:crafting/dispenser_alt",
	"cyclic:crafting/melon",
	"cyclic:crafting/nether_wart_reverse",
	"cyclic:crafting/quartz",
	"cyclic:crafting/repeater",
	"cyclic:diamond_carrot_health",
	"cyclic:elevation_wand",
	"cyclic:energy_pipe",
	"cyclic:experience_pylon",
	"cyclic:fan",
	"cyclic:fan_slab",
	"cyclic:fire_killer",
	"cyclic:fluid_pipe",
	"cyclic:flute_summoning",
	"cyclic:generator_solar",
	"cyclic:gold_chain",
	"cyclic:heart",
	"cyclic:heart_empty",
	"cyclic:hopper",
	"cyclic:hopper_gold",
	"cyclic:item_pipe",
	"cyclic:laser_cannon",
	"cyclic:magic_net_alt",
	"cyclic:netherite_ingot",
	"cyclic:quiver_damage",
	"cyclic:quiver_lightning",
	"cyclic:redstone_carrot_speed",
	"cyclic:rotation_wand",
	"cyclic:shapeless/spark",
	"cyclic:shapeless/ender_fishing",
	"cyclic:shapeless/ender_torch",
	"cyclic:shears_obsidian",
	"cyclic:spikes_curse",
	"cyclic:spikes_diamond",
	"cyclic:spikes_fire",
	"cyclic:spikes_iron",
	"cyclic:sprinkler",
	"cyclic:sleeping_mat",
	"cyclic:wand_hypno",
	"cyclic:wand_missile",
	"cyclic:workbench",
	"cyclic:torch_launcher",
	"cyclic:trash",
	"cyclic:unbreakable_block",
	"cyclic:unbreakable_reactive",
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
	// Create
	"create:crafting/appliances/slime_ball",
	"create:crafting/curiosities/cake",
	// Croptopia
	"croptopia:apple_juice",
	"croptopia:apple_pie",
	"croptopia:apricot_jam",
	"croptopia:banana_cream_pie",
	"croptopia:banana_smoothie",
	"croptopia:baked_crepes",
	"croptopia:beer",
	"croptopia:beetroot_salad",
	"croptopia:blackberry_jam",
	"croptopia:blt",
	"croptopia:borscht",
	"croptopia:butter",
	"croptopia:cherry_jam",
	"croptopia:cherry_pie",
	"croptopia:cheese",
	"croptopia:chicken_and_noodles",
	"croptopia:chili_relleno",
	"croptopia:chimichanga",
	"croptopia:chocolate",
	"croptopia:cinnamon_roll",
	"croptopia:cranberry_juice",
	"croptopia:croque_monsieur",
	"croptopia:croque_madame",
	"croptopia:coffee",
	"croptopia:dough",
	"croptopia:french_fries",
	"croptopia:grape_juice",
	"croptopia:ground_pork",
	"croptopia:hashed_brown",
	"croptopia:hamburger",
	"croptopia:lemonade",
	"croptopia:limeade",
	"croptopia:macaron",
	"croptopia:mango_ice_cream",
	"croptopia:mashed_potatoes",
	"croptopia:mead",
	"croptopia:melon_juice",
	"croptopia:meringue",
	"croptopia:noodle",
	"croptopia:olive_oil",
	"croptopia:orange_juice",
	"croptopia:onion_rings",
	"croptopia:paprika",
	"croptopia:peach_jam",
	"croptopia:pecan_ice_cream",
	"croptopia:pineapple_juice",
	"croptopia:pumpkin_bars",
	"croptopia:quiche",
	"croptopia:raspberry_jam",
	"croptopia:rum",
	"croptopia:rum_raisin_ice_cream",
	"croptopia:saguaro_juice",
	"croptopia:shaped_bacon",
	"croptopia:shaped_beef_wellington",
	"croptopia:shaped_chocolate_ice_cream",
	"croptopia:shaped_eggplant_parmesan",
	"croptopia:shaped_eton_mess",
	"croptopia:shaped_figgy_pudding",
	"croptopia:shaped_fish_and_chips",
	"croptopia:shaped_fruit_cake",
	"croptopia:shaped_lemon_coconut_bar",
	"croptopia:shaped_milk_bottle",
	"croptopia:shaped_peanut_butter",
	"croptopia:shaped_scones",
	"croptopia:shaped_sticky_toffee_pudding",
	"croptopia:shaped_stuffed_artichoke",
	"croptopia:shaped_tea",
	"croptopia:shaped_toast_sandwich",
	"croptopia:shaped_treacle_tart",
	"croptopia:shaped_trifle",
	"croptopia:shaped_water_bottle",
	"croptopia:soy_sauce",
	"croptopia:soy_milk",
	"croptopia:steamed_crab",
	"croptopia:steamed_rice",
	"croptopia:strawberry_ice_cream",
	"croptopia:strawberry_smoothie",
	"croptopia:strawberry_jam",
	"croptopia:stuffed_poblanos",
	"croptopia:sunny_side_eggs",
	"croptopia:sweet_potato_fries",
	"croptopia:sweet_crepes",
	"croptopia:tamales",
	"croptopia:the_big_breakfast",
	"croptopia:tomato_juice",
	"croptopia:tofu",
	"croptopia:tofu_and_dumplings",
	"croptopia:tres_leche_cake",
	"croptopia:vanilla_ice_cream",
	"croptopia:wine",
	// Decorative Blocks
	"decorative_blocks:dirt_from_rocky_dirt",
	"decorative_blocks:rocky_dirt",
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
	"tmted:wheat_dough_from_egg",
	"tmted:wheat_dough_from_waterbucket",
	// Enders Delight
	"endersdelight:chorus_crate",
	"endersdelight:chorus_fruit_from_crate",
	// Extended Crafting
	"extendedcrafting:handheld_table",
	// Farmers Delight
	"farmersdelight:cooking_pot",
	"farmersdelight:melon_popsicle",
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
	"immersiveengineering:crafting/fiberboard",
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
	"immersiveengineering:crafting/sawdust",
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
	"immersivepetroleum:seismic_survey_tool",
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
	"leathered_boots:crafting/leathered_chainmail_boots",
	"leathered_boots:crafting/leathered_iron_boots",
	"leathered_boots:crafting/leathered_gold_boots",
	"leathered_boots:crafting/leathered_diamond_boots",
	"leathered_boots:crafting/leathered_netherite_boots",
	// Library Ferret
	"libraryferret:crafting_shaped/fake_diamond_block",
	"libraryferret:crafting_shaped/fake_emerald_block",
	"libraryferret:crafting_shaped/fake_gold_block",
	"libraryferret:crafting_shaped/fake_iron_block",
	"libraryferret:crafting_shaped/fake_netherite_block",
	// Mekanism Tools
	"mekanismtools:wood_paxel",
	"mekanism:storage_blocks/salt",
	// Minecraft
	"minecraft:arrow",
	"minecraft:beacon",
	"minecraft:cake",
	"minecraft:creeper_banner_pattern",
	"minecraft:daylight_detector",
	"minecraft:end_crystal",
	"minecraft:flint_and_steel",
	"minecraft:flower_banner_pattern",
	"minecraft:lead",
	"minecraft:magma_cream",
	"minecraft:mojang_banner_pattern",
	"minecraft:piston",
	"minecraft:skull_banner_pattern",
	"minecraft:spectral_arrow",
	"minecraft:sticky_piston",
	"minecraft:stonecutter",
	"minecraft:wooden_axe",
	"minecraft:wooden_hoe",
	"minecraft:wooden_pickaxe",
	"minecraft:wooden_shovel",
	"minecraft:wooden_sword",
	// Miners Delight
	"miners_delight:copper_pot",
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
	"miniutilities:quantum_quarry",
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
	"mob_grinding_utils:recipe_saw",
	// Nature Aura
	"naturesaura:ancient_planks",
	"naturesaura:ancient_planks_from_bark",
	// Pneumatic Craft
	"pneumaticcraft:compressed_iron_gear",
	"pneumaticcraft:raw_salmon_tempura",
	"pneumaticcraft:sourdough",
	// Rechiseled
	"rechiseled:chisel",
	// Simply Tea
	"simplytea:cup_tea_chai",
	"simplytea:teabag_chorus",
	"simplytea:teabag_green",
	// Sophisticated Backpacks
	"sophisticatedbackpacks:tool_swapper_upgrade",
	// Supplementaries
	"supplementaries:bomb",
	"supplementaries:soap/hammock",
	"supplementaries:soap/carpet",
	"supplementaries:soap/sleeping_bag",
	"supplementaries:spiky_bomb_2",
	// Quark
	"quark:automation/crafting/obsidian_pressure_plate",
	"quark:building/crafting/compressed/bamboo_block",
	"quark:building/crafting/compressed/bamboo_block_uncompress",
	"quark:building/crafting/compressed/chorus_fruit_block",
	"quark:building/crafting/iron_ladder",
	// Refined Storage
	"refinedstorage:1k_storage_part",
	"refinedstorage:64k_fluid_storage_part",
	"refinedstorage:controller",
	"refinedstorage:raw_advanced_processor",
	"refinedstorage:raw_basic_processor",
	"refinedstorage:raw_improved_processor",
	// Reborn Storage
	"rebornstorage:multiblock_frame",
	"rebornstorage:multiblock_heat",
	"rebornstorage:parts/raw_super_advanced_processor",
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
	// Sulfur Potassium
	"sulfurpotassiummod:gunpowder",
	// The Salt
	"salt:gunpowder",
	"salt:salt_packing",
	// The Undergarden
	"undergarden:shard_torch",
	"undergarden:undergarden_scaffolding",
	// Thermal Series
	"thermal:cheese_wedge_from_wheel",
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
	"thermal:storage/sawdust_block",
	"thermal:storage/tea_block",
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
	"tconstruct:common/gold_bars",
	"tconstruct:gadgets/cake/blood",
	"tconstruct:gadgets/cake/earth",
	"tconstruct:gadgets/cake/ender",
	"tconstruct:gadgets/cake/magma",
	"tconstruct:gadgets/cake/sky",
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
	// Twilight Delight
	"twilightdelight:torchberry_cookie",
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
	// Unusualend
	"unusualend:phantom_arrows",
	// Vinery
	"vinery:cooking_pot",
	"vinery:fermentation_barrel",
	"vinery:grapevine_pot",
	"vinery:wood_fired_oven"
];
for remove_recipe_by_name in removeRecipeByName {
	craftingTable.removeByName(remove_recipe_by_name);
}

for remove_elevatorid_dye_item_recipe_by_name in Constant.packColours {
	craftingTable.removeByName("elevatorid:elevator_" + remove_elevatorid_dye_item_recipe_by_name);
}

if (packModeSetting.packModeSettingHoppers() == true) {
	var removeHoppersRecipeByName = [
		"brickhopper:brick_hopper",
		"cyclic:hopper_fluid",
		"minecraft:hopper",
		"speedyhoppers:speedyhopper_mk1",
		"speedyhoppers:speedyhopper_mk2",
		"speedyhoppers:speedyhopper_mk3"
	];
	for remove_hoppers_recipe_by_name in removeHoppersRecipeByName {
		craftingTable.removeByName(remove_hoppers_recipe_by_name);
	}
}

if (packModeSetting.packModeSettingLogs() == true) {
	var removeLogsRecipeByName = [
		"botania:dreamwood_planks",
		"botania:livingwood_planks",
		"ecologics:azalea_planks",
		"ecologics:flowering_azalea_planks",
		"ecologics:coconut_planks",
		"ecologics:walnut_planks",
		"enlightened_end:cerulean_planks",
		"enlightened_end:indigo_planks",
		"integrateddynamics:crafting/menril_planks",
		"myrtrees:rubberwood_planks",
		"quark:world/crafting/woodsets/azalea/planks",
		"quark:world/crafting/woodsets/blossom/planks",
		"tconstruct:world/wood/bloodshroom/planks",
		"tconstruct:world/wood/greenheart/planks",
		"tconstruct:world/wood/skyroot/planks",
		"twilightforest:wood/canopy_planks",
		"twilightforest:wood/darkwood_planks",
		"twilightforest:wood/mangrove_planks",
		"twilightforest:wood/mining_planks",
		"twilightforest:wood/sorting_planks",
		"twilightforest:wood/time_planks",
		"twilightforest:wood/transformation_planks",
		"twilightforest:wood/twilight_oak_planks",
		"undergarden:grongle_planks",
		"undergarden:smogstem_planks",
		"undergarden:wigglewood_planks",
		"vinery:cherry_planks"
	];
	for remove_logs_recipe_by_name in removeLogsRecipeByName {
		craftingTable.removeByName(remove_logs_recipe_by_name);
	}

	for remove_logs_base_wood_recipe_by_name in Constant.packBaseWoods {
		craftingTable.removeByName("minecraft:" + remove_logs_base_wood_recipe_by_name + "_planks");
	}
} else {
	var removeLogRecipeByName = [
		"twilightforest:wood/canopy_planks",
		"twilightforest:wood/darkwood_planks",
		"twilightforest:wood/mangrove_planks",
		"twilightforest:wood/mining_planks",
		"twilightforest:wood/sorting_planks",
		"twilightforest:wood/time_planks",
		"twilightforest:wood/transformation_planks",
		"twilightforest:wood/twilight_oak_planks"
	];
	for remove_log_recipe_by_name in removeLogRecipeByName {
		craftingTable.removeByName(remove_log_recipe_by_name);
	}
}

if (packModeSetting.packModeSettingShears() == true) {
	var removeShearsRecipeByName = [
		"ceramicshears:ceramic_shears",
		"cyclic:shears_flint",
		"cyclic:shearing",
		"mekanism:module_shearing_unit",
		"minecraft:shears"
	];
	for remove_shears_recipe_by_name in removeShearsRecipeByName {
		craftingTable.removeByName(remove_shears_recipe_by_name);
	}

	for remove_woodenshears_recipe_by_name in Constant.packModWoods {
		craftingTable.removeByName("woodenshears:wshears." + remove_woodenshears_recipe_by_name);
	}
}

if (packModeSetting.packModeSettingTomsStorage() == true) {
	var removeTomsStorageRecipeByName = [
		"toms_storage:inventory_cable",
		"toms_storage:inventory_cable_connector",
		"toms_storage:inventory_cable_connector_filtered",
		"toms_storage:inventory_cable_connector_framed",
		"toms_storage:inventory_cable_framed",
		"toms_storage:inventory_connector",
		"toms_storage:inventory_hopper_basic",
		"toms_storage:inventory_proxy",
		"toms_storage:level_emitter",
		"toms_storage:storage_terminal",
		"toms_storage:crafting_terminal",
		"toms_storage:trim",
		"toms_storage:wireless_terminal"
	];
	for remove_toms_storage_recipe_by_name in removeTomsStorageRecipeByName {
		craftingTable.removeByName(remove_toms_storage_recipe_by_name);
	}
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
	// Aquaculture
	"aquaculture:neptunium_ingot_from_blasting",
	// Beyond Earth
	"beyond_earth:steel_ingot_blasting",
	// Croptopia
	"croptopia:blasting_salt",
	// Exline Copper Equipment
	"exlinecopperequipment:copper_boots_blast",
	"exlinecopperequipment:copper_chest_blast",
	"exlinecopperequipment:copper_helm_blast",
	"exlinecopperequipment:copper_horse_armor_blast",
	"exlinecopperequipment:copper_leggs_blast",
	// Integrated Dynamics
	"integrateddynamics:blasting/menril_log_coal",
	"integrateddynamics:blasting/menril_log_filled_coal",
	// Library Ferret
	"libraryferret:blasting/diamond_coins_jtl",
	"libraryferret:blasting/emerald_coins_jtl",
	"libraryferret:blasting/gold_coins_jtl",
	"libraryferret:blasting/iron_coins_jtl",
	"libraryferret:blasting/netherite_coins_jtl",
	// Undergarden
	"undergarden:blast_froststeel_item",
	"undergarden:blast_utherium_item"
];
for remove_recipe_by_name_blasting_furnace in removeRecipeByNameBlastingFurnace {
	<recipetype:minecraft:blasting>.removeByName(remove_recipe_by_name_blasting_furnace);
}

// Campfire
var removeRecipeByNameCampfire = [
	// Alexs Delight
	"alexsdelight:smelting/bison_campfire",
	"alexsdelight:smelting/bison_patty_campfire",
	"alexsdelight:smelting/bunfungus_campfire",
	"alexsdelight:smelting/bunfungus_drumstick_campfire",
	"alexsdelight:smelting/catfish_slice_campfire",
	"alexsdelight:smelting/centipede_leg_campfire",
	"alexsdelight:smelting/kangaroo_shank_campfire",
	"alexsdelight:smelting/singular_cooked_moose_rib_campfire",
	// Apotheosis
	"apotheosis:torch",
	// Aquaculture
	"aquaculture:cooked_frog_legs_from_campire",
	// Croptopia
	"croptopia:campfire_baked_beans",
	"croptopia:campfire_baked_sweet_potato",
	"croptopia:campfire_baked_yam",
	"croptopia:campfire_caramel",
	"croptopia:campfire_molasses",
	"croptopia:campfire_popcorn",
	"croptopia:campfire_raisins",
	"croptopia:campfire_toast",
	"croptopia:roasted_nuts_from_campfire",
	// Simply Tea
	"simplytea:teapot_frothed_campfire",
	"simplytea:teapot_hot_campfire",
	// Thirst Was Taken
	"thirst:terracotta_bowl_from_campfire_cooking",
	// Twilight Delight
	"twilightdelight:cooked_insect_campfire",
	"twilightdelight:cooked_meef_slice_campfire",
	"twilightdelight:cooked_venison_rib_campfire"
];
for remove_recipe_by_name_campfire in removeRecipeByNameCampfire {
	<recipetype:minecraft:campfire_cooking>.removeByName(remove_recipe_by_name_campfire);
}

// Furnace
var removeRecipeByNameFurnace = [
	// Cyclic
	"cyclic:smelting/fireball",
	// Croptopia
	"croptopia:cooked_tuna_from_tuna",
	"croptopia:salt_from_water_bottle",
	// Exline Copper Equipment
	"exlinecopperequipment:copper_boots_smelt",
	"exlinecopperequipment:copper_chest_smelt",
	"exlinecopperequipment:copper_helm_smelt",
	"exlinecopperequipment:copper_horse_armor_smelt",
	"exlinecopperequipment:copper_leggs_smelt",
	// Integrated Dynamics
	"integrateddynamics:smelting/menril_log_coal",
	"integrateddynamics:smelting/menril_log_filled_coal",
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
	"thermal:smelting/redstone_from_spores_smelting",
	// Undergarden
	"undergarden:smelt_froststeel_item",
	"undergarden:smelt_utherium_item"
];
for remove_recipe_by_name_furnace in removeRecipeByNameFurnace {
	<recipetype:minecraft:smelting>.removeByName(remove_recipe_by_name_furnace);
}

// Smithing Table
var removeRecipeByNameSmithingTable = [
	// Leathered Boots
	"leathered_boots:smithing/leathered_chainmail_boots",
	"leathered_boots:smithing/leathered_iron_boots",
	"leathered_boots:smithing/leathered_gold_boots",
	"leathered_boots:smithing/leathered_diamond_boots",
	"leathered_boots:smithing/leathered_netherite_boots",
	"leathered_boots:smithing/leathered_netherite_boots_from_diamond",
	"minecraft:netherite_gear_smithing"
];
for remove_recipe_by_name_smithing_table in removeRecipeByNameSmithingTable {
	<recipetype:minecraft:smithing>.removeByName(remove_recipe_by_name_smithing_table);
}

// Smoker
var removeRecipeByNameSmoker = [
	// Croptopia
	"croptopia:cooked_tuna_from_smoking_tuna",
	"croptopia:salt_from_smoking_water_bottle"
];
for remove_recipe_by_name_smoker in removeRecipeByNameSmoker {
	<recipetype:minecraft:smoking>.removeByName(remove_recipe_by_name_smoker);
}

// Stone Cutter
var removeRecipeByNameStoneCutter = [
	// Twilight Forest
	"twilightforest:stonecutting/dark_log/towerwood",
	"twilightforest:stonecutting/dark_wood/towerwood"
];
for remove_recipe_by_name_stone_cutter in removeRecipeByNameStoneCutter {
	<recipetype:minecraft:stonecutting>.removeByName(remove_recipe_by_name_stone_cutter);
}

var removeRecipeByRegexStoneCutter = [
	// Macaw's Fences
	"mcwfences:.*railing_.*",
	"mcwfences:railing_.*",
	// Twilight Forest
	"twilightforest:.*hollow_.*"
];
for remove_recipe_by_regex_stone_cutter in removeRecipeByRegexStoneCutter {
	<recipetype:minecraft:stonecutting>.removeByRegex(remove_recipe_by_regex_stone_cutter);
}

// Alchemistry
<recipetype:alchemistry:dissolver>.removeByName("alchemistry:dissolver/storage_blocks/bamboo");

// Applied Energistics
<recipetype:ae2:inscriber>.removeByName("lazierae2:compat/ae2/inscriber/universal_press");

// Apotheosis
<recipetype:apotheosis:fletching>.removeByName("apotheosis:fletching/obsidian_arrow");

// Beyond Earth: Giselle Addon
<recipetype:beyond_earth_giselle_addon:extruding>.removeByName("beyond_earth_giselle_addon:extruding/iron_stick");
<recipetype:beyond_earth_giselle_addon:rolling>.removeByName("beyond_earth_giselle_addon:rolling/iron_plate");

// Botania
var removeManaInfusionRecipeByName = [
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
for remove_mana_infusion_recipe_by_name in removeManaInfusionRecipeByName {
	<recipetype:botania:mana_infusion>.removeByName(remove_mana_infusion_recipe_by_name);
}

var removePureDaisyRecipeByName = [
	"botania:pure_daisy/livingrock",
	"botania:pure_daisy/livingwood"
];
for remove_pure_daisy_recipe_by_name in removePureDaisyRecipeByName {
	<recipetype:botania:pure_daisy>.removeByName(remove_pure_daisy_recipe_by_name);
}

// Botany Pots
<recipetype:botanypots:crop>.removeByName("botanypots:minecraft/crop/cactus");

// Brewin And Chewin
var removeFermentingRecipeByName = [
	"brewinandchewin:fermenting/beer",
	"brewinandchewin:fermenting/bloody_mary",
	"brewinandchewin:fermenting/egg_grog",
	"brewinandchewin:fermenting/mead",
	"brewinandchewin:fermenting/rice_wine",
	"brewinandchewin:fermenting/saccharine_rum",
	"brewinandchewin:fermenting/steel_toe_stout",
	"brewinandchewin:fermenting/strongroot_ale",
	"brewinandchewin:fermenting/vodka",
	"brewinandchewin:kombucha"
];
for remove_fermenting_recipe_by_name in removeFermentingRecipeByName {
	<recipetype:brewinandchewin:fermenting>.removeByName(remove_fermenting_recipe_by_name);
}

// Create
<recipetype:create:crushing>.removeByName("create:crushing/nether_quartz_ore");
<recipetype:create:filling>.removeByName("create:filling/honeyed_apple");
<recipetype:create:filling>.removeByName("miners_delight:create/filling/fill_milk_cup");
<recipetype:create:milling>.removeByName("corn_delight:integration/create/milling/corn");

if (packModeSetting.packModeSettingPlates() == true) {
	<recipetype:create:pressing>.removeByName("create:pressing/brass_ingot");
	<recipetype:create:pressing>.removeByName("create:pressing/copper_ingot");
	<recipetype:create:pressing>.removeByName("create:pressing/gold_ingot");
	<recipetype:create:pressing>.removeByName("create:pressing/iron_ingot");
	<recipetype:create:pressing>.removeByName("createaddition:pressing/aluminum_ingot");
	<recipetype:create:pressing>.removeByName("createaddition:pressing/constantan_ingot");
	<recipetype:create:pressing>.removeByName("createaddition:pressing/electrum_ingot");
	<recipetype:create:pressing>.removeByName("createaddition:pressing/lead_ingot");
	<recipetype:create:pressing>.removeByName("createaddition:pressing/nickel_ingot");
	<recipetype:create:pressing>.removeByName("createaddition:pressing/silver_ingot");
	<recipetype:create:pressing>.removeByName("createaddition:pressing/steel_ingot");
	<recipetype:create:pressing>.removeByName("createaddition:pressing/uranium_ingot");
	<recipetype:create:pressing>.removeByName("createaddition:pressing/zinc_ingot");
}

// Cyclic
var removeCyclicCrusherRecipeByName = [
	"cyclic:crusher/chest",
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

<recipetype:cyclic:solidifier>.removeByName("cyclic:solidifier/solidifier_apple_enchanted");
<recipetype:cyclic:solidifier>.removeByName("cyclic:solidifier/solidifier_honeyhive");
<recipetype:cyclic:solidifier>.removeByName("cyclic:solidifier/wax_hive");

// Farmers Delight
var removeFarmersDelightCookingPotRecipeByName = [
	// Corn Delight
	"corn_delight:cooking/cornbread_stuffing",
	// Twilight Delight
	"twilightdelight:cooking/fried_insect",
	"twilightdelight:cooking/glacier_ice_tea",
	"twilightdelight:cooking/grilled_ghast"
];
for remove_farmers_delight_cooking_pot_recipe_by_name in removeFarmersDelightCookingPotRecipeByName {
	<recipetype:farmersdelight:cooking>.removeByName(remove_farmers_delight_cooking_pot_recipe_by_name);
}

var removeFarmersDelightCuttingBoardRecipeByName = [
	// Aquaculture Delight
	"aquaculturedelight:cutting/knife/fillet_four",
	"aquaculturedelight:cutting/knife/fillet_fourteen",
	"aquaculturedelight:cutting/knife/fillet_one",
	"aquaculturedelight:cutting/knife/fillet_six",
	"aquaculturedelight:cutting/knife/fillet_ten",
	"aquaculturedelight:cutting/knife/fillet_three",
	"aquaculturedelight:cutting/knife/fillet_twelve",
	"aquaculturedelight:cutting/knife/fillet_two"
];
for remove_farmers_delight_cutting_board_recipe_by_name in removeFarmersDelightCuttingBoardRecipeByName {
	<recipetype:farmersdelight:cutting>.removeByName(remove_farmers_delight_cutting_board_recipe_by_name);
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

var removeBottelingMachineRecipeByName = [
	// Enginners Delight
	"tmted:bottling/wheat_dough",
	"tmted:bottling/wodka",
	// Immersive Engineering
	"immersiveengineering:bottling/empty_shell"
];
for remove_bottling_machine_recipe_by_name in removeBottelingMachineRecipeByName {
	<recipetype:immersiveengineering:bottling_machine>.removeByName(remove_bottling_machine_recipe_by_name);
}

<recipetype:immersiveengineering:cloche>.removeByName("immersiveengineering:cloche/cactus");
<recipetype:immersiveengineering:crusher>.removeByName("tmted:crusher/wheat_flour_from_bale");
<recipetype:immersiveengineering:crusher>.removeByName("tmted:crusher/wheat_flour");

if (packModeSetting.packModeSettingPlates() == true) {
	var removePressPlateRecipeByNameImmersiveEngineering = [
		// Beyond Earth Giselle Addon
		"beyond_earth_giselle_addon:compat/immersiveengineering/metalpress/plate_desh",
		// Immersive Engineering
		"immersiveengineering:metalpress/plate_aluminum",
		"immersiveengineering:metalpress/plate_brass",
		"immersiveengineering:metalpress/plate_bronze",
		"immersiveengineering:metalpress/plate_copper",
		"immersiveengineering:metalpress/plate_electrum",
		"immersiveengineering:metalpress/plate_gold",
		"immersiveengineering:metalpress/plate_invar",
		"immersiveengineering:metalpress/plate_iron",
		"immersiveengineering:metalpress/plate_lead",
		"immersiveengineering:metalpress/plate_nickel",
		"immersiveengineering:metalpress/plate_rose_gold",
		"immersiveengineering:metalpress/plate_silver",
		"immersiveengineering:metalpress/plate_steel",
		"immersiveengineering:metalpress/plate_tin",
		"immersiveengineering:metalpress/plate_uranium",
		"immersiveengineering:metalpress/plate_zinc"
	];
	for remove_press_plate_recipe_by_name_immersive_engineering in removePressPlateRecipeByNameImmersiveEngineering {
		<recipetype:immersiveengineering:metal_press>.removeByName(remove_press_plate_recipe_by_name_immersive_engineering);
	}
}

<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/bullet_casing");
<recipetype:immersiveengineering:squeezer>.removeByName("tmted:squeezer/tomato");

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

// Mekanism
<recipetype:mekanism:crystallizing>.removeByName("mekanism:crystallizing/salt");
<recipetype:mekanism:crushing>.removeByName("mekanism:processing/quartz/to_dust");
<recipetype:mekanism:enriching>.removeByName("mekanism:enriching/salt");
<recipetype:mekanism:sawing>.removeByName("mekanism:sawing/bookshelf");

// Pneumatic Craft
<recipetype:pneumaticcraft:amadron>.removeAll();
<recipetype:pneumaticcraft:explosion_crafting>.removeByName("pneumaticcraft:explosion_crafting/wheat_flour");
<recipetype:pneumaticcraft:pressure_chamber>.removeByName("pneumaticcraft:pressure_chamber/wheat_flour");

// Twilight Forest
<recipetype:twilightforest:uncrafting>.removeAll();

// Thermal Series
var removeMultiservoPressRecipeByName = [
	"thermal:compat/quark/press_quark_chorus_fruit_packing",
	"thermal:compat/quark/press_quark_chorus_fruit_unpacking",
	"thermal:machines/press/packing3x3/press_sawdust_packing",
	"thermal:compat/mekanism/press_mek_salt_packing",
	"thermal:compat/mekanism/press_mek_salt_unpacking",
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

if (packModeSetting.packModeSettingPlates() == true) {
	var removeMultiservoPressPlateRecipeByName = [
		"beyond_earth_giselle_addon:compat/thermal/press/press_desh_ingot_to_plate",
		"thermal:compat/immersiveengineering/press_ie_aluminum_ingot_to_plate",
		"thermal:compat/immersiveengineering/press_ie_steel_ingot_to_plate",
		"thermal:compat/immersiveengineering/press_ie_uranium_ingot_to_plate",
		"thermal:machines/press/press_bronze_ingot_to_plate",
		"thermal:machines/press/press_constantan_ingot_to_plate",
		"thermal:machines/press/press_copper_ingot_to_plate",
		"thermal:machines/press/press_electrum_ingot_to_plate",
		"thermal:machines/press/press_enderium_ingot_to_plate",
		"thermal:machines/press/press_gold_ingot_to_plate",
		"thermal:machines/press/press_invar_ingot_to_plate",
		"thermal:machines/press/press_iron_ingot_to_plate",
		"thermal:machines/press/press_lead_ingot_to_plate",
		"thermal:machines/press/press_lumium_ingot_to_plate",
		"thermal:machines/press/press_netherite_ingot_to_plate",
		"thermal:machines/press/press_nickel_ingot_to_plate",
		"thermal:machines/press/press_rose_gold_ingot_to_plate",
		"thermal:machines/press/press_signalum_ingot_to_plate",
		"thermal:machines/press/press_silver_ingot_to_plate",
		"thermal:machines/press/press_tin_ingot_to_plate",
		"thermal_extra:machine/press/dragonsteel_plate",
		"thermal_extra:machine/press/shellite_plate",
		"thermal_extra:machine/press/soul_infused_plate",
		"thermal_extra:machine/press/twinite_plate"
	];
	for remove_multiservo_press_plate_recipe_by_name in removeMultiservoPressPlateRecipeByName {
		<recipetype:thermal:press>.removeByName(remove_multiservo_press_plate_recipe_by_name);
	}
}
<recipetype:thermal:bottler>.removeByName("thermal:compat/create/bottler_create_honeyed_apple");

<recipetype:thermal:insolator>.removeByName("thermal:compat/quark/insolator_quark_azalea_bush");
<recipetype:thermal:insolator>.removeByName("thermal:compat/quark/insolator_quark_flowering_azalea_bush");
<recipetype:thermal:insolator>.removeByName("thermal:machines/insolator/insolator_cactus");

// Tinkers Construct
var removeCastingTableRecipeByName = [
	"tconstruct:smeltery/casting/metal/gold/bars"
];
for remove_casting_table_recipe_by_name in removeCastingTableRecipeByName {
	<recipetype:tconstruct:casting_table>.removeByName(remove_casting_table_recipe_by_name);
}

if (packModeSetting.packModeSettingPlates() == true) {
	var removeCastingTablePlateRecipeByName = [
		"beyond_earth:smeltery/casting/metal/desh/plate_gold_cast",
		"beyond_earth:smeltery/casting/metal/desh/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/aluminum/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/aluminum/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/brass/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/brass/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/bronze/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/bronze/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/constantan/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/constantan/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/copper/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/copper/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/electrum/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/electrum/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/enderium/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/enderium/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/gold/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/gold/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/invar/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/invar/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/iron/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/iron/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/lead/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/lead/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/lumium/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/lumium/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/netherite/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/netherite/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/nickel/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/nickel/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/rose_gold/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/rose_gold/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/signalum/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/signalum/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/silver/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/silver/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/steel/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/steel/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/tin/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/tin/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/uranium/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/uranium/plate_sand_cast",
		"tconstruct:smeltery/casting/metal/zinc/plate_gold_cast",
		"tconstruct:smeltery/casting/metal/zinc/plate_sand_cast",
		"thermal_extra:compat/tconstruct/casting/dragonsteel/plate_gold_cast",
		"thermal_extra:compat/tconstruct/casting/dragonsteel/plate_sand_cast",
		"thermal_extra:compat/tconstruct/casting/soul_infused/plate_gold_cast",
		"thermal_extra:compat/tconstruct/casting/soul_infused/plate_sand_cast"
	];
	for remove_casting_table_plate_recipe_by_name in removeCastingTablePlateRecipeByName {
		<recipetype:tconstruct:casting_table>.removeByName(remove_casting_table_plate_recipe_by_name);
	}
}

var removeMoldingTableRecipeByName = [
	// Sand Cast
	"tconstruct:smeltery/casts/sand_casts/coins",
	"tconstruct:smeltery/casts/red_sand_casts/coins",
	"tconstruct:smeltery/casts/sand_casts/gears",
	"tconstruct:smeltery/casts/red_sand_casts/gears",
	"tconstruct:smeltery/casts/sand_casts/repair_kit",
	"tconstruct:smeltery/casts/red_sand_casts/repair_kit",
	"tconstruct:smeltery/casts/sand_casts/round_plate",
	"tconstruct:smeltery/casts/red_sand_casts/round_plate"
];
for remove_molding_table_recipe_by_name in removeMoldingTableRecipeByName {
	<recipetype:tconstruct:molding_table>.removeByName(remove_molding_table_recipe_by_name);
}

var removeRecipeByRegexCastingTable = [
	"tconstruct:.*coin.*",
	"tconstruct:.*gear.*",
	"tconstruct:.*repair_kit.*",
	"tconstruct:.*round_plate.*",
	"thermal_extra:.*coin.*",
	"thermal_extra:.*gear.*"
];
for remove_recipe_by_regex_casting_table in removeRecipeByRegexCastingTable {
	<recipetype:tconstruct:casting_table>.removeByRegex(remove_recipe_by_regex_casting_table);
}

var removeRecipeByRegexMelting = [
	"tconstruct:.*coins.*",
	"tcintegrations:tools.*",
	"tconstruct:tools.*",
	"thermal_extra:.*coin.*"
];
for remove_recipe_by_regex_melting in removeRecipeByRegexMelting {
	<recipetype:tconstruct:melting>.removeByRegex(remove_recipe_by_regex_melting);
}

var removeRecipeByRegexPartBuilder = [
	"tconstruct:.*coins.*",
	"tconstruct:.*repair_kit.*",
	"tconstruct:.*round_plate.*"
];
for remove_recipe_by_regex_part_builder in removeRecipeByRegexPartBuilder {
	<recipetype:tconstruct:part_builder>.removeByRegex(remove_recipe_by_regex_part_builder);
}

<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/quartz/gem_1");
//<recipetype:tconstruct:modifier_worktable>.removeAll();

// Vinery
<recipetype:vinery:pot_cooking>.removeAll();
<recipetype:vinery:wine_fermentation>.removeAll();
<recipetype:vinery:wood_fired_oven_cooking>.removeAll();

Globals.endScript("recipe_removed");