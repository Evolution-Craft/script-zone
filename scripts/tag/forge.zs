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
 */

#priority 997

println("Start script/tag forge.");
println("Script Priority 997.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Berries
var addingBerriesForge = [
	"vinery:cherry"
];
for tag_berries_forge in addingBerriesForge{
	<tag:items:forge:berries>.add(<item:${tag_berries_forge}>);
}
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
var addingCherriesForge = [
	"vinery:cherry"
];
for tag_cherries_forge in addingCherriesForge{
	<tag:items:forge:cherries>.add(<item:${tag_cherries_forge}>);
}
// Crabs
<tag:items:forge:crabs>.add(<item:crabbersdelight:crab>);
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
	<tag:items:forge:crops>.add(<item:${tag_crops_grape_forge}>); // Temporary Fix
	<tag:items:forge:crops/grape>.add(<item:${tag_crops_grape_forge}>);
	<tag:items:forge:fruits>.add(<item:${tag_crops_grape_forge}>); // Temporary Fix
	<tag:items:forge:fruits/grape>.add(<item:${tag_crops_grape_forge}>); // Temporary Fix
	<tag:items:forge:grapes>.add(<item:${tag_crops_grape_forge}>); // Temporary Fix
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
var addingCropsTeaForge = [
	"croptopia:tea_leaves"
];
for tag_crops_tea_forge in addingCropsTeaForge{
	<tag:items:forge:crops/tea>.add(<item:${tag_crops_tea_forge}>);
}
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
//<tag:items:forge:ores>.add(<item:infernalexp:basalt_iron_ore>); // Temporary Remove for Bug
//<tag:items:forge:ores/iron>.add(<item:infernalexp:basalt_iron_ore>); // Temporary Remove for Bug
// Salt
<tag:items:forge:dusts/salt>.add(<item:salt:salt>);
// Sapling
var addingSaplingForge = [
	"vinery:cherry_sapling",
	"vinery:old_cherry_sapling"
];
for tag_sapling_forge in addingSaplingForge{
	<tag:items:forge:sapling>.add(<item:${tag_sapling_forge}>);
	<tag:items:minecraft:saplings>.add(<item:${tag_sapling_forge}>); // Temporary Fix
}
// Seed
var addingSeedForge = [
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
// Tuna
<tag:items:forge:tuna>.add(<item:aquaculture:tuna>);

println("End script/tag forge.");