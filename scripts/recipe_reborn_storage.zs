/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Replace Silicon Refined Storage with forge tag.
 */

Globals.startScript("recipe_reborn_storage");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shapeless
craftingTable.removeByName("rebornstorage:parts/raw_super_advanced_processor");
craftingTable.addShapeless("rebornstorage/parts_raw_super_advanced_processor", <item:rebornstorage:raw_super_advanced_processor>, [<item:refinedstorage:processor_binding>, <item:minecraft:netherite_ingot>, <tag:items:forge:silicon>, <item:minecraft:redstone>]);

// Shaped
craftingTable.removeByName("rebornstorage:multiblock_frame");
craftingTable.addShaped("rebornstorage/multiblock_frame", <item:rebornstorage:multiblock_frame> * 6, [
	[<item:refinedstorage:machine_casing>, <item:refinedstorage:improved_processor>, <item:refinedstorage:machine_casing>],
	[<item:refinedstorage:improved_processor>, <tag:items:forge:silicon>, <item:refinedstorage:improved_processor>],
	[<item:refinedstorage:machine_casing>, <item:refinedstorage:improved_processor>, <item:refinedstorage:machine_casing>]
]);

craftingTable.removeByName("rebornstorage:multiblock_heat");
craftingTable.addShaped("rebornstorage/multiblock_heat", <item:rebornstorage:multiblock_heat>, [
	[<item:rebornstorage:multiblock_frame>, <item:refinedstorage:quartz_enriched_iron>, <item:rebornstorage:multiblock_frame>],
	[<item:refinedstorage:quartz_enriched_iron>, <tag:items:forge:silicon>, <item:refinedstorage:quartz_enriched_iron>],
	[<item:rebornstorage:multiblock_frame>, <item:refinedstorage:quartz_enriched_iron>, <item:rebornstorage:multiblock_frame>]
]);

Globals.endScript("recipe_reborn_storage");