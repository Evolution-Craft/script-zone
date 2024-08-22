/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Recipe
 */

Globals.startScript("recipe_endersdelight");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Shapeless
craftingTable.removeByName("endersdelight:chorus_fruit_from_crate");
craftingTable.addShapeless("endersdelight_chorus_plant_from_crate", <item:minecraft:chorus_plant> * 9, [<item:endersdelight:chorus_crate>]);

// Shaped
craftingTable.removeByName("endersdelight:chorus_crate");
craftingTable.addShaped("endersdelight/chorus_crate", <item:endersdelight:chorus_crate>, [
	[<item:minecraft:chorus_plant>, <item:minecraft:chorus_plant>, <item:minecraft:chorus_plant>],
	[<item:minecraft:chorus_plant>, <item:minecraft:chorus_plant>, <item:minecraft:chorus_plant>],
	[<item:minecraft:chorus_plant>, <item:minecraft:chorus_plant>, <item:minecraft:chorus_plant>]
]);

Globals.endScript("recipe_endersdelight");