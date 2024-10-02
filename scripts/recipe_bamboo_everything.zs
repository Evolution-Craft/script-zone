/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_bamboo_everything");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.addShaped("bambooeverything_bamboo_torch", <item:bambooeverything:bamboo_torch> * 4, [
	[<item:minecraft:air>, <item:minecraft:coal>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:bamboo>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("bambooeverything_dry_bamboo_torch", <item:bambooeverything:dry_bamboo_torch> * 4, [
	[<item:minecraft:air>, <item:minecraft:coal>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:bambooeverything:dry_bamboo>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_bamboo_everything");