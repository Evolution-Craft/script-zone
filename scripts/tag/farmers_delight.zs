/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add tag heat sources.
 * v0.2 : Fix tag knife.
 */

Globals.startScript("tag/farmers_delight");
Globals.priorityScript("Null");

import crafttweaker.api.block.Block;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Heat Sources
var addingHeatSources = [
	"ends_delight:end_stove",
	"vinery:stove"
];
for tag_heat_sources in addingHeatSources {
	<tag:blocks:farmersdelight:heatsources>.add(<block:${tag_heat_sources}>);
	<tag:blocks:mmlib:heat_conductors>.add(<block:${tag_heat_sources}>);
}

// Knives
var addingToolsKnives = [
	"enlightened_end:adamantite_knife",
	"croptopia:knife",
	"contenttweaker:knife/copper_knife",
	"contenttweaker:knife/steel_knife",
	"fiow:flint_knife"
];
for tag_tools_knives in addingToolsKnives {
	<tag:items:farmersdelight:straw_harvesters>.add(<item:${tag_tools_knives}>);
}

Globals.endScript("tag/farmers_delight");