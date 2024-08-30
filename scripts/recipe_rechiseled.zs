/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Modify Recipe.
 */

Globals.startScript("recipe_rechiseled");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shapeless
craftingTable.removeByName("rechiseled:chisel");
craftingTable.addShaped("pack_expert_crafting/rechiseled/chisel", <item:rechiseled:chisel>, [
	[<item:minecraft:air>, <tag:items:forge:ingots/steel>, <item:minecraft:air>],
	[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_rechiseled");