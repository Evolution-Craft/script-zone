/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_supplementaries");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.addShaped("supplementaries/soap/carpet", <item:minecraft:white_carpet>, [
	[<tag:items:minecraft:carpets>, <item:supplementaries:soap>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("supplementaries/soap/glass_pane", <item:minecraft:glass_pane>, [
	[<tag:items:forge:glass_panes/silica>, <item:supplementaries:soap>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("supplementaries/soap/shard", <item:quark:clear_shard>, [
	[<tag:items:quark:shards>, <item:supplementaries:soap>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("supplementaries/soap/sleeping_bag", <item:comforts:sleeping_bag_white>, [
	[<tag:items:comforts:sleeping_bag>, <item:supplementaries:soap>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_supplementaries");