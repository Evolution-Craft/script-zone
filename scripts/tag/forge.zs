/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Missing Crops/Tea.
 * v0.2 : Fix Simply Tea.
 * v0.3 : Add Corundum Tag.
 * v0.4 : Add Missing Sapling and Log.
 * v0.5 : Move Salt Tag on this Script.
 * v0.6 : Add Missing Tags.
 * v0.7 : Remove Partinal temorary Fix.
 * v0.8 : Add Armors Tags.
 * v0.9 : Add Custom Rods.
 */

#priority 997

Globals.startScript("tag/forge");
Globals.priorityScript("997");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Armor
var addingArmorCopperForge = [
	"exlinecopperequipment:copper_boots",
	"exlinecopperequipment:copper_chestplate",
	"exlinecopperequipment:copper_helmet",
	"exlinecopperequipment:copper_leggings"
];
for tag_armor_copper_forge in addingArmorCopperForge{
	<tag:items:forge:armor>.add(<item:${tag_armor_copper_forge}>);
	<tag:items:forge:armor/copper>.add(<item:${tag_armor_copper_forge}>);
}

var addingArmorSilverForge = [
	"galosphere:sterling_boots",
	"galosphere:sterling_chestplate",
	"galosphere:sterling_helmet",
	"galosphere:sterling_leggings"
];
for tag_armor_silver_forge in addingArmorSilverForge{
	<tag:items:forge:armor>.add(<item:${tag_armor_silver_forge}>);
	<tag:items:forge:armor/silver>.add(<item:${tag_armor_silver_forge}>);
}

var addingArmorWoodForge = [
	"woodarmor:oak",
	"woodarmor:birch",
	"woodarmor:jungle",
	"woodarmor:acacia",
	"woodarmor:dark_oak",
	"woodarmor:spruce",
	"woodarmor:warped",
	"woodarmor:crimson"
];
for tag_armor_wood_forge in addingArmorWoodForge {
	<tag:items:forge:armor>.add(<item:${tag_armor_wood_forge}_helmet>);
	<tag:items:forge:armor>.add(<item:${tag_armor_wood_forge}_chestplate>);
	<tag:items:forge:armor>.add(<item:${tag_armor_wood_forge}_leggings>);
	<tag:items:forge:armor>.add(<item:${tag_armor_wood_forge}_boots>);
	if (tag_armor_wood_forge == "oak") {
		<tag:items:forge:armor/oak>.add(<item:${tag_armor_wood_forge}_helmet>);
		<tag:items:forge:armor/oak>.add(<item:${tag_armor_wood_forge}_chestplate>);
		<tag:items:forge:armor/oak>.add(<item:${tag_armor_wood_forge}_leggings>);
		<tag:items:forge:armor/oak>.add(<item:${tag_armor_wood_forge}_boots>);
	} else if (tag_armor_wood_forge == "birch") {
		<tag:items:forge:armor/birch>.add(<item:${tag_armor_wood_forge}_helmet>);
		<tag:items:forge:armor/birch>.add(<item:${tag_armor_wood_forge}_chestplate>);
		<tag:items:forge:armor/birch>.add(<item:${tag_armor_wood_forge}_leggings>);
		<tag:items:forge:armor/birch>.add(<item:${tag_armor_wood_forge}_boots>);
	} else if (tag_armor_wood_forge == "jungle") {
		<tag:items:forge:armor/jungle>.add(<item:${tag_armor_wood_forge}_helmet>);
		<tag:items:forge:armor/jungle>.add(<item:${tag_armor_wood_forge}_chestplate>);
		<tag:items:forge:armor/jungle>.add(<item:${tag_armor_wood_forge}_leggings>);
		<tag:items:forge:armor/jungle>.add(<item:${tag_armor_wood_forge}_boots>);
	} else if (tag_armor_wood_forge == "acacia") {
		<tag:items:forge:armor/acacia>.add(<item:${tag_armor_wood_forge}_helmet>);
		<tag:items:forge:armor/acacia>.add(<item:${tag_armor_wood_forge}_chestplate>);
		<tag:items:forge:armor/acacia>.add(<item:${tag_armor_wood_forge}_leggings>);
		<tag:items:forge:armor/acacia>.add(<item:${tag_armor_wood_forge}_boots>);
	} else if (tag_armor_wood_forge == "dark_oak") {
		<tag:items:forge:armor/dark_oak>.add(<item:${tag_armor_wood_forge}_helmet>);
		<tag:items:forge:armor/dark_oak>.add(<item:${tag_armor_wood_forge}_chestplate>);
		<tag:items:forge:armor/dark_oak>.add(<item:${tag_armor_wood_forge}_leggings>);
		<tag:items:forge:armor/dark_oak>.add(<item:${tag_armor_wood_forge}_boots>);
	} else if (tag_armor_wood_forge == "spruce") {
		<tag:items:forge:armor/spruce>.add(<item:${tag_armor_wood_forge}_helmet>);
		<tag:items:forge:armor/spruce>.add(<item:${tag_armor_wood_forge}_chestplate>);
		<tag:items:forge:armor/spruce>.add(<item:${tag_armor_wood_forge}_leggings>);
		<tag:items:forge:armor/spruce>.add(<item:${tag_armor_wood_forge}_boots>);
	} else if (tag_armor_wood_forge == "warped") {
		<tag:items:forge:armor/warped>.add(<item:${tag_armor_wood_forge}_helmet>);
		<tag:items:forge:armor/warped>.add(<item:${tag_armor_wood_forge}_chestplate>);
		<tag:items:forge:armor/warped>.add(<item:${tag_armor_wood_forge}_leggings>);
		<tag:items:forge:armor/warped>.add(<item:${tag_armor_wood_forge}_boots>);
	} else {
		<tag:items:forge:armor/crimson>.add(<item:${tag_armor_wood_forge}_helmet>);
		<tag:items:forge:armor/crimson>.add(<item:${tag_armor_wood_forge}_chestplate>);
		<tag:items:forge:armor/crimson>.add(<item:${tag_armor_wood_forge}_leggings>);
		<tag:items:forge:armor/crimson>.add(<item:${tag_armor_wood_forge}_boots>);
	}
}

var addingArmorStoneForge = [
	"woodarmor:stone_boots",
	"woodarmor:stone_chestplate",
	"woodarmor:stone_helmet",
	"woodarmor:stone_leggings"
];
for tag_armor_stone_forge in addingArmorStoneForge{
	<tag:items:forge:armor>.add(<item:${tag_armor_stone_forge}>);
	<tag:items:forge:armor/stone>.add(<item:${tag_armor_stone_forge}>);
}

// Axes
var addingAxesForge = [
	"ae2:certus_quartz_axe",
	"ae2:fluix_axe",
	"ae2:nether_quartz_axe",
	"botania:elementium_axe",
	"botania:manasteel_axe",
	"cyclic:amethyst_axe",
	"cyclic:crystal_axe",
	"cyclic:emerald_axe",
	"cyclic:netherbrick_axe",
	"cyclic:sandstone_axe",
	"enlightened_end:adamantite_axe",
	"enlightened_end:starsteel_axe",
	"enlightened_end:tenebrium_axe",
	"exlinecopperequipment:copper_axe",
	"immersiveengineering:axe_steel",
	"mekanismtools:lapis_lazuli_axe",
	"mekanismtools:osmium_axe",
	"mekanismtools:refined_glowstone_axe",
	"mekanismtools:refined_obsidian_axe",
	"mekanismtools:steel_axe",
	"naturesaura:infused_iron_axe",
	"naturesaura:sky_axe",
	"twilightforest:diamond_minotaur_axe",
	"twilightforest:gold_minotaur_axe",
	"twilightforest:ironwood_axe",
	"twilightforest:knightmetal_axe",
	"twilightforest:steeleaf_axe",
	"undergarden:cloggrum_axe",
	"undergarden:cloggrum_battleaxe",
	"undergarden:forgotten_axe",
	"undergarden:forgotten_battleaxe",
	"undergarden:froststeel_axe",
	"undergarden:utherium_axe"
];
for tag_axes_forge in addingAxesForge{
	<tag:items:forge:axes>.add(<item:${tag_axes_forge}>);
}

// Berries
<tag:items:forge:berries>.add(<item:vinery:cherry>);

// Bread
var addingBreadForge = [
	"corn_delight:cornbread",
	"pneumaticcraft:sourdough_bread",
	"vinery:milk_bread",
	"vinery:crusty_bread"
];
for tag_bread_forge in addingBreadForge{
	<tag:items:forge:bread>.add(<item:${tag_bread_forge}>);
}

// Cheeses
var addingCheesesForge = [
	"beyond_earth:cheese",
	"thermal:cheese_wedge"
];
for tag_cheeses_forge in addingCheesesForge{
	<tag:items:forge:cheeses>.add(<item:${tag_cheeses_forge}>);
}

// Cherries
<tag:items:forge:cherries>.add(<item:vinery:cherry>);

// Cinnamon
<tag:items:forge:cinnamon>.add(<item:simplytea:tea_stick>);

// Crabs
<tag:items:forge:crabs>.add(<item:crabbersdelight:crab>);

// Crops
var addingCropsForge = [
	"vinery:jungle_grapes_red",
	"vinery:jungle_grapes_white",
	"vinery:red_grape",
	"vinery:savanna_grapes_red",
	"vinery:savanna_grapes_white",
	"vinery:taiga_grapes_red",
	"vinery:taiga_grapes_white",
	"vinery:white_grape"
];
for tag_crops_forge in addingCropsForge{
	<tag:items:forge:crops>.add(<item:${tag_crops_forge}>);
}

// Crops Grape
var addingCropsGrapeForge = [
	"vinery:jungle_grapes_red",
	"vinery:jungle_grapes_white",
	"vinery:red_grape",
	"vinery:savanna_grapes_red",
	"vinery:savanna_grapes_white",
	"vinery:taiga_grapes_red",
	"vinery:taiga_grapes_white",
	"vinery:white_grape"
];
for tag_crops_grape_forge in addingCropsGrapeForge{
	<tag:items:forge:crops/grape>.add(<item:${tag_crops_grape_forge}>);
}

// Crops Chorus Petal
var addingCropsChorusPetalForge = [
	"simplytea:chorus_petal",
	"unusualend:chorus_petal"
];
for tag_crops_chorus_petal_forge in addingCropsChorusPetalForge{
	<tag:items:forge:crops/chorus_petal>.add(<item:${tag_crops_chorus_petal_forge}>);
}

// Crops Tea
<tag:items:forge:crops/tea>.add(<item:croptopia:tea_leaves>);

// Corundum
var addingCorundumBlockForge = [
	"quark:red_corundum",
	"quark:waxed_red_corundum",
	"quark:orange_corundum",
	"quark:waxed_orange_corundum",
	"quark:green_corundum",
	"quark:waxed_green_corundum",
	"quark:yellow_corundum",
	"quark:waxed_yellow_corundum",
	"quark:violet_corundum",
	"quark:waxed_violet_corundum",
	"quark:blue_corundum",
	"quark:waxed_blue_corundum",
	"quark:indigo_corundum",
	"quark:waxed_indigo_corundum",
	"quark:black_corundum",
	"quark:waxed_black_corundum",
	"quark:white_corundum",
	"quark:waxed_white_corundum"
];
for tag_corundum_block_forge in addingCorundumBlockForge{
	<tag:items:forge:corundum/block>.add(<item:${tag_corundum_block_forge}>);
}
var addingCorundumClusterForge = [
	"quark:red_corundum_cluster",
	"quark:orange_corundum_cluster",
	"quark:green_corundum_cluster",
	"quark:yellow_corundum_cluster",
	"quark:violet_corundum_cluster",
	"quark:blue_corundum_cluster",
	"quark:indigo_corundum_cluster",
	"quark:black_corundum_cluster",
	"quark:white_corundum_cluster"
];
for tag_corundum_cluster_forge in addingCorundumClusterForge{
	<tag:items:forge:corundum/cluster>.add(<item:${tag_corundum_cluster_forge}>);
}

// Doughs
var addingDoughsForge = [
	"pneumaticcraft:sourdough",
	"vinery:dough"
];
for tag_doughs_forge in addingDoughsForge{
	<tag:items:forge:doughs>.add(<item:${tag_doughs_forge}>);
}

// Flour
var addingFlourForge = [
	"pneumaticcraft:wheat_flour",
	"tmted:wheat_flour"
];
for tag_flour_forge in addingFlourForge{
	<tag:items:forge:flour>.add(<item:${tag_flour_forge}>);
}

// Frog Legs
<tag:items:forge:frog_legs>.add(<item:aquaculture:frog_legs_raw>);

// Fruit
var addingFruitForge = [
	"ecologics:prickly_pear",
	"undergarden:blisterberry",
	"undergarden:droopvine_item",
	"vinery:cherry",
	"vinery:red_grape",
	"vinery:jungle_grapes_red",
	"vinery:jungle_grapes_white",
	"vinery:savanna_grapes_red",
	"vinery:savanna_grapes_white",
	"vinery:taiga_grapes_red",
	"vinery:taiga_grapes_white",
	"vinery:white_grape"
];
for tag_fruit_forge in addingFruitForge{
	<tag:items:forge:fruits>.add(<item:${tag_fruit_forge}>);
}

// Fruit Grape
var addingFruitGrapeForge = [
	"vinery:jungle_grapes_red",
	"vinery:jungle_grapes_white",
	"vinery:red_grape",
	"vinery:savanna_grapes_red",
	"vinery:savanna_grapes_white",
	"vinery:taiga_grapes_red",
	"vinery:taiga_grapes_white",
	"vinery:white_grape"
];
for tag_fruit_grape_forge in addingFruitGrapeForge{
	<tag:items:forge:fruits/grape>.add(<item:${tag_fruit_grape_forge}>);
	<tag:items:forge:grapes>.add(<item:${tag_fruit_grape_forge}>); // Temporary Fix
}

// Furnace
var addingFurnacesForge = [
	"minecraft:furnace",
	"quark:deepslate_furnace",
	"quark:blackstone_furnace"
];
for tag_furnaces_forge in addingFurnacesForge{
	<tag:items:forge:furnaces>.add(<item:${tag_furnaces_forge}>);
}

// Material
<tag:items:forge:raw_materials>.add(<item:galosphere:raw_silver>);
<tag:items:forge:raw_materials/silver>.add(<item:galosphere:raw_silver>);

// Nugget
<tag:items:forge:nuggets>.add(<item:exlinecopperequipment:copper_nugget>);
<tag:items:forge:nuggets/copper>.add(<item:exlinecopperequipment:copper_nugget>);

// Jams
var addingJamsForge = [
	"vinery:apple_jam",
	"vinery:cherry_jam",
	"vinery:sweetberry_jam",
	"vinery:grape_jam"
];
for tag_jams_forge in addingJamsForge{
	<tag:items:forge:jams>.add(<item:${tag_jams_forge}>);
}

// Ore
<tag:items:forge:ores>.add(<item:infernalexp:basalt_iron_ore>);
<tag:items:forge:ores/iron>.add(<item:infernalexp:basalt_iron_ore>);
<tag:items:forge:ores_in_ground/basalt>.add(<item:infernalexp:basalt_iron_ore>);

// Plates
var addingPlatesForge = [
	"contenttweaker:tconstruct/cobalt_sheet",
	"contenttweaker:tconstruct/hepatizon_sheet",
	"contenttweaker:tconstruct/manyullyn_sheet",
	"contenttweaker:tconstruct/pig_iron_sheet",
	"contenttweaker:tconstruct/queens_slime_sheet",
	"contenttweaker:tconstruct/slimesteel_sheet",
	"contenttweaker:thermal/diamond_plate",
	"contenttweaker:thermal/emerald_plate",
	"contenttweaker:thermal/lapis_plate",
	"contenttweaker:thermal/osmium_plate",
	"contenttweaker:thermal/quartz_plate",
	"electrodynamics:platehslasteel",
	"electrodynamics:platelithium",
	"electrodynamics:platestainlesssteel",
	"electrodynamics:platevanadiumsteel",
	"electrodynamics:platetitanium",
	"electrodynamics:platetitaniumcarbide",
	"thermal_extra:shellite_plate"
];
for tag_plates_forge in addingPlatesForge{
	<tag:items:forge:plates>.add(<item:${tag_plates_forge}>);
}
<tag:items:forge:plates/cobalt_sheet>.add(<item:contenttweaker:tconstruct/cobalt_sheet>);
<tag:items:forge:plates/hepatizon_sheet>.add(<item:contenttweaker:tconstruct/hepatizon_sheet>);
<tag:items:forge:plates/manyullyn_sheet>.add(<item:contenttweaker:tconstruct/manyullyn_sheet>);
<tag:items:forge:plates/pig_iron_sheet>.add(<item:contenttweaker:tconstruct/pig_iron_sheet>);
<tag:items:forge:plates/queens_slime_sheet>.add(<item:contenttweaker:tconstruct/queens_slime_sheet>);
<tag:items:forge:plates/slimesteel_sheet>.add(<item:contenttweaker:tconstruct/slimesteel_sheet>);
<tag:items:forge:plates/diamond>.add(<item:contenttweaker:thermal/diamond_plate>);
<tag:items:forge:plates/emerald>.add(<item:contenttweaker:thermal/emerald_plate>);
<tag:items:forge:plates/lapis>.add(<item:contenttweaker:thermal/lapis_plate>);
<tag:items:forge:plates/osmium>.add(<item:contenttweaker:thermal/osmium_plate>);
<tag:items:forge:plates/quartz>.add(<item:contenttweaker:thermal/quartz_plate>);

// Rods
var addingRodsForge = [
	"contenttweaker:immersiveengineering/diamond_rod",
	"contenttweaker:immersiveengineering/emerald_rod",
	"electrodynamics:rodhslasteel",
	"electrodynamics:rodstainlesssteel",
	"electrodynamics:rodtitaniumcarbide",
	"immersiveposts:stick_lead",
	"immersiveposts:stick_silver",
	"immersiveposts:stick_nickel",
	"immersiveposts:stick_constantan",
	"immersiveposts:stick_uranium"
];
for tag_rods_forge in addingRodsForge{
	<tag:items:forge:rods>.add(<item:${tag_rods_forge}>);
}
var addingRodsAllForge = [
	//"contenttweaker:immersiveengineering/diamond_rod",
	//"contenttweaker:immersiveengineering/emerald_rod",
	"electrodynamics:rodhslasteel",
	"electrodynamics:rodstainlesssteel",
	"electrodynamics:rodtitaniumcarbide"
];
for tag_rods_all_forge in addingRodsAllForge{
	<tag:items:forge:rods/all_metal>.add(<item:${tag_rods_all_forge}>);
}
<tag:items:forge:rods/diamond>.add(<item:contenttweaker:immersiveengineering/diamond_rod>);
<tag:items:forge:rods/emerald>.add(<item:contenttweaker:immersiveengineering/emerald_rod>);

// Salt
<tag:items:forge:dusts/salt>.add(<item:salt:salt>);

// Sapling
var addingSaplingForge = [
	"vinery:cherry_sapling",
	"vinery:old_cherry_sapling"
];
for tag_sapling_forge in addingSaplingForge{
	<tag:items:forge:sapling>.add(<item:${tag_sapling_forge}>);
}

// Seed
var addingSeedForge = [
	"enlightened_end:elevibloom_seeds",
	"vinery:jungle_grape_seeds_red",
	"vinery:jungle_grape_seeds_white",
	"vinery:red_grape_seeds",
	"vinery:savanna_grape_seeds_red",
	"vinery:savanna_grape_seeds_white",
	"vinery:taiga_grape_seeds_red",
	"vinery:taiga_grape_seeds_white",
	"vinery:white_grape_seeds"
];
for tag_seed_forge in addingSeedForge{
	<tag:items:forge:seeds>.add(<item:${tag_seed_forge}>);
	<tag:items:forge:seeds/grape>.add(<item:${tag_seed_forge}>); // Temporary Fix
}

// Stripped Log
var addingStrippedLogForge = [
	"botania:glimmering_stripped_dreamwood_log",
	"botania:glimmering_stripped_livingwood_log",
	"croptopia:stripped_cinnamon_log",
	"enlightened_end:stripped_cerulean_stalk_block",
	"enlightened_end:stripped_indigo_stem",
	"infernalexp:stripped_luminous_stem",
	"undergarden:stripped_grongle_log",
	"undergarden:stripped_smogstem_log",
	"undergarden:stripped_wigglewood_log",
	"vinery:stripped_cherry_log",
	"vinery:stripped_old_cherry_log"
];
for tag_stripped_log_forge in addingStrippedLogForge{
	<tag:items:forge:stripped_logs>.add(<item:${tag_stripped_log_forge}>);
}

// Stripped Wood
var addingStrippedWoodForge = [
	"botania:glimmering_stripped_dreamwood",
	"botania:glimmering_stripped_livingwood",
	"croptopia:stripped_cinnamon_wood",
	"enlightened_end:stripped_indigo_hyphae",
	"infernalexp:stripped_luminous_hyphae",
	"undergarden:stripped_grongle_wood",
	"undergarden:stripped_smogstem_wood",
	"undergarden:stripped_wigglewood_wood",
	"vinery:stripped_cherry_wood",
	"vinery:stripped_old_cherry_wood"
];
for tag_stripped_wood_forge in addingStrippedWoodForge{
	<tag:items:forge:stripped_wood>.add(<item:${tag_stripped_wood_forge}>);
}

// Tool
var addingToolsCopperForge = [
	"exlinecopperequipment:copper_axe",
	"exlinecopperequipment:copper_hoe",
	"exlinecopperequipment:copper_pick",
	"exlinecopperequipment:copper_shovel",
	"exlinecopperequipment:copper_sword"
];
for tag_tools_copper_forge in addingToolsCopperForge{
	<tag:items:forge:tools/copper>.add(<item:${tag_tools_copper_forge}>);
}

// Tools Knives
var addingToolsKnivesForge = [
	"enlightened_end:adamantite_knife",
	"fiow:flint_knife"
];
for tag_tools_knives_forge in addingToolsKnivesForge{
	<tag:items:forge:tools/knives>.add(<item:${tag_tools_knives_forge}>);
}

// Tuna
<tag:items:forge:tuna>.add(<item:aquaculture:tuna>);

Globals.endScript("tag/forge");