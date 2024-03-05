/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Elytra uncategorized.
 */

println("Start script/tag/farmers_delight.");
println("Script Priority Null.");
 
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Heat Sources
var addingHeatSources = [
	"vinery:stove"
];
for tag_heat_sources in addingHeatSources{
	<tag:items:farmersdelight:heatsources>.add(<item:${tag_heat_sources}>);
}

println("End script/tag/farmers_delight.");