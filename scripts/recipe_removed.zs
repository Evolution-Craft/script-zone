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
 */

#priority 1000

println("Start script remove_recipe.");
println("Script Priority 1000.");

import crafttweaker.api.item.Ingredient;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.recipe.CampFireRecipeManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;
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
	// Baubley Heart Canisters
	"bhc:god_apple",
	// Beyond Earth
	"beyond_earth:desh_plate",
	"beyond_earth:iron_plate",
	"beyond_earth:iron_stick",
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
	"cyclic:conveyor",
	"cyclic:copper_ingot",
	"cyclic:crafting_bag",
	"cyclic:crafting_stick",
	"cyclic:crafting/dispenser_alt",
	"cyclic:crafting/nether_wart_reverse",
	"cyclic:crafting/quartz",
	"cyclic:crafting/repeater",
	"cyclic:diamond_carrot_health",
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
	// Enlightend
	"enlightened_end:cerulean_planks",
	// Enginners Delight
	"tmted:slime_ball",
	// Extended Crafting
	"extendedcrafting:handheld_table",
	// Hostile Neural Networks
	"hostilenetworks:living_matter/extraterrestrial/nether_star",
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
	"immersiveengineering:crafting/gunpart_barrel",
	"immersiveengineering:crafting/gunpart_drum",
	"immersiveengineering:crafting/gunpart_hammer",
	"immersiveengineering:crafting/paper_from_sawdust",
	"immersiveengineering:crafting/powerpack",
	"immersiveengineering:crafting/railgun",
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
	// Mekanism Tools
	"mekanismtools:wood_paxel",
	// Minecraft
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
	"minecraft:sticky_piston",
	"minecraft:wooden_axe",
	"minecraft:wooden_hoe",
	"minecraft:wooden_pickaxe",
	"minecraft:wooden_shovel",
	"minecraft:wooden_sword",
	// Mini Utilities
	"miniutilities:iron_drum",
	"miniutilities:netherite_reinforced_drum",
	"miniutilities:reinforced_large_drum",
	"miniutilities:stone_drum",
	"miniutilities:unstable_drum",
	"miniutilities:wooden_spikes",
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
	"tconstruct:tables/modifier_worktable",
	"tconstruct:tools/building/flint_and_brick",
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
	// Twilight Forest
	"twilightforest:iron_ladder",
	// Vinery
	"vinery:cooking_pot",
	"vinery:fermentation_barrel",
	"vinery:grapevine_pot",
	"vinery:wood_fired_oven"
];
for remove_recipe_by_name in removeRecipeByName{
	craftingTable.removeByName(remove_recipe_by_name);
}
var removeRecipeByModid = [
	// Pane In The Glass
	"pitg",
	// The One Probe
	"theoneprobe"
];
for remove_recipe_by_modid in removeRecipeByModid{
	craftingTable.removeByModid(remove_recipe_by_modid);
}

// Blasting Furnace
var removeRecipeByNameBlastingFurnace = [
	// Beyond Earth
	"beyond_earth:steel_ingot_blasting",
	// Croptopia
	"croptopia:blasting_salt"
];
for remove_recipe_by_name_blasting_furnace in removeRecipeByNameBlastingFurnace{
	blastFurnace.removeByName(remove_recipe_by_name_blasting_furnace);
}

// Campfire
campfire.removeByName("apotheosis:torch");

// Furnace
var removeRecipeByNameFurnace = [
	"cyclic:smelting/fireball",
	// Croptopia
	"croptopia:salt_from_water_bottle",
	// Refinde Storage
	"refinedstorage:silicon",
	// Thermal Series
	"thermal:smelting/glowstone_dust_from_spores_smelting",
	"thermal:smelting/gunpowder_from_spores_smelting",
	"thermal:smelting/redstone_from_spores_smelting"
];
for remove_recipe_by_name_furnace in removeRecipeByNameFurnace{
	furnace.removeByName(remove_recipe_by_name_furnace);
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

// Botania
<recipetype:botania:mana_infusion>.removeByName("botania:mana_infusion/cactus_to_slime");

// Create
<recipetype:create:filling>.removeByName("create:filling/honeyed_apple");

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
for remove_blueprint_recipe_by_name in removeBlueprintRecipeByName{
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
for remove_industrial_foregoing_recipe_by_name in removeRecipeByNameIndustrialForegoing{
	<recipetype:industrialforegoing:dissolution_chamber>.removeByName(remove_industrial_foregoing_recipe_by_name);
}

// Lazier
<recipetype:lazierae2:etcher>.removeByName("lazierae2:etcher/universal_press");

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
for remove_multiservo_press_recipe_by_name in removeMultiservoPressRecipeByName{
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
for remove_casting_table_recipe_by_name in removeCastingTableRecipeByName{
	<recipetype:tconstruct:casting_table>.removeByName(remove_casting_table_recipe_by_name);
}
var removeMoldingTableRecipeByName = [
	// Sand Cast
	"tconstruct:smeltery/casts/sand_casts/coins",
	"tconstruct:smeltery/casts/red_sand_casts/coins",
	"tconstruct:smeltery/casts/sand_casts/gears",
	"tconstruct:smeltery/casts/red_sand_casts/gears"
];
for remove_molding_table_recipe_by_name in removeMoldingTableRecipeByName{
	<recipetype:tconstruct:molding_table>.removeByName(remove_molding_table_recipe_by_name);
}
<recipetype:tconstruct:modifier_worktable>.removeAll();

// Vinery
//<recipetype:vinery:pot_cooking>.removeAll();
//<recipetype:vinery:wine_fermentation>.removeAll();
//<recipetype:vinery:wood_fired_oven_cooking>.removeAll();

println("End script remove_recipe.");

//craftingTable.remove(<>);
//craftingTable.removeRecipe(<>);
//craftingTable.removeByName("");
//craftingTable.removeByModid("");