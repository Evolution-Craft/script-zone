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

// Piglin Loved
var addingPiglinLovedMinecraft = [
	"aquaculture:goldfish",
	"archarsenal:bow_gold",
	"betterbundles:gold_bundle",
	"bloodmagic:goldfragment",
	"bloodmagic:goldgravel",
	"createaddition:gold_wire",
	"createaddition:gold_spool",
	"createaddition:gold_rod",
	"cyclic:gold_bars",
	"cyclic:gold_chain",
	"cyclic:gold_lantern",
	"cyclic:gold_soul_lantern",
	"electrodynamics:wiregold",
	"electrodynamics:wireinsulatedgold",
	"electrodynamics:wirehighlyinsulatedgold",
	"electrodynamics:wireceramicinsulatedgold",
	"electrodynamics:wirelogisticsgold",
	"electrodynamics:impuredustgold",
	"electrodynamics:crystalgold",
	"galosphere:golden_lichen_cordyceps",
	"galosphere_delight:golden_lichen_crate",
	"immersiveengineering:sheetmetal_gold",
	"immersiveengineering:slab_sheetmetal_gold",
	"immersiveposts:fence_gold",
	"infernalexp:molten_gold_cluster",
	"mcwlights:golden_chain",
	"mcwwindows:golden_curtain_rod",
	"minecraft:gold_nugget",
	"miniutilities:gold_spikes",
	"miniutilities:gold_opinium_core",
	"naturesaura:gold_leaf",
	"reactive:gold_symbol",
	"reactive:gold_foam",
	"rechiseled:gold_block_beams",
	"rechiseled:gold_block_beams_connecting",
	"rechiseled:gold_block_bordered",
	"rechiseled:gold_block_bordered_connecting",
	"rechiseled:gold_block_lines",
	"rechiseled:gold_block_lines_connecting",
	"rechiseled:gold_block_pattern",
	"rechiseled:gold_block_pattern_connecting",
	"rechiseled:gold_block_polished",
	"rechiseled:gold_block_polished_connecting",
	"rechiseled:gold_block_scales",
	"rechiseled:gold_block_scales_connecting",
	"rechiseled:gold_block_small_bricks",
	"rechiseled:gold_block_small_bricks_connecting",
	"rechiseled:gold_block_small_tiles",
	"rechiseled:gold_block_small_tiles_connecting",
	"rechiseled:gold_block_striped",
	"rechiseled:gold_block_striped_connecting",
	"rechiseled:gold_block_smooth",
	"rechiseled:gold_block_tiles",
	"rechiseled:gold_block_tiles_connecting",
	"thermal:gold_dust",
	"thermal:gold_gear",
	"thermal:gold_plate"
];
for tag_piglin_loved_minecraft in addingPiglinLovedMinecraft {
	<tag:items:minecraft:piglin_loved>.add(<item:${tag_piglin_loved_minecraft}>);
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