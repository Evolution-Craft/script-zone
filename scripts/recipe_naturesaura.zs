/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Update Recipe.
 */

Globals.startScript("recipe_naturesaura");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shapeless
craftingTable.removeByName("naturesaura:ancient_planks");
craftingTable.addShapeless("naturesaura/ancient_planks", <item:naturesaura:ancient_planks> * 2, [<tag:items:naturesaura:ancient_logs>]);

Globals.endScript("recipe_naturesaura");