/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("recipe_decorative_blocks");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Shaped

craftingTable.removeByName("decorative_blocks:rocky_dirt");
craftingTable.addShaped("decorative_blocks_rocky_dirt", <item:decorative_blocks:rocky_dirt>, [
	[<item:minecraft:cobblestone>, <item:minecraft:dirt>, <item:minecraft:air>],
	[<item:minecraft:dirt>, <item:minecraft:cobblestone>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_decorative_blocks");