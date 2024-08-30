/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Recipe.
 */

Globals.startScript("recipe_undergarden");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.removeByName("undergarden:shard_torch");
craftingTable.addShaped("undergarden/shard_torch", <item:undergarden:shard_torch> * 4, [
	[<item:minecraft:air>, <item:undergarden:utheric_shard>, <item:minecraft:air>],
	[<item:minecraft:air>, <tag:items:balm:wooden_rods>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_undergarden");