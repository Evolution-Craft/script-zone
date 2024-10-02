/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_refined_storage");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shapeless
craftingTable.addShapeless("refinedstorage_raw_advanced_processor", <item:refinedstorage:raw_advanced_processor>, [<item:refinedstorage:processor_binding>, <item:minecraft:diamond>, <tag:items:forge:silicon>, <item:minecraft:redstone>]);
craftingTable.addShapeless("refinedstorage_raw_basic_processor", <item:refinedstorage:raw_basic_processor>, [<item:refinedstorage:processor_binding>, <item:minecraft:iron_ingot>, <tag:items:forge:silicon>, <item:minecraft:redstone>]);
craftingTable.addShapeless("refinedstorage_raw_improved_processor", <item:refinedstorage:raw_improved_processor>, [<item:refinedstorage:processor_binding>, <item:minecraft:gold_ingot>, <tag:items:forge:silicon>, <item:minecraft:redstone>]);

// Shaped
craftingTable.addShaped("refinedstorage/controller", <item:refinedstorage:controller>, [
	[<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:advanced_processor>, <item:refinedstorage:quartz_enriched_iron>],
	[<tag:items:forge:silicon>, <item:refinedstorage:machine_casing>, <tag:items:forge:silicon>],
	[<item:refinedstorage:quartz_enriched_iron>, <tag:items:forge:silicon>, <item:refinedstorage:quartz_enriched_iron>]
]);
craftingTable.addShaped("refinedstorage/1k_storage_part", <item:refinedstorage:1k_storage_part>, [
	[<tag:items:forge:silicon>, <item:refinedstorage:quartz_enriched_iron>, <tag:items:forge:silicon>],
	[<tag:items:forge:glass>, <item:minecraft:redstone>, <tag:items:forge:glass>],
	[<tag:items:forge:silicon>, <tag:items:forge:glass>, <tag:items:forge:silicon>]
]);
craftingTable.addShaped("refinedstorage/64k_fluid_storage_part", <item:refinedstorage:64k_fluid_storage_part>, [
	[<tag:items:forge:silicon>, <item:refinedstorage:quartz_enriched_iron>, <tag:items:forge:silicon>],
	[<tag:items:forge:glass>, <item:minecraft:bucket>, <tag:items:forge:glass>],
	[<tag:items:forge:silicon>, <tag:items:forge:glass>, <tag:items:forge:silicon>]
]);

Globals.endScript("recipe_refined_storage");