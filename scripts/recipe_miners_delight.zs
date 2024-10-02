/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_miners_delight");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Shaped
craftingTable.addShaped("miners_delight/copper_pot", <item:miners_delight:copper_pot>, [
	[<item:minecraft:air>, <item:minecraft:iron_shovel>, <item:minecraft:air>],
	[<item:minecraft:copper_ingot>, <item:miners_delight:water_cup>, <item:minecraft:copper_ingot>],
	[<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>]
]);

Globals.endScript("recipe_miners_delight");