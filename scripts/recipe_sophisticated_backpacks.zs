/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_sophisticated_backpacks");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;

// Shaped
craftingTable.addShaped("sophisticatedbackpacks/tool_swapper_upgrade", <item:sophisticatedbackpacks:tool_swapper_upgrade>, [
	[<item:minecraft:redstone>, <item:minecraft:iron_sword>, <item:minecraft:redstone>],
	[<item:minecraft:iron_pickaxe>, <item:sophisticatedbackpacks:upgrade_base>, <item:minecraft:iron_axe>],
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_shovel>, <item:minecraft:iron_ingot>]
]);

Globals.endScript("recipe_sophisticated_backpacks");