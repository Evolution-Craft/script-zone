/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Missing Crafting.
 * v0.2 : Add Missing Tags.
 * v0.3 : Support for Unusual End.
 */

Globals.startScript("recipe_simply_tea");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shapeless
craftingTable.addShapeless("simplytea_chorus_petal", <item:simplytea:chorus_petal> * 4, [<item:minecraft:chorus_fruit>]);
craftingTable.removeByName("simplytea:cup_tea_chai");
craftingTable.addShapeless("simplytea_cup_tea_chai", <item:simplytea:cup_tea_chai>, [<item:simplytea:cup>, <item:simplytea:teabag_black>, <tag:items:forge:cinnamon>, <item:simplytea:teapot_frothed>]);
craftingTable.addShapeless("simplytea_ice_cube", <item:simplytea:ice_cube> * 4, [<item:minecraft:ice>]);

// Shaped
craftingTable.removeByName("simplytea:teabag_chorus");
craftingTable.addShaped("simplytea_tea_teabag_chorus", <item:simplytea:teabag_chorus>, [
	[<item:simplytea:teabag>, <tag:items:forge:crops/chorus_petal>, <item:minecraft:air>],
	[<tag:items:forge:crops/chorus_petal>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("simplytea:teabag_green");
craftingTable.addShaped("simplytea_tea_teabag_green", <item:simplytea:teabag_green>, [
	[<item:simplytea:teabag>, <tag:items:forge:crops/tea>, <item:minecraft:air>],
	[<tag:items:forge:crops/tea>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_simply_tea");