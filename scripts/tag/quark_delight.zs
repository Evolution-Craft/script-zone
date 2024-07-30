/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Empty Tag.
 * v0.2 : Add priority.
 */

#priority 982

Globals.startScript("tag/quark_delight");
Globals.priorityScript("982");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Seeds
var addingHollowQuarkDelight = [
	"twilightforest:hollow_oak_log",
	"twilightforest:hollow_spruce_log",
	"twilightforest:hollow_birch_log",
	"twilightforest:hollow_jungle_log",
	"twilightforest:hollow_acacia_log",
	"twilightforest:hollow_dark_oak_log",
	"twilightforest:hollow_crimson_stem",
	"twilightforest:hollow_warped_stem",
	"twilightforest:hollow_canopy_log",
	"twilightforest:hollow_dark_log",
	"twilightforest:hollow_mangrove_log",
	"twilightforest:hollow_mining_log",
	"twilightforest:hollow_sorting_log",
	"twilightforest:hollow_time_log",
	"twilightforest:hollow_transformation_log",
	"twilightforest:hollow_twilight_oak_log"
];
for tag_adding_hollow_duark_delight in addingHollowQuarkDelight {
	<tag:items:quarkdelight:hollow_logs>.add(<item:${tag_adding_hollow_duark_delight}>);
}

Globals.endScript("tag/quark_delight");