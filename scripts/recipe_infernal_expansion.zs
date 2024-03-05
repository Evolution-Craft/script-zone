/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Missing Recipe.
 */
 
println("Start script recipe_infernal_expansion.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

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

println("End script recipe_infernal_expansion.");