/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Missing Logs and Woods.
 */

#priority 992

Globals.startScript("tag/create");
Globals.priorityScript("992");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Crushed Raw Material
var addingCrushedRawMaterialCreate = [
	"contenttweaker:ae2/crushed_certus_quartz",
	"contenttweaker:ae2/crushed_charged_certus_quartz",
	"contenttweaker:ae2/crushed_fluix",
	"contenttweaker:ae2/crushed_quartz",
	"contenttweaker:mekanism/crushed_refined_glowstone",
	"contenttweaker:mekanism/crushed_refined_obsidian",
	"contenttweaker:mekanism/crushed_steel",
	"contenttweaker:tconstruct/crushed_ancient_debris",
	"contenttweaker:tconstruct/crushed_cobalt_ore",
	"contenttweaker:tconstruct/crushed_manyullyn",
	"contenttweaker:tconstruct/crushed_pig_iron",
	"contenttweaker:tconstruct/crushed_queens_slime",
	"contenttweaker:tconstruct/crushed_rose_gold",
	"contenttweaker:tconstruct/crushed_slimesteel"
];
for tag_crushed_raw_material_create in addingCrushedRawMaterialCreate {
	<tag:items:create:crushed_raw_materials>.add(<item:${tag_crushed_raw_material_create}>);
}

// Stripped Log
var addingStrippedLogCreate = [
	"botania:glimmering_stripped_dreamwood_log",
	"botania:glimmering_stripped_livingwood_log",
	"croptopia:stripped_cinnamon_log",
	"enlightened_end:stripped_cerulean_stalk_block",
	"enlightened_end:stripped_indigo_stem",
	"undergarden:stripped_grongle_log",
	"undergarden:stripped_smogstem_log",
	"undergarden:stripped_wigglewood_log",
	"vinery:stripped_cherry_log",
	"vinery:stripped_old_cherry_log"
];
for tag_stripped_log_create in addingStrippedLogCreate {
	<tag:items:create:modded_stripped_logs>.add(<item:${tag_stripped_log_create}>);
}

// Stripped Wood
var addingStrippedWoodCreate = [
	"botania:glimmering_stripped_dreamwood",
	"botania:glimmering_stripped_livingwood",
	"croptopia:stripped_cinnamon_wood",
	"enlightened_end:stripped_indigo_hyphae",
	"undergarden:stripped_grongle_wood",
	"undergarden:stripped_smogstem_wood",
	"undergarden:stripped_wigglewood_wood",
	"vinery:stripped_cherry_wood",
	"vinery:stripped_old_cherry_wood"
];
for tag_stripped_wood_create in addingStrippedWoodCreate {
	<tag:items:create:modded_stripped_wood>.add(<item:${tag_stripped_wood_create}>);
}

Globals.endScript("tag/create");