/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Salt.
 */

Globals.startScript("recipe_salt");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.addShaped("salt/salt_block", <item:salt:salt_block>, [
	[<tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>],
	[<tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>],
	[<tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>, <tag:items:forge:dusts/salt>]
]);

Globals.endScript("recipe_salt");