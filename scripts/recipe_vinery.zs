/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_vinery");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.addShaped("vinery/apple_cider", <item:vinery:apple_cider>, [
	[<item:vinery:apple_mash>, <item:vinery:apple_mash>, <item:vinery:apple_mash>],
	[<item:vinery:savanna_grapes_red>, <item:vinery:wine_bottle>, <item:vinery:savanna_grapes_red>],
	[<item:vinery:savanna_grapes_red>, <item:vinery:savanna_grapes_red>, <item:vinery:savanna_grapes_red>]
]);
craftingTable.addShaped("vinery/apple_mash", <item:vinery:apple_mash>, [
	[<item:minecraft:air>, <item:minecraft:apple>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("vinery/apple_pie", <item:vinery:apple_pie>, [
	[<tag:items:evolution_craft:milk>, <tag:items:evolution_craft:milk>, <tag:items:evolution_craft:milk>],
	[<item:vinery:apple_mash>, <item:vinery:apple_mash>, <item:vinery:apple_mash>],
	[<tag:items:minecraft:dough>, <tag:items:minecraft:dough>, <tag:items:minecraft:dough>]
]);
craftingTable.addShaped("vinery/apple_pie_slice_to_apple_pie", <item:vinery:apple_pie>, [
	[<item:vinery:apple_pie_slice>, <item:vinery:apple_pie_slice>, <item:minecraft:air>],
	[<item:vinery:apple_pie_slice>, <item:vinery:apple_pie_slice>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("vinery/chocolate_bread", <item:vinery:chocolate_bread>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<tag:items:minecraft:dough>, <item:minecraft:cocoa_beans>, <tag:items:minecraft:dough>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("vinery/donut", <item:vinery:donut>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<tag:items:minecraft:dough>, <item:minecraft:sugar>, <item:minecraft:sweet_berries>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("vinery/milk_bread", <item:vinery:milk_bread>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<tag:items:minecraft:dough>, <tag:items:evolution_craft:milk>, <tag:items:minecraft:dough>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_vinery");