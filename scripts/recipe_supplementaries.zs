/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix recipe carpet bug.
 * v0.2 : Fix confort compatibility.
 * v0.3 : Fix recipe glass pane bug.
 */

println("Start script recipe_supplementaries.");
println("Script Priority Null.");

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

craftingTable.removeByName("supplementaries:soap/sleeping_bag");
var addingConforts = [
	"sleeping_bag_black",
	"sleeping_bag_blue",
	"sleeping_bag_brown",
	"sleeping_bag_cyan",
	"sleeping_bag_gray",
	"sleeping_bag_green",
	"sleeping_bag_light_blue",
	"sleeping_bag_light_gray",
	"sleeping_bag_lime",
	"sleeping_bag_magenta",
	"sleeping_bag_orange",
	"sleeping_bag_pink",
	"sleeping_bag_purple",
	"sleeping_bag_red",
	"sleeping_bag_white",
	"sleeping_bag_yellow"
];
for tag_conforts in addingConforts{
	<tag:items:comforts:sleeping_bag>.add(<item:comforts:${tag_conforts}>);
}

craftingTable.addShaped("supplementaries_soap/sleeping_bag", <item:comforts:sleeping_bag_white>, [
	[<tag:items:comforts:sleeping_bag>, <item:supplementaries:soap>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

println("End script recipe_supplementaries.");