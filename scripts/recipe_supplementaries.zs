/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix recipe carpet bug.
 * v0.2 : Fix confort compatibility.
 * v0.3 : Fix recipe glass pane bug.
 * v0.4 : Add quark glass shard support.
 */

Globals.startScript("recipe_supplementaries");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.removeByName("supplementaries:soap/carpet");
craftingTable.addShaped("supplementaries_soap/carpet", <item:minecraft:white_carpet>, [
	[<tag:items:minecraft:carpets>, <item:supplementaries:soap>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShaped("supplementaries_soap/glass_pane", <item:minecraft:glass_pane>, [
	[<tag:items:forge:glass_panes/silica>, <item:supplementaries:soap>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShaped("supplementaries_soap/shard", <item:quark:clear_shard>, [
	[<tag:items:quark:shards>, <item:supplementaries:soap>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("supplementaries:soap/sleeping_bag");
craftingTable.addShaped("supplementaries_soap/sleeping_bag", <item:comforts:sleeping_bag_white>, [
	[<tag:items:comforts:sleeping_bag>, <item:supplementaries:soap>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_supplementaries");