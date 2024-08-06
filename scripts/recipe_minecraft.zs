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
 * V0.8 : Code Compatting.
 * v0.9 : Add Tag and Name Fixing.
 * v0.10 : Adding bone in Furnace.
 */

Globals.startScript("recipe_minecraft");
Globals.priorityScript("Null");

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

// Shapeless
craftingTable.addShapeless("minecraft_brown_day", <item:minecraft:brown_dye> * 3, [<item:minecraft:blue_dye>, <item:minecraft:red_dye>, <item:minecraft:yellow_dye>]);
craftingTable.addShapeless("minecraft_green_day", <item:minecraft:green_dye> * 2, [<item:minecraft:blue_dye>, <item:minecraft:yellow_dye>]);
craftingTable.addShapeless("minecraft_flint", <item:minecraft:flint>, [<item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>]);
craftingTable.addShapeless("minecraft_nether_wart_unblock", <item:minecraft:nether_wart> * 4, [<item:minecraft:nether_wart_block>]);
craftingTable.addShapeless("minecraft_snow_block_unblock", <item:minecraft:snowball> * 4, [<item:minecraft:snow_block>]);
craftingTable.removeByName("minecraft:flint_and_steel");
craftingTable.addShapeless("pack_expert_crafting/flint_and_steel", <item:minecraft:flint_and_steel>, [<tag:items:forge:ingots/steel>, <item:minecraft:flint>]);

// Shaped
craftingTable.addShaped("minecraft_bell", <item:minecraft:bell>, [
	[<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
	[<tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>],
	[<tag:items:forge:ingots/gold>, <item:minecraft:gold_block>, <tag:items:forge:ingots/gold>]
]);

craftingTable.addShaped("minecraft_calcite", <item:minecraft:calcite> * 2, [
	[<item:minecraft:tuff>, <item:minecraft:quartz>, <item:minecraft:air>],
	[<item:minecraft:quartz>, <item:minecraft:tuff>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShaped("minecraft_grass_block", <item:minecraft:grass_block>, [
	[<item:minecraft:air>, <item:minecraft:moss_carpet>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:dirt>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("sulfurpotassiummod:gunpowder");
craftingTable.removeByName("salt:gunpowder");
craftingTable.addShaped("minecraft_gunpowder", <item:minecraft:gunpowder> * 2, [
	[<item:minecraft:air>, <item:sulfurpotassiummod:sulfur>, <item:minecraft:air>],
	[<item:salt:salt>, <item:minecraft:charcoal>, <item:salt:salt>],
	[<item:minecraft:air>, <item:sulfurpotassiummod:potassium>, <item:minecraft:air>]
]);

craftingTable.addShaped("minecraft_name_tag", <item:minecraft:name_tag>, [
	[<item:minecraft:air>, <tag:items:forge:ingots/iron>, <tag:items:forge:string>],
	[<item:minecraft:air>, <item:minecraft:leather>, <tag:items:forge:ingots/iron>],
	[<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShaped("minecraft_saddle", <item:minecraft:saddle>, [
	[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
	[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
	[<tag:items:forge:string>, <item:minecraft:air>, <tag:items:forge:string>]
]);

craftingTable.addShaped("minecraft_totem_of_undying", <item:minecraft:totem_of_undying>, [
	[<item:minecraft:emerald>, <tag:items:forge:ingots/gold>, <item:minecraft:emerald>],
	[<tag:items:forge:ingots/gold>, <item:minecraft:nether_star>, <tag:items:forge:ingots/gold>],
	[<item:minecraft:air>, <item:minecraft:gold_block>, <item:minecraft:air>]
]);

craftingTable.addShaped("minecraft_tuff", <item:minecraft:tuff> * 2, [
	[<item:minecraft:cobbled_deepslate>, <item:minecraft:andesite>, <item:minecraft:air>],
	[<item:minecraft:andesite>, <item:minecraft:cobbled_deepslate>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("minecraft:stonecutter");
craftingTable.addShaped("pack_expert_crafting/minecraft_stonecutter", <item:minecraft:stonecutter>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:thermal:saw_blade>, <item:minecraft:air>],
	[<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]
]);

craftingTable.removeByName("minecraft:piston");
craftingTable.addShaped("pack_expert_crafting/minecraft_piston", <item:minecraft:piston>, [
	[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
	[<item:minecraft:stone>, <tag:items:forge:ingots/invar>, <item:minecraft:stone>],
	[<item:minecraft:stone>, <item:contenttweaker:redstone_ingot_alloy>, <item:minecraft:stone>]
]);

// Campfire
campfire.addRecipe("campfire/tinker_construct_cooked_bacon_from_bacon", <item:farmersdelight:cooked_bacon>, <item:tconstruct:bacon>, 0.3, 600);
campfire.addRecipe("campfire/vinery_toast_from_dough", <item:vinery:toast>, <tag:items:minecraft:dough>, 1.0, 200);

// Composter
var composterAddItem = {
	// Alex's Mobs
	"alexsmobs:maggot" : 0.2,
	// Aquacylture
	"aquaculture:algae" : 0.3,
	"aquaculture:worm" : 0.2,
	// Botania
	"botania:dry_seeds" : 0.30,
	"botania:golden_seeds" : 0.30,
	"botania:grass_seeds" : 0.30,
	"botania:infused_seeds" : 0.30,
	"botania:mutated_seeds" : 0.30,
	"botania:podzol_seeds" : 0.30,
	"botania:scorched_seeds" : 0.30,
	"botania:vivid_seeds" : 0.30,
	"botania:world_seed" : 0.30,
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
blastFurnace.removeByName("aquaculture:neptunium_ingot_from_blasting");
blastFurnace.addRecipe("blast_furnace/aquaculture_neptunium_fillet_knife", <item:aquaculture:neptunium_nugget>, <item:aquaculture:neptunium_fillet_knife>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/aquaculturedelight_neptunium_knife", <item:aquaculture:neptunium_nugget>, <item:aquaculturedelight:neptunium_knife>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/contenttweaker_copper_knife", <item:thermal:copper_nugget>, <item:contenttweaker:evolution_craft/knife/copper_knife>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/contenttweaker_steel_knife", <item:thermal:steel_nugget>, <item:contenttweaker:evolution_craft/knife/steel_knife>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/create_crushed_certus_quartz", <item:ae2:certus_quartz_crystal>, <item:contenttweaker:ae2/crushed_certus_quartz>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/create_charged_crushed_certus_quartz", <item:ae2:charged_certus_quartz_crystal>, <item:contenttweaker:ae2/crushed_charged_certus_quartz>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/create_crushed_cobalt_ore", <item:tconstruct:cobalt_ingot>, <item:contenttweaker:tconstruct/crushed_cobalt_ore>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/create_crushed_fluix", <item:ae2:fluix_crystal>, <item:contenttweaker:ae2/crushed_fluix>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/create_crushed_hepatizon", <item:tconstruct:hepatizon_ingot>, <item:contenttweaker:tconstruct/crushed_hepatizon>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/create_crushed_manyullyn", <item:tconstruct:manyullyn_ingot>, <item:contenttweaker:tconstruct/crushed_manyullyn>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/create_crushed_quartz", <item:minecraft:quartz>, <item:contenttweaker:ae2/crushed_quartz>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/create_crushed_queens_slime", <item:tconstruct:queens_slime_ingot>, <item:contenttweaker:tconstruct/crushed_queens_slime>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/create_crushed_rose_gold", <item:tconstruct:rose_gold_ingot>, <item:contenttweaker:tconstruct/crushed_rose_gold>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/create_crushed_slimesteel", <item:tconstruct:slimesteel_ingot>, <item:contenttweaker:tconstruct/crushed_slimesteel>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/create_raw_zinc_block", <item:create:zinc_block>, <item:create:raw_zinc_block>, 6.0, 200);
blastFurnace.addRecipe("blast_furnace/croptopia_knife", <item:minecraft:iron_ingot>, <item:croptopia:knife>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/enlightened_end_adamantite_knife", <item:enlightened_end:adamantite_nugget>, <item:enlightened_end:adamantite_knife>, 0.1, 100);
blastFurnace.removeByName("exlinecopperequipment:copper_boots_blast");
blastFurnace.addRecipe("blast_furnace/exlinecopperequipment_copper_boots", <item:thermal:copper_nugget>, <item:exlinecopperequipment:copper_boots>, 0.1, 100);
blastFurnace.removeByName("exlinecopperequipment:copper_chest_blast");
blastFurnace.addRecipe("blast_furnace/exlinecopperequipment_copper_chestplate", <item:thermal:copper_nugget>, <item:exlinecopperequipment:copper_chestplate>, 0.1, 100);
blastFurnace.removeByName("exlinecopperequipment:copper_helm_blast");
blastFurnace.addRecipe("blast_furnace/exlinecopperequipment_copper_helmet", <item:thermal:copper_nugget>, <item:exlinecopperequipment:copper_helmet>, 0.1, 100);
blastFurnace.removeByName("exlinecopperequipment:copper_horse_armor_blast");
blastFurnace.addRecipe("blast_furnace/exlinecopperequipment_copper_horse_armor", <item:thermal:copper_nugget>, <item:exlinecopperequipment:copper_horse_armor>, 0.1, 100);
blastFurnace.removeByName("exlinecopperequipment:copper_leggs_blast");
blastFurnace.addRecipe("blast_furnace/exlinecopperequipment_copper_leggings", <item:thermal:copper_nugget>, <item:exlinecopperequipment:copper_leggings>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/farmersdelight_netherite_knife", <item:thermal:netherite_nugget>, <item:farmersdelight:netherite_knife>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/galosphere_sterling_boots", <item:thermal:silver_nugget>, <item:galosphere:sterling_boots>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/galosphere_sterling_chestplate", <item:thermal:silver_nugget>, <item:galosphere:sterling_chestplate>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/galosphere_sterling_helmet", <item:thermal:silver_nugget>, <item:galosphere:sterling_helmet>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/galosphere_sterling_horse_armor", <item:thermal:silver_nugget>, <item:galosphere:sterling_horse_armor>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/galosphere_sterling_leggings", <item:thermal:silver_nugget>, <item:galosphere:sterling_leggings>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/galosphere_delight_silver_knife", <item:thermal:silver_nugget>, <item:galosphere_delight:silver_knife>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/infernalexp_silt", <item:minecraft:glass>, <item:infernalexp:silt>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/mekanism_ingot_refined_glowstone_from_crushed_refined_glowstone", <item:mekanism:ingot_refined_glowstone>, <item:contenttweaker:mekanism/crushed_refined_glowstone>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/mekanism_ingot_refined_obsidian_from_crushed_refined_obsidian", <item:mekanism:ingot_refined_obsidian>, <item:contenttweaker:mekanism/crushed_refined_obsidian>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/minecraft_clay", <item:minecraft:terracotta>, <item:minecraft:clay>, 0.35, 100);
blastFurnace.addRecipe("blast_furnace/minecraft_clay_ball", <item:minecraft:brick>, <item:minecraft:clay_ball>, 0.3, 100);
blastFurnace.addRecipe("blast_furnace/minecraft_cobblestone", <item:minecraft:stone>, <item:minecraft:cobblestone>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/minecraft_cobbled_deepslate", <item:minecraft:deepslate>, <item:minecraft:cobbled_deepslate>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/minecraft_raw_iron_block", <item:minecraft:iron_block>, <item:minecraft:raw_iron_block>, 4.2, 200);
blastFurnace.addRecipe("blast_furnace/minecraft_raw_copper_block", <item:minecraft:copper_block>, <item:minecraft:raw_copper_block>, 4.2, 200);
blastFurnace.addRecipe("blast_furnace/minecraft_raw_gold_block", <item:minecraft:gold_block>, <item:minecraft:raw_gold_block>, 6.0, 200);
blastFurnace.addRecipe("blast_furnace/minecraft_sand", <item:minecraft:glass>, <tag:items:minecraft:sand>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/minecraft_stone", <item:minecraft:smooth_stone>, <item:minecraft:stone>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/tconstruct_ingot_pig_iron_from_crushed_pig_iron", <item:tconstruct:pig_iron_ingot>, <item:contenttweaker:tconstruct/crushed_pig_iron>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/quark_dirty_glass", <item:minecraft:glass>, <item:quark:dirty_glass>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/thermal_steel_ingot_from_crushed_steel", <item:thermal:steel_ingot>, <item:contenttweaker:mekanism/crushed_steel>, 0.1, 100);
blastFurnace.addRecipe("blast_furnace/undergarden_raw_cloggrum_block", <item:undergarden:cloggrum_block>, <item:undergarden:raw_cloggrum_block>, 6.0, 200);
blastFurnace.addRecipe("blast_furnace/undergarden_raw_froststeel_block", <item:undergarden:froststeel_block>, <item:undergarden:raw_froststeel_block>, 6.0, 200);

// Furnace
for furnace_concrete_dye_add_item in Constant.packColours {
	furnace.addRecipe("furnace/minecraft_" + furnace_concrete_dye_add_item + "_concrete", <item:minecraft:${furnace_concrete_dye_add_item}_concrete_powder>, <item:minecraft:${furnace_concrete_dye_add_item}_concrete>, 0.1, 200);
}

furnace.addRecipe("furnace/alexsmobs_fish_bones", <item:minecraft:bone_meal> * 3, <item:alexsmobs:fish_bones>, 0.05, 200);
furnace.addRecipe("furnace/aquaculture_fish_bones", <item:minecraft:bone_meal> * 3, <item:aquaculture:fish_bones>, 0.05, 200);
furnace.addRecipe("furnace/aquaculture_neptunium_fillet_knife", <item:aquaculture:neptunium_nugget>, <item:aquaculture:neptunium_fillet_knife>, 0.1, 200);
furnace.addRecipe("furnace/aquaculturedelight_neptunium_knife", <item:aquaculture:neptunium_nugget>, <item:aquaculturedelight:neptunium_knife>, 0.1, 200);
furnace.addRecipe("furnace/contenttweaker_copper_knife", <item:thermal:copper_nugget>, <item:contenttweaker:evolution_craft/knife/copper_knife>, 0.1, 200);
furnace.addRecipe("furnace/contenttweaker_steel_knife", <item:thermal:steel_nugget>, <item:contenttweaker:evolution_craft/knife/steel_knife>, 0.1, 200);
furnace.addRecipe("furnace/create_crushed_certus_quartz", <item:ae2:certus_quartz_crystal>, <item:contenttweaker:ae2/crushed_certus_quartz>, 0.1, 200);
furnace.addRecipe("furnace/create_charged_crushed_certus_quartz", <item:ae2:charged_certus_quartz_crystal>, <item:contenttweaker:ae2/crushed_charged_certus_quartz>, 0.1, 200);
furnace.addRecipe("furnace/create_crushed_cobalt_ore", <item:tconstruct:cobalt_ingot>, <item:contenttweaker:tconstruct/crushed_cobalt_ore>, 0.1, 200);
furnace.addRecipe("furnace/create_crushed_fluix", <item:ae2:fluix_crystal>, <item:contenttweaker:ae2/crushed_fluix>, 0.1, 200);
furnace.addRecipe("furnace/create_crushed_hepatizon", <item:tconstruct:hepatizon_ingot>, <item:contenttweaker:tconstruct/crushed_hepatizon>, 0.1, 200);
furnace.addRecipe("furnace/create_crushed_manyullyn", <item:tconstruct:manyullyn_ingot>, <item:contenttweaker:tconstruct/crushed_manyullyn>, 0.1, 200);
furnace.addRecipe("furnace/create_crushed_quartz", <item:minecraft:quartz>, <item:contenttweaker:ae2/crushed_quartz>, 0.1, 200);
furnace.addRecipe("furnace/create_crushed_queens_slime", <item:tconstruct:queens_slime_ingot>, <item:contenttweaker:tconstruct/crushed_queens_slime>, 0.1, 200);
furnace.addRecipe("furnace/create_crushed_rose_gold", <item:tconstruct:rose_gold_ingot>, <item:contenttweaker:tconstruct/crushed_rose_gold>, 0.1, 200);
furnace.addRecipe("furnace/create_crushed_slimesteel", <item:tconstruct:slimesteel_ingot>, <item:contenttweaker:tconstruct/crushed_slimesteel>, 0.1, 200);
furnace.addRecipe("furnace/croptopia_knife", <item:minecraft:iron_ingot>, <item:croptopia:knife>, 0.1, 200);
furnace.addRecipe("furnace/enlightened_end_adamantite_knife", <item:enlightened_end:adamantite_nugget>, <item:enlightened_end:adamantite_knife>, 0.1, 200);
furnace.removeByName("exlinecopperequipment:copper_boots_smelt");
furnace.addRecipe("furnace/exlinecopperequipment_copper_boots", <item:thermal:copper_nugget>, <item:exlinecopperequipment:copper_boots>, 0.1, 200);
furnace.removeByName("exlinecopperequipment:copper_chest_smelt");
furnace.addRecipe("furnace/exlinecopperequipment_copper_chestplate", <item:thermal:copper_nugget>, <item:exlinecopperequipment:copper_chestplate>, 0.1, 200);
furnace.removeByName("exlinecopperequipment:copper_helm_smelt");
furnace.addRecipe("furnace/exlinecopperequipment_copper_helmet", <item:thermal:copper_nugget>, <item:exlinecopperequipment:copper_helmet>, 0.1, 200);
furnace.removeByName("exlinecopperequipment:copper_horse_armor_smelt");
furnace.addRecipe("furnace/exlinecopperequipment_copper_horse_armor", <item:thermal:copper_nugget>, <item:exlinecopperequipment:copper_horse_armor>, 0.1, 200);
furnace.removeByName("exlinecopperequipment:copper_leggs_smelt");
furnace.addRecipe("furnace/exlinecopperequipment_copper_leggings", <item:thermal:copper_nugget>, <item:exlinecopperequipment:copper_leggings>, 0.1, 200);
furnace.addRecipe("furnace/farmersdelight_netherite_knife", <item:thermal:netherite_nugget>, <item:farmersdelight:netherite_knife>, 0.1, 200);
furnace.addRecipe("furnace/galosphere_sterling_boots", <item:thermal:silver_nugget>, <item:galosphere:sterling_boots>, 0.1, 200);
furnace.addRecipe("furnace/galosphere_sterling_chestplate", <item:thermal:silver_nugget>, <item:galosphere:sterling_chestplate>, 0.1, 200);
furnace.addRecipe("furnace/galosphere_sterling_helmet", <item:thermal:silver_nugget>, <item:galosphere:sterling_helmet>, 0.1, 200);
furnace.addRecipe("furnace/galosphere_sterling_horse_armor", <item:thermal:silver_nugget>, <item:galosphere:sterling_horse_armor>, 0.1, 200);
furnace.addRecipe("furnace/galosphere_sterling_leggings", <item:thermal:silver_nugget>, <item:galosphere:sterling_leggings>, 0.1, 200);
furnace.addRecipe("furnace/galosphere_delight_silver_knife", <item:thermal:silver_nugget>, <item:galosphere_delight:silver_knife>, 0.1, 200);
furnace.addRecipe("furnace/mekanism_ingot_refined_glowstone_from_crushed_refined_glowstone", <item:mekanism:ingot_refined_glowstone>, <item:contenttweaker:mekanism/crushed_refined_glowstone>, 0.1, 200);
furnace.addRecipe("furnace/mekanism_ingot_refined_obsidian_from_crushed_refined_obsidian", <item:mekanism:ingot_refined_obsidian>, <item:contenttweaker:mekanism/crushed_refined_obsidian>, 0.1, 200);
furnace.addRecipe("furnace/minecraft_beetroot", <item:minecraft:sugar> * 2, <item:minecraft:beetroot>, 0.1, 60);
furnace.addRecipe("furnace/minecraft_rotten_flesh", <item:minecraft:leather>, <item:minecraft:rotten_flesh> * 4, 0.4, 240);
furnace.addRecipe("furnace/thermal_steel_ingot_from_crushed_steel", <item:thermal:steel_ingot>, <item:contenttweaker:mekanism/crushed_steel>, 0.1, 200);
furnace.addRecipe("furnace/netherdepthsupgrade_bonefish", <item:minecraft:bone_meal> * 3, <item:netherdepthsupgrade:bonefish>, 0.05, 200);
furnace.addRecipe("furnace/tconstruct_ingot_pig_iron_from_crushed_pig_iron", <item:tconstruct:pig_iron_ingot>, <item:contenttweaker:tconstruct/crushed_pig_iron>, 0.1, 200);
furnace.addRecipe("furnace/twilightforest_green_thorns", <item:twilightforest:burnt_thorns>, <item:twilightforest:green_thorns>, 0.4, 240);
furnace.addRecipe("furnace/twilightforest_brown_thorns", <item:twilightforest:burnt_thorns>, <item:twilightforest:brown_thorns>, 0.4, 240);
furnace.addRecipe("furnace/vinery_dought", <item:vinery:crusty_bread>, <item:vinery:dough>, 0.35, 200);

// Stone Cutter
for adding_concrete_dye_stone_cutter_color in Constant.packColours {
	stoneCutter.addRecipe("stonecutter/moreconcrete_" + adding_concrete_dye_stone_cutter_color + "_concrete_fence", <item:moreconcrete:${adding_concrete_dye_stone_cutter_color}_concrete_fence>, <item:minecraft:${adding_concrete_dye_stone_cutter_color}_concrete>);
	stoneCutter.addRecipe("stonecutter/moreconcrete_" + adding_concrete_dye_stone_cutter_color + "_concrete_fence_gate", <item:moreconcrete:${adding_concrete_dye_stone_cutter_color}_concrete_fence_gate>, <item:minecraft:${adding_concrete_dye_stone_cutter_color}_concrete>);
	stoneCutter.addRecipe("stonecutter/moreconcrete_" + adding_concrete_dye_stone_cutter_color + "_concrete_pressure_plate", <item:moreconcrete:${adding_concrete_dye_stone_cutter_color}_concrete_pressure_plate>, <item:minecraft:${adding_concrete_dye_stone_cutter_color}_concrete>);
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
	stoneCutter.addRecipe("stonecutter/mcwfences_" + addingFencesMacawStoneCutterName + "_pillar_wall", <item:mcwfences:${addingFencesMacawStoneCutterName}_pillar_wall>, <item:minecraft:${addingFencesMacawStoneCutterMaterial}>);
}

stoneCutter.addRecipe("stonecutter/cyclic_obsidian_pressure_plate", <item:cyclic:obsidian_pressure_plate>, <item:minecraft:obsidian>);
stoneCutter.addRecipe("stonecutter/infernalexp_polished_basalt_pressure_plate", <item:infernalexp:polished_basalt_pressure_plate>, <item:minecraft:polished_basalt>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_block_of_crystallized_menril_to_brick", <item:integrateddynamics:crystalized_menril_brick> * 4, <item:integrateddynamics:crystalized_menril_block>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_block_of_crystallized_menril_to_slab", <item:integrateddynamics:crystalized_menril_block_slab> * 2, <item:integrateddynamics:crystalized_menril_block>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_block_of_crystallized_menril_to_stairs_stoncutting", <item:integrateddynamics:crystalized_menril_block_stairs>, <item:integrateddynamics:crystalized_menril_block>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_block_of_crystallized_menril_to_brick_slab_stoncutting", <item:integrateddynamics:crystalized_menril_brick_slab> * 8, <item:integrateddynamics:crystalized_menril_block>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_block_of_crystallized_menril_to_brick_stairs_stoncutting", <item:integrateddynamics:crystalized_menril_brick_stairs> * 4, <item:integrateddynamics:crystalized_menril_block>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_brick_of_crystallized_menril_to_slab_stoncutting", <item:integrateddynamics:crystalized_menril_brick_slab> * 2, <item:integrateddynamics:crystalized_menril_brick>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_brick_of_crystallized_menril_to_stairs_stoncutting", <item:integrateddynamics:crystalized_menril_brick_stairs>, <item:integrateddynamics:crystalized_menril_brick>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_block_of_crystallized_chorus_to_brick_stoncutting", <item:integrateddynamics:crystalized_chorus_brick> * 4, <item:integrateddynamics:crystalized_chorus_block>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_block_of_crystallized_chorus_to_slab_stoncutting", <item:integrateddynamics:crystalized_chorus_block_slab> * 2, <item:integrateddynamics:crystalized_chorus_block>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_block_of_crystallized_chorus_to_stairs_stoncutting", <item:integrateddynamics:crystalized_chorus_block_stairs>, <item:integrateddynamics:crystalized_chorus_block>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_block_of_crystallized_chorus_to_brick_slab_stoncutting", <item:integrateddynamics:crystalized_chorus_brick_slab> * 8, <item:integrateddynamics:crystalized_chorus_block>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_block_of_crystallized_chorus_to_brick_stairs_stoncutting", <item:integrateddynamics:crystalized_chorus_brick_stairs> * 4, <item:integrateddynamics:crystalized_chorus_block>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_brick_of_crystallized_chorus_to_slab_stoncutting", <item:integrateddynamics:crystalized_chorus_brick_slab> * 2, <item:integrateddynamics:crystalized_chorus_brick>);
stoneCutter.addRecipe("stonecutter/integrateddynamics_brick_of_crystallized_chorus_to_stairs_stoncutting", <item:integrateddynamics:crystalized_chorus_brick_stairs>, <item:integrateddynamics:crystalized_chorus_brick>);
stoneCutter.addRecipe("stonecutter/minecraft_chiseled_deepslate", <item:minecraft:chiseled_deepslate>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_deepslate_brick_slab", <item:minecraft:deepslate_brick_slab> * 2, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_deepslate_brick_stairs", <item:minecraft:deepslate_brick_stairs>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_deepslate_brick_wall", <item:minecraft:deepslate_brick_wall>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_deepslate_brick", <item:minecraft:deepslate_bricks>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_deepslate_tile_slab", <item:minecraft:deepslate_tile_slab> * 2, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_deepslate_tile_stairs", <item:minecraft:deepslate_tile_stairs>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_deepslate_tile_wall", <item:minecraft:deepslate_tile_wall>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_deepslate_tiles", <item:minecraft:deepslate_tiles>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_polished_blackstone_pressure_plate", <item:minecraft:polished_blackstone_pressure_plate>, <item:minecraft:polished_blackstone>);
stoneCutter.addRecipe("stonecutter/minecraft_polished_deepslate_slab", <item:minecraft:polished_deepslate_slab> * 2, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_polished_deepslate_stairs", <item:minecraft:polished_deepslate_stairs>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_polished_deepslate", <item:minecraft:polished_deepslate>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_polished_deepslate_wall", <item:minecraft:polished_deepslate_wall>, <item:minecraft:deepslate>);
stoneCutter.addRecipe("stonecutter/minecraft_stone_pressure_plate", <item:minecraft:stone_pressure_plate>, <item:minecraft:stone>);
stoneCutter.addRecipe("stonecutter/vinery_loam_stairs", <item:vinery:loam_stairs>, <item:vinery:loam>);
stoneCutter.addRecipe("stonecutter/vinery_loam_slab", <item:vinery:loam_slab> * 2, <item:vinery:loam>);

// Smoker
smoker.addRecipe("smoker/tinker_construct_cooked_bacon_from_bacon", <item:farmersdelight:cooked_bacon>, <item:tconstruct:bacon>, 0.35, 100);
smoker.addRecipe("smoker/vinery_dought", <item:vinery:crusty_bread>, <item:vinery:dough>, 0.35, 100);

Globals.endScript("recipe_minecraft");