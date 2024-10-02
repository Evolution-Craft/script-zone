/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_simply_tea");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shapeless
craftingTable.addShapeless("simplytea_chorus_petal", <item:simplytea:chorus_petal> * 4, [<item:minecraft:chorus_fruit>]);
craftingTable.addShapeless("simplytea_cup_tea_chai", <item:simplytea:cup_tea_chai>, [<item:simplytea:cup>, <item:simplytea:teabag_black>, <tag:items:forge:cinnamon>, <item:simplytea:teapot_frothed>]);
craftingTable.addShapeless("simplytea_ice_cube", <item:simplytea:ice_cube> * 4, [<item:minecraft:ice>]);

// Shaped
craftingTable.addShaped("simplytea_tea/teabag_chorus", <item:simplytea:teabag_chorus>, [
	[<item:simplytea:teabag>, <tag:items:forge:crops/chorus_petal>, <item:minecraft:air>],
	[<tag:items:forge:crops/chorus_petal>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("simplytea_tea/teabag_green", <item:simplytea:teabag_green>, [
	[<item:simplytea:teabag>, <tag:items:forge:crops/tea>, <item:minecraft:air>],
	[<tag:items:forge:crops/tea>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_simply_tea");