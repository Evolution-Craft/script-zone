/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Recipe.
 */

println("Start script recipe_sophisticated_backpacks.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

craftingTable.removeByName("sophisticatedbackpacks:tool_swapper_upgrade");
craftingTable.addShaped("sophisticatedbackpacks_tool_swapper_upgrade", <item:sophisticatedbackpacks:tool_swapper_upgrade>, [
	[<item:minecraft:redstone>, <item:minecraft:iron_sword>, <item:minecraft:redstone>],
	[<item:minecraft:iron_pickaxe>, <item:sophisticatedbackpacks:upgrade_base>, <item:minecraft:iron_axe>],
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_shovel>, <item:minecraft:iron_ingot>]
]);

println("End script recipe_sophisticated_backpacks.");