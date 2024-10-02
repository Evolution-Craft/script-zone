/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_pneumatic_craft");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Shapeless
craftingTable.addShapeless("pneumaticcraft/pneumaticcraft/raw_salmon_tempura", <item:pneumaticcraft:raw_salmon_tempura>, [<tag:items:forge:salmones>, <item:pneumaticcraft:sourdough>]);

// Shaped
craftingTable.addShaped("pneumaticcraft/sourdough", <item:pneumaticcraft:sourdough> * 8, [
	[<tag:items:forge:flour>, <tag:items:forge:flour>, <tag:items:forge:flour>],
	[<tag:items:forge:flour>, <item:pneumaticcraft:yeast_culture_bucket>, <tag:items:forge:flour>],
	[<tag:items:forge:flour>, <tag:items:forge:flour>, <tag:items:forge:flour>]
]);

// Explosion Crafting
<recipetype:pneumaticcraft:explosion_crafting>.addRecipe("pneumaticcraft_explosion_crafting/wheat_flour", <item:minecraft:wheat>, [<item:create:wheat_flour>], 50);

// Pressure Chamber
<recipetype:pneumaticcraft:pressure_chamber>.addRecipe("pneumaticcraft_pressure_chamber/wheat_flour", [<item:minecraft:wheat>], [<item:create:wheat_flour> * 3], 1.5);

Globals.endScript("recipe_pneumatic_craft");