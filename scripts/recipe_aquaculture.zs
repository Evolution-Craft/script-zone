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
craftingTable.removeByName("aquaculture:planks_from_driftwood");
craftingTable.addShapeless("pack_expert_crafting/aquaculture_planks_from_driftwood", <item:minecraft:oak_planks> * 2, [<item:aquaculture:driftwood>]);

Globals.endScript("recipe_aquaculture");