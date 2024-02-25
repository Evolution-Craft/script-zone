/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Missing Boat.
 * v0.2 : Add Missing Stair and Slab.
 */

#priority 996

println("Start script/tag minecaft.");
println("Script Priority 996.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Boat
var addingBoatMinecraft = [
	"quark:azalea_boat",
	"quark:blossom_boat"
];
for tag_boat_minecraft in addingBoatMinecraft{
	<tag:items:minecraft:boats>.add(<item:${tag_boat_minecraft}>);
}

// Logs
var addingLogsMinecraft = [
	"infernalexp:luminous_hyphae",
	"infernalexp:luminous_stem",
	"infernalexp:stripped_luminous_hyphae",
	"infernalexp:stripped_luminous_stem"
];
for tag_log_minecraft in addingLogsMinecraft{
	<tag:items:minecraft:logs>.add(<item:${tag_log_minecraft}>);
}

// Slab
var addingSlabMinecraft = [
	"vinery:coarse_dirt_slab",
	"vinery:dirt_slab",
	"vinery:grass_slab",
	"vinery:loam_slab"
];
for tag_slab_minecraft in addingSlabMinecraft{
	<tag:items:minecraft:slabs>.add(<item:${tag_slab_minecraft}>);
}

// Stair
var addingStairMinecraft = [
	"vinery:loam_stairs"
];
for tag_stair_minecraft in addingStairMinecraft{
	<tag:items:minecraft:stairs>.add(<item:${tag_stair_minecraft}>);
}

println("End script/tag minecraft.");