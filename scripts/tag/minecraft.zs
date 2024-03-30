/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Missing Boat.
 * v0.2 : Add Missing Stair and Slab.
 * v0.3 : Add Missing Sapling.
 */

#priority 996

Globals.startScript("tag/minecaft");
Globals.priorityScript("996");

import crafttweaker.api.block.Block;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Boat
var addingBoatMinecraft = [
	"quark:azalea_boat",
	"quark:blossom_boat"
];
for tag_boat_minecraft in addingBoatMinecraft {
	<tag:items:minecraft:boats>.add(<item:${tag_boat_minecraft}>);
}

// Climbable
var addingClimbableMinecraft = [
	"cyclic:copper_bars",
	"cyclic:copper_chain",
	"cyclic:gold_bars",
	"cyclic:gold_chain",
	"cyclic:netherite_bars",
	"cyclic:netherite_chain",
	"minecraft:chain",
	"minecraft:iron_bars",
	"tconstruct:ender_slime_vine",
	"tconstruct:sky_slime_vine",
	"undergarden:cloggrum_bars"
];
for tag_climbable_minecraft in addingClimbableMinecraft {
	<tag:blocks:minecraft:climbable>.add(<block:${tag_climbable_minecraft}>);
}

// Logs
var addingLogsMinecraft = [
	"infernalexp:luminous_hyphae",
	"infernalexp:luminous_stem",
	"infernalexp:stripped_luminous_hyphae",
	"infernalexp:stripped_luminous_stem"
];
for tag_log_minecraft in addingLogsMinecraft {
	<tag:items:minecraft:logs>.add(<item:${tag_log_minecraft}>);
}

// Slab
var addingSlabMinecraft = [
	"vinery:coarse_dirt_slab",
	"vinery:dirt_slab",
	"vinery:grass_slab",
	"vinery:loam_slab"
];
for tag_slab_minecraft in addingSlabMinecraft {
	<tag:items:minecraft:slabs>.add(<item:${tag_slab_minecraft}>);
}

// Sapling
var addingSaplingMinecraft = [
	"vinery:cherry_sapling",
	"vinery:old_cherry_sapling"
];
for tag_sapling_minecraft in addingSaplingMinecraft {
	<tag:items:minecraft:saplings>.add(<item:${tag_sapling_minecraft}>);
}

// Stair
var addingStairMinecraft = [
	"vinery:loam_stairs"
];
for tag_stair_minecraft in addingStairMinecraft {
	<tag:items:minecraft:stairs>.add(<item:${tag_stair_minecraft}>);
}

Globals.endScript("tag/minecaft");