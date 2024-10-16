/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_quark");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;

// Shaped
craftingTable.addShaped("quark/building/crafting/compressed/chorus_fruit_block", <item:quark:chorus_fruit_block>, [
	[<item:minecraft:chorus_fruit>, <item:minecraft:chorus_fruit>, <item:minecraft:air>],
	[<item:minecraft:chorus_fruit>, <item:minecraft:chorus_fruit>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_quark");