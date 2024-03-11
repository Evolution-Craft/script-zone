/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Salt.
 */

println("Start script recipe_salt.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.removeByName("mekanism:storage_blocks/salt");
craftingTable.removeByName("salt:salt_packing");
craftingTable.addShaped("salt_salt_block", <item:salt:salt_block>, [
	[<tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>],
	[<tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>],
	[<tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>]
]);

println("End script recipe_salt.");