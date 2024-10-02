/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_infernal_expansion");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Shaped
craftingTable.addShaped("infernalexp_luminous_hyphae_from_luminous_stem", <item:infernalexp:luminous_hyphae> * 3, [
	[<item:infernalexp:luminous_stem>, <item:infernalexp:luminous_stem>, <item:minecraft:air>],
	[<item:infernalexp:luminous_stem>, <item:infernalexp:luminous_stem>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("infernalexp_stripped_luminous_hyphae_from_stripped_luminous_stem", <item:infernalexp:stripped_luminous_hyphae> * 3, [
	[<item:infernalexp:stripped_luminous_stem>, <item:infernalexp:stripped_luminous_stem>, <item:minecraft:air>],
	[<item:infernalexp:stripped_luminous_stem>, <item:infernalexp:stripped_luminous_stem>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_infernal_expansion");