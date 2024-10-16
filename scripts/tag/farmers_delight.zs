/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 987

Globals.startScript("tag/farmers_delight");
Globals.priorityScript("987");

import crafttweaker.api.block.Block;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Blood Slime
var addingBloodSlime = [
	"tconstruct:blood_slime_fern",
	"tconstruct:blood_slime_tall_grass"
];
for tag_blood_slime in addingBloodSlime {
	<tag:items:farmersdelight:blood_slime>.add(<item:${tag_blood_slime}>);
}

// Heat Sources
var addingHeatSources = [
	"ends_delight:end_stove",
	"tconstruct:blazewood",
	"tconstruct:lavawood",
	"vinery:stove"
];
for tag_heat_sources in addingHeatSources {
	<tag:blocks:farmersdelight:heat_sources>.add(<block:${tag_heat_sources}>);
	<tag:blocks:mmlib:heat_conductors>.add(<block:${tag_heat_sources}>);
}

// Mineable Knife
<tag:blocks:farmersdelight:mineable/knife>.add(<block:thermal:rice_block>);

// Straw Blocks
<tag:blocks:farmersdelight:straw_blocks>.add(<block:thermal:rice_block>);

// Tray Heat Sources
var addingTrayHeatSources = [
	"infernalexp:glow_campfire",
	"decorative_blocks:brazier",
	"decorative_blocks:soul_brazier",
	"ends_delight:end_stove",
	"vinery:stove"
];
for tag_tray_heat_sources in addingTrayHeatSources {
	<tag:blocks:farmersdelight:tray_heat_sources>.add(<block:${tag_tray_heat_sources}>);
	<tag:blocks:mmlib:tray_heat_sources>.add(<block:${tag_tray_heat_sources}>);
}

// Knives
var addingToolsKnives = [
	"enlightened_end:adamantite_knife",
	"croptopia:knife",
	"contenttweaker:evolution_craft/knife/copper_knife",
	"contenttweaker:evolution_craft/knife/steel_knife",
	"contenttweaker:evolution_craft/knife/stone_knife",
	"contenttweaker:evolution_craft/knife/wooden_knife",
	"fiow:flint_knife",
	"tconstruct:dagger"
];
for tag_tools_knives in addingToolsKnives {
	<tag:items:farmersdelight:straw_harvesters>.add(<item:${tag_tools_knives}>);
	<tag:items:farmersdelight:tools/knives>.add(<item:${tag_tools_knives}>);
}

Globals.endScript("tag/farmers_delight");