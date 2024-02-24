/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Recipe.
 */
 
println("Start script recipe_enlightened");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

craftingTable.removeByName("enlightened_end:ceruelean_log_to_planks");
craftingTable.addShaped("enlightened_end_cerulean_log_to_planks", <item:enlightened_end:cerulean_planks> * 4, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <tag:items:enlightened_end:cerulean_logs>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

println("End script recipe_enlightened.");