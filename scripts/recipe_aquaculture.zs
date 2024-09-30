/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Recipe.
 */

Globals.startScript("recipe_aquaculture");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Shapeless
craftingTable.addShapeless("pack_expert_crafting/aquaculture_planks_from_driftwood", <item:minecraft:oak_planks> * 2, [<item:aquaculture:driftwood>]);

// Shaped
craftingTable.addShaped("aquaculture/turtle_soup", <item:aquaculture:turtle_soup>, [
	[<tag:items:aquaculturedelight:turtles>, <item:croptopia:water_bottle>, <item:minecraft:air>],
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:bowl>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_aquaculture");