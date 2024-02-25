/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Code Rework.
 * v0.2 : Add Missing Composter Item.
 * v0.3 : Rework Composter Code and Add More Item.
 * v0.4 : Add Missing Campfire Recipe.
 * v0.5 : Add Missing StoneCutter.
 * v0.6 : Adding in Furnace Concrite for converting in Concrete Powder.
 * v0.7 : Adding Missing Pressure Plate and Loam in StoneCutter.
 * V0.8 : Code Compatting
 */

println("Start script recipe_misc.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.BlastFurnaceRecipeManager;
import crafttweaker.api.recipe.CampFireRecipeManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.recipe.SmokerRecipeManager;
import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.misc.Composter;
import crafttweaker.api.tag.manager.ITagManager;

var itemDyeMisc = [
	"black",
	"blue",
	"brown",
	"cyan",
	"gray",
	"green",
	"light_blue",
	"light_gray",
	"lime",
	"magenta",
	"orange",
	"pink",
	"purple",
	"red",
	"yellow",
	"white"
];
// Campfire
campfire.addRecipe("campfire_dough_to_toast", <item:vinery:toast>, <tag:items:minecraft:dough>, 1.0, 200);

// Composter
var composterAddItem = {
	// Alex's Mobs
	"alexsmobs:maggot" : 0.2,
	// Aquacylture
	"aquaculture:algae" : 0.3,
	"aquaculture:fish_bones" : 0.1,
	"aquaculture:worm" : 0.2,
	// Botania
	"botania:black_mushroom" : 0.65,
	"botania:blue_mushroom" : 0.65,
	"botania:brown_mushroom" : 0.65,
	"botania:cyan_mushroom" : 0.65,
	"botania:gray_mushroom" : 0.65,
	"botania:green_mushroom" : 0.65,
	"botania:magenta_mushroom" : 0.65,
	"botania:light_blue_mushroom" : 0.65,
	"botania:light_gray_mushroom" : 0.65,
	"botania:lime_mushroom" : 0.65,
	"botania:orange_mushroom" : 0.65,
	"botania:red_mushroom" : 0.65,
	"botania:pink_mushroom" : 0.65,
	"botania:purple_mushroom" : 0.65,
	"botania:yellow_mushroom" : 0.65,
	"botania:white_mushroom" : 0.65,
	"botania:black_double_flower" : 0.65,
	"botania:blue_double_flower" : 0.65,
	"botania:brown_double_flower" : 0.65,
	"botania:cyan_double_flower" : 0.65,
	"botania:gray_double_flower" : 0.65,
	"botania:green_double_flower" : 0.65,
	"botania:light_blue_double_flower" : 0.65,
	"botania:light_gray_double_flower" : 0.65,
	"botania:lime_double_flower" : 0.65,
	"botania:magenta_double_flower" : 0.65,
	"botania:orange_double_flower" : 0.65,
	"botania:pink_double_flower" : 0.65,
	"botania:purple_double_flower" : 0.65,
	"botania:red_double_flower" : 0.65,
	"botania:yellow_double_flower" : 0.65,
	"botania:white_double_flower" : 0.65,
	"botania:black_mystical_flower" : 0.65,
	"botania:blue_mystical_flower" : 0.65,
	"botania:brown_mystical_flower" : 0.65,
	"botania:cyan_mystical_flower" : 0.65,
	"botania:gray_mystical_flower" : 0.65,
	"botania:green_mystical_flower" : 0.65,
	"botania:light_blue_mystical_flower" : 0.65,
	"botania:light_gray_mystical_flower" : 0.65,
	"botania:lime_mystical_flower" : 0.65,
	"botania:magenta_mystical_flower" : 0.65,
	"botania:orange_mystical_flower" : 0.65,
	"botania:pink_mystical_flower" : 0.65,
	"botania:purple_mystical_flower" : 0.65,
	"botania:red_mystical_flower" : 0.65,
	"botania:yellow_mystical_flower" : 0.65,
	"botania:white_mystical_flower" : 0.65,
	"botania:black_shiny_flower" : 0.65,
	"botania:blue_shiny_flower" : 0.65,
	"botania:brown_shiny_flower" : 0.65,
	"botania:cyan_shiny_flower" : 0.65,
	"botania:gray_shiny_flower" : 0.65,
	"botania:green_shiny_flower" : 0.65,
	"botania:light_blue_shiny_flower" : 0.65,
	"botania:light_gray_shiny_flower" : 0.65,
	"botania:lime_shiny_flower" : 0.65,
	"botania:magenta_shiny_flower" : 0.65,
	"botania:orange_shiny_flower" : 0.65,
	"botania:pink_shiny_flower" : 0.65,
	"botania:purple_shiny_flower" : 0.65,
	"botania:red_shiny_flower" : 0.65,
	"botania:yellow_shiny_flower" : 0.65,
	"botania:white_shiny_flower" : 0.65,
	// Cyclic
	"cyclic:apple_chocolate" : 0.65,
	"cyclic:apple_chorus" : 0.65,
	"cyclic:apple_honey" : 0.65,
	"cyclic:inventory_cake" : 1,
	// Create Crafts and Additions
	"createaddition:cake_base" : 1,
	"createaddition:cake_base_baked" : 1,
	"createaddition:chocolate_cake" : 1,
	"createaddition:honey_cake" : 1,
	// Croptopia
	"croptopia:cheese_cake" : 1,
	"croptopia:fruit_cake" : 1,
	"croptopia:tres_leche_cake" : 1,
	// Farmers Delight
	"farmersdelight:sweet_berry_cheesecake" : 1,
	"farmersdelight:sweet_berry_cheesecake_slice" : 0.70,
	// Galosphere
	"galosphere_delight:lumiere_shimmer_cake" : 1,
	"galosphere_delight:lumiere_shimmer_cake_slice" : 0.70,
	// Minecraft
	"minecraft:chorus_fruit" : 0.20,
	"minecraft:fermented_spider_eye" : 0.40,
	"minecraft:poisonous_potato" : 0.85,
	"minecraft:rabbit_foot" : 0.65,
	"minecraft:rotten_flesh" : 0.30,
	"minecraft:spider_eye" : 0.30,
	// Myrtrees
	"myrtrees:rubberwood_leaves" : 0.30,
	"myrtrees:rubberwood_sapling" : 0.40,
	// Simply Tea
	"simplytea:teabag_black" : 0.90,
	"simplytea:teabag_chorus" : 0.90,
	"simplytea:teabag_floral" : 0.90,
	"simplytea:teabag_green" : 0.90,
	// Thermal Series
	"thermal:carrot_cake" : 1,
	"thermal:chocolate_cake" : 1,
	"thermal:cheese_wedge" : 0.70,
	"thermal:cheese_wheel" : 1,
	"thermal:green_bean_pie" : 1,
	"thermal:hops" : 0.65,
	"thermal:hops_seeds" : 0.3,
	"thermal:spice_cake" : 1,
	"thermal:stuffed_pepper" : 0.65,
	"thermal:stuffed_pumpkin" : 1,
	// Undergarden
	"undergarden:hanging_grongle_leaves" : 0.3,
	// Unusual End
	"unusualend:chorus_petal" : 0.50,
	// Vinery
	"vinery:apple_cupcake" : 1,
	"vinery:rotten_cherry" : 0.3
};
for composterAddItemMaterial, composterAddItemValue in composterAddItem {
	composter.setValue(<item:${composterAddItemMaterial}>, composterAddItemValue);
}

// Blast Furnace
blastFurnace.addRecipe("raw_iron_block_in_bfurnace", <item:minecraft:iron_block>, <item:minecraft:raw_iron_block>, 4.2, 200);
blastFurnace.addRecipe("raw_copper_block_in_bfurnace", <item:minecraft:copper_block>, <item:minecraft:raw_copper_block>, 4.2, 200);
blastFurnace.addRecipe("raw_gold_block_in_bfurnace", <item:minecraft:gold_block>, <item:minecraft:raw_gold_block>, 6.0, 200);
blastFurnace.addRecipe("raw_cloggrum_block_in_bfurnace", <item:undergarden:cloggrum_block>, <item:undergarden:raw_cloggrum_block>, 6.0, 200);
blastFurnace.addRecipe("raw_froststeel_block_in_bfurnace", <item:undergarden:froststeel_block>, <item:undergarden:raw_froststeel_block>, 6.0, 200);
blastFurnace.addRecipe("raw_zinc_block_in_bfurnace", <item:create:zinc_block>, <item:create:raw_zinc_block>, 6.0, 200);
blastFurnace.addRecipe("sand_in_bfurnace", <item:minecraft:glass>, <tag:items:minecraft:sand>, 0.1, 100);
blastFurnace.addRecipe("cobblestone_in_bfurnace", <item:minecraft:stone>, <item:minecraft:cobblestone>, 0.1, 100);
blastFurnace.addRecipe("cobbled_deepslate_in_bfurnace", <item:minecraft:deepslate>, <item:minecraft:cobbled_deepslate>, 0.1, 100);
blastFurnace.addRecipe("stone_in_bfurnace", <item:minecraft:smooth_stone>, <item:minecraft:stone>, 0.1, 100);
blastFurnace.addRecipe("silt_in_bfurnace", <item:minecraft:glass>, <item:infernalexp:silt>, 0.1, 100);
blastFurnace.addRecipe("dirty_glass_in_bfurnace", <item:minecraft:glass>, <item:quark:dirty_glass>, 0.1, 100);

// Furnace
for furnace_concrete_dye_add_item in itemDyeMisc{
	furnace.addRecipe("minecraft_" + furnace_concrete_dye_add_item + "_concrete_in_furnace", <item:minecraft:${furnace_concrete_dye_add_item}_concrete_powder>, <item:minecraft:${furnace_concrete_dye_add_item}_concrete>, 0.1, 200);
}
furnace.addRecipe("minecraft_beetroot_in_furnace", <item:minecraft:sugar> * 2, <item:minecraft:beetroot>, 0.1, 60);
furnace.addRecipe("minecraft_rotten_flesh_in_furnace", <item:minecraft:leather>, <item:minecraft:rotten_flesh> * 4, 0.4, 240);
furnace.addRecipe("twilightforest_green_thorns_in_furnace", <item:twilightforest:burnt_thorns>, <item:twilightforest:green_thorns>, 0.4, 240);
furnace.addRecipe("twilightforest_brown_thorns_in_furnace", <item:twilightforest:burnt_thorns>, <item:twilightforest:brown_thorns>, 0.4, 240);
furnace.addRecipe("vinery_dought_in_furnace", <item:vinery:crusty_bread>, <item:vinery:dough>, 0.35, 200);

// Stone Cutter
for adding_concrete_dye_stone_cutter_color in itemDyeMisc{
	stoneCutter.addRecipe(adding_concrete_dye_stone_cutter_color + "_concrete_fence_stonecutting", <item:moreconcrete:${adding_concrete_dye_stone_cutter_color}_concrete_fence>, <item:minecraft:${adding_concrete_dye_stone_cutter_color}_concrete>);
	stoneCutter.addRecipe(adding_concrete_dye_stone_cutter_color + "_concrete_fence_gate_stonecutting", <item:moreconcrete:${adding_concrete_dye_stone_cutter_color}_concrete_fence_gate>, <item:minecraft:${adding_concrete_dye_stone_cutter_color}_concrete>);
	stoneCutter.addRecipe(adding_concrete_dye_stone_cutter_color + "_concrete_pressure_plate_stonecutting", <item:moreconcrete:${adding_concrete_dye_stone_cutter_color}_concrete_pressure_plate>, <item:minecraft:${adding_concrete_dye_stone_cutter_color}_concrete>);
}
var addingFencesMacawStoneCutter = {
	"andesite" : "andesite",
	"blackstone" : "blackstone",
	"deepslate" : "polished_deepslate",
	"deepslate_brick" : "deepslate_bricks",
	"diorite" : "diorite",
	"end_brick" : "end_stone_bricks",
	"granite" : "granite",
	"nether_brick" : "nether_bricks",
	"prismarine" : "prismarine",
	"quartz" : "quartz_block",
	"red_sandstone" : "red_sandstone",
	"sandstone" : "sandstone",
	"stone" : "stone_bricks"
};
for addingFencesMacawStoneCutterName, addingFencesMacawStoneCutterMaterial in addingFencesMacawStoneCutter {
	stoneCutter.addRecipe("mcwfences_" + addingFencesMacawStoneCutterName + "_pillar_wall_stoncutting", <item:mcwfences:${addingFencesMacawStoneCutterName}_pillar_wall>, <item:minecraft:${addingFencesMacawStoneCutterMaterial}>);
}
stoneCutter.addRecipe("stone_pressure_plate_stoncutting", <item:minecraft:stone_pressure_plate>, <item:minecraft:stone>);
stoneCutter.addRecipe("polished_blackstone_pressure_plate_stoncutting", <item:minecraft:polished_blackstone_pressure_plate>, <item:minecraft:polished_blackstone>);
stoneCutter.addRecipe("obsidian_pressure_plate_stoncutting", <item:cyclic:obsidian_pressure_plate>, <item:minecraft:obsidian>);
stoneCutter.addRecipe("polished_basalt_pressure_plate_stoncutting", <item:infernalexp:polished_basalt_pressure_plate>, <item:minecraft:polished_basalt>);
stoneCutter.addRecipe("soul_slate_pressure_plate_stoncutting", <item:infernalexp:soul_slate_pressure_plate>, <item:infernalexp:soul_slate>);
stoneCutter.addRecipe("chiseled_deepslate_stoncutting", <item:minecraft:chiseled_deepslate>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_brick_slab_stoncutting", <item:minecraft:deepslate_brick_slab> * 2, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_brick_stairs_stoncutting", <item:minecraft:deepslate_brick_stairs>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_brick_wall_stoncutting", <item:minecraft:deepslate_brick_wall>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_brick_stoncutting", <item:minecraft:deepslate_bricks>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_tile_slab_stoncutting", <item:minecraft:deepslate_tile_slab> * 2, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_tile_stairs_stoncutting", <item:minecraft:deepslate_tile_stairs>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_tile_wall_stoncutting", <item:minecraft:deepslate_tile_wall>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("deepslate_tiles_stoncutting", <item:minecraft:deepslate_tiles>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("polished_deepslate_slab_stoncutting", <item:minecraft:polished_deepslate_slab> * 2, <item:minecraft:deepslate>);
stoneCutter.addRecipe("polished_deepslate_stairs_stoncutting", <item:minecraft:polished_deepslate_stairs>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("polished_deepslate_stoncutting", <item:minecraft:polished_deepslate>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("polished_deepslate_wall_stoncutting", <item:minecraft:polished_deepslate_wall>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("block_of_crystallized_menril_to_brick_stoncutting", <item:integrateddynamics:crystalized_menril_brick> * 4, <item:integrateddynamics:crystalized_menril_block>);
stoneCutter.addRecipe("block_of_crystallized_menril_to_slab_stoncutting", <item:integrateddynamics:crystalized_menril_block_slab> * 2, <item:integrateddynamics:crystalized_menril_block>);
stoneCutter.addRecipe("block_of_crystallized_menril_to_stairs_stoncutting", <item:integrateddynamics:crystalized_menril_block_stairs>, <item:integrateddynamics:crystalized_menril_block>);
stoneCutter.addRecipe("block_of_crystallized_menril_to_brick_slab_stoncutting", <item:integrateddynamics:crystalized_menril_brick_slab> * 8, <item:integrateddynamics:crystalized_menril_block>);
stoneCutter.addRecipe("block_of_crystallized_menril_to_brick_stairs_stoncutting", <item:integrateddynamics:crystalized_menril_brick_stairs> * 4, <item:integrateddynamics:crystalized_menril_block>);
stoneCutter.addRecipe("brick_of_crystallized_menril_to_slab_stoncutting", <item:integrateddynamics:crystalized_menril_brick_slab> * 2, <item:integrateddynamics:crystalized_menril_brick>);
stoneCutter.addRecipe("brick_of_crystallized_menril_to_stairs_stoncutting", <item:integrateddynamics:crystalized_menril_brick_stairs>, <item:integrateddynamics:crystalized_menril_brick>);
stoneCutter.addRecipe("block_of_crystallized_chorus_to_brick_stoncutting", <item:integrateddynamics:crystalized_chorus_brick> * 4, <item:integrateddynamics:crystalized_chorus_block>);
stoneCutter.addRecipe("block_of_crystallized_chorus_to_slab_stoncutting", <item:integrateddynamics:crystalized_chorus_block_slab> * 2, <item:integrateddynamics:crystalized_chorus_block>);
stoneCutter.addRecipe("block_of_crystallized_chorus_to_stairs_stoncutting", <item:integrateddynamics:crystalized_chorus_block_stairs>, <item:integrateddynamics:crystalized_chorus_block>);
stoneCutter.addRecipe("block_of_crystallized_chorus_to_brick_slab_stoncutting", <item:integrateddynamics:crystalized_chorus_brick_slab> * 8, <item:integrateddynamics:crystalized_chorus_block>);
stoneCutter.addRecipe("block_of_crystallized_chorus_to_brick_stairs_stoncutting", <item:integrateddynamics:crystalized_chorus_brick_stairs> * 4, <item:integrateddynamics:crystalized_chorus_block>);
stoneCutter.addRecipe("brick_of_crystallized_chorus_to_slab_stoncutting", <item:integrateddynamics:crystalized_chorus_brick_slab> * 2, <item:integrateddynamics:crystalized_chorus_brick>);
stoneCutter.addRecipe("brick_of_crystallized_chorus_to_stairs_stoncutting", <item:integrateddynamics:crystalized_chorus_brick_stairs>, <item:integrateddynamics:crystalized_chorus_brick>);
stoneCutter.addRecipe("vinery_loam_stairs_stoncutting", <item:vinery:loam_stairs>, <item:vinery:loam>);
stoneCutter.addRecipe("vinery_loam_slab_stoncutting", <item:vinery:loam_slab> * 2, <item:vinery:loam>);

// Smoker
smoker.addRecipe("vinery_dought_in_smoker", <item:vinery:crusty_bread>, <item:vinery:dough>, 0.35, 100);

// Shapeless
craftingTable.addShapeless("minecraft_flint", <item:minecraft:flint>, [<item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>]);
craftingTable.addShapeless("minecraft_nether_wart_unblock", <item:minecraft:nether_wart> * 4, [<item:minecraft:nether_wart_block>]);
craftingTable.addShapeless("minecraft_snow_block_unblock", <item:minecraft:snowball> * 4, [<item:minecraft:snow_block>]);

// Shaped
craftingTable.addShaped("minecraft_grass_block", <item:minecraft:grass_block>, [
	[<item:minecraft:air>, <item:minecraft:moss_carpet>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:dirt>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("minecraft_calcite", <item:minecraft:calcite> * 2, [
	[<item:minecraft:tuff>, <item:minecraft:quartz>, <item:minecraft:air>],
	[<item:minecraft:quartz>, <item:minecraft:tuff>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("minecraft_tuff", <item:minecraft:tuff> * 2, [
	[<item:minecraft:cobbled_deepslate>, <item:minecraft:andesite>, <item:minecraft:air>],
	[<item:minecraft:andesite>, <item:minecraft:cobbled_deepslate>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("minecraft_saddle", <item:minecraft:saddle>, [
	[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
	[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
	[<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>]
]);
craftingTable.addShaped("minecraft_petrified_oak_slab", <item:minecraft:petrified_oak_slab> * 2, [
	[<item:minecraft:oak_slab>, <item:minecraft:cobblestone>, <item:minecraft:air>],
	[<item:minecraft:cobblestone>, <item:minecraft:oak_slab>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("minecraft_totem_of_undying", <item:minecraft:totem_of_undying>, [
	[<item:minecraft:emerald>, <item:minecraft:gold_ingot>, <item:minecraft:emerald>],
	[<item:minecraft:gold_ingot>, <item:minecraft:nether_star>, <item:minecraft:gold_ingot>],
	[<item:minecraft:air>, <item:minecraft:gold_block>, <item:minecraft:air>]
]);
craftingTable.addShaped("minecraft_name_tag", <item:minecraft:name_tag>, [
	[<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:string>],
	[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:iron_ingot>],
	[<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("minecraft_bell", <item:minecraft:bell>, [
	[<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
	[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
	[<item:minecraft:gold_ingot>, <item:minecraft:gold_block>, <item:minecraft:gold_ingot>]
]);
craftingTable.removeByName("sulfurpotassiummod:gunpowder");
craftingTable.removeByName("salt:gunpowder");
craftingTable.addShaped("minecraft_gunpowder", <item:minecraft:gunpowder> * 2, [
	[<item:minecraft:air>, <item:sulfurpotassiummod:sulfur>, <item:minecraft:air>],
	[<item:salt:salt>, <item:minecraft:charcoal>, <item:salt:salt>],
	[<item:minecraft:air>, <item:sulfurpotassiummod:potassium>, <item:minecraft:air>]
]);

println("End script recipe_misc.");