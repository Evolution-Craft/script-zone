/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Recipe.
 */
 
println("Start script recipe_bamboo_everything");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

craftingTable.removeByName("bambooeverything:bamboo_torch");
craftingTable.addShaped("bambooeverything_bamboo_torch", <item:bambooeverything:bamboo_torch> * 4, [
	[<item:minecraft:air>, <item:minecraft:coal>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:bamboo>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.removeByName("bambooeverything:dry_bamboo_torch");
craftingTable.addShaped("bambooeverything_dry_bamboo_torch", <item:bambooeverything:dry_bamboo_torch> * 4, [
	[<item:minecraft:air>, <item:minecraft:coal>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:bambooeverything:dry_bamboo>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

println("End script recipe_bamboo_everything.");