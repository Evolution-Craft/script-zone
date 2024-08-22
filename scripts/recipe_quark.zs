/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Recipe
 */

Globals.startScript("recipe_quark");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Shaped
craftingTable.removeByName("quark:building/crafting/compressed/chorus_fruit_block");
craftingTable.addShaped("quark/building/crafting/compressed/chorus_fruit_block", <item:quark:chorus_fruit_block>, [
	[<item:minecraft:chorus_fruit>, <item:minecraft:chorus_fruit>, <item:minecraft:air>],
	[<item:minecraft:chorus_fruit>, <item:minecraft:chorus_fruit>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_quark");