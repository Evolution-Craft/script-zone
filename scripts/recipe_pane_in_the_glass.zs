/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_pane_in_the_glass");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.addShaped("pitg/glass_pane_table", <item:pitg:glass_pane_table>, [
	[<item:minecraft:blackstone_slab>, <tag:items:forge:glass_panes/silica>, <item:minecraft:blackstone_slab>],
	[<item:minecraft:air>, <item:minecraft:blackstone_slab>, <item:minecraft:air>],
	[<item:minecraft:blackstone_slab>, <item:minecraft:blackstone_slab>, <item:minecraft:blackstone_slab>]
]);
craftingTable.addShaped("pitg/glazing_tool", <item:pitg:glazing_tool>, [
	[<tag:items:forge:glass_panes/silica>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);

Globals.endScript("recipe_pane_in_the_glass");