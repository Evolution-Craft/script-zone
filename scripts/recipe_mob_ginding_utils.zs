/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_mob_ginding_utils");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.addShaped("pack_expert_crafting/mob_grinding_utils/saw", <item:mob_grinding_utils:saw>, [
	[<item:minecraft:iron_sword>, <item:minecraft:diamond_block>, <item:minecraft:iron_sword>],
	[<item:miniutilities:iron_spikes>, <item:minecraft:redstone_block>, <item:miniutilities:iron_spikes>],
	[<item:minecraft:diamond_block>, <tag:items:forge:storage_blocks/steel>, <item:minecraft:diamond_block>]
]);

Globals.endScript("recipe_mob_ginding_utils");