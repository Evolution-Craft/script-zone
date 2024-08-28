/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Firt Issue.
 */

Globals.startScript("recipe_pneumatic_craft");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Shaped
craftingTable.removeByName("pneumaticcraft:sourdough");
craftingTable.addShaped("pneumaticcraft/sourdough", <item:pneumaticcraft:sourdough> * 8, [
	[<tag:items:forge:flour>, <tag:items:forge:flour>, <tag:items:forge:flour>],
	[<tag:items:forge:flour>, <item:pneumaticcraft:yeast_culture_bucket>, <tag:items:forge:flour>],
	[<tag:items:forge:flour>, <tag:items:forge:flour>, <tag:items:forge:flour>]
]);

// Explosion Crafting
<recipetype:pneumaticcraft:explosion_crafting>.removeByName("pneumaticcraft:explosion_crafting/wheat_flour");
<recipetype:pneumaticcraft:explosion_crafting>.addRecipe("pneumaticcraft_explosion_crafting/wheat_flour", <item:minecraft:wheat>, [<item:create:wheat_flour>], 50);

// Pressure Chamber
<recipetype:pneumaticcraft:pressure_chamber>.removeByName("pneumaticcraft:pressure_chamber/wheat_flour");
<recipetype:pneumaticcraft:pressure_chamber>.addRecipe("pneumaticcraft_pressure_chamber/wheat_flour", [<item:minecraft:wheat>], [<item:create:wheat_flour> * 3], 1.5);

Globals.endScript("recipe_pneumatic_craft");