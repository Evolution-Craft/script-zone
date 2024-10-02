/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_apotheosis");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Fletching
packAddRecipeApotheosisFletching("fletching/barbed_arrow", <item:minecraft:iron_nugget>, <item:minecraft:stick>, <item:minecraft:feather>, <item:archarsenal:barbed_arrow>, 2);
packAddRecipeApotheosisFletching("fletching/phantom_arrow",<item:minecraft:phantom_membrane>, <item:minecraft:arrow>, <item:minecraft:phantom_membrane>, <item:unusualend:phantom_arrow>, 4);
packAddRecipeApotheosisFletching("fletching/shark_tooth_arrow",<item:alexsmobs:shark_tooth>, <item:minecraft:stick>, <item:minecraft:kelp>, <item:alexsmobs:shark_tooth_arrow>, 6);
packAddRecipeApotheosisFletching("fletching/obsidian_arrow",<item:create:powdered_obsidian>, <item:minecraft:arrow>, <item:minecraft:feather>, <item:apotheosis:obsidian_arrow>, 4);

Globals.endScript("recipe_apotheosis");