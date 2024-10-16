/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 500

Globals.startScript("pack_mod_expert_recipe_log");
Globals.priorityScript("500");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

val expert_log_to_planks = packModeSetting.packModeSettingLogsCount();

if (packModeSetting.packModeSettingLogs() == true) {

	Globals.packExpertScript("Log - Active");

	// Shapeless
	var packModeExpertPlanks = {
		"botania:dreamwood_planks" : <tag:items:botania:dreamwood_logs>,
		"botania:livingwood_planks" : <tag:items:botania:livingwood_logs>,
		"ecologics:azalea_planks" : <tag:items:ecologics:azalea_logs>,
		"ecologics:flowering_azalea_planks" : <tag:items:ecologics:flowering_azalea_logs>,
		"ecologics:coconut_planks" : <tag:items:ecologics:coconut_logs>,
		"ecologics:walnut_planks" : <tag:items:ecologics:walnut_logs>,
		"enlightened_end:cerulean_planks" : <tag:items:enlightened_end:cerulean_logs>,
		"enlightened_end:indigo_planks" : <tag:items:enlightened_end:indigo_stems>,
		"integrateddynamics:menril_planks" : <tag:items:integrateddynamics:menril_logs>,
		"minecraft:acacia_planks" : <tag:items:minecraft:acacia_logs>,
		"minecraft:birch_planks" : <tag:items:minecraft:birch_logs>,
		"minecraft:crimson_planks" : <tag:items:minecraft:crimson_stems>,
		"minecraft:dark_oak_planks" : <tag:items:minecraft:dark_oak_logs>,
		"minecraft:jungle_planks" : <tag:items:minecraft:jungle_logs>,
		"minecraft:oak_planks" : <tag:items:minecraft:oak_logs>,
		"minecraft:spruce_planks" : <tag:items:minecraft:spruce_logs>,
		"minecraft:warped_planks" : <tag:items:minecraft:warped_stems>,
		"quark:azalea_planks" : <tag:items:quark:azalea_logs>,
		"quark:blossom_planks" : <tag:items:quark:blossom_logs>,
		"tconstruct:bloodshroom_planks" : <tag:items:tconstruct:bloodshroom_logs>,
		"tconstruct:greenheart_planks" : <tag:items:tconstruct:greenheart_logs>,
		"tconstruct:skyroot_planks" : <tag:items:tconstruct:skyroot_logs>,
		"twilightforest:canopy_planks" : <tag:items:twilightforest:canopy_logs>,
		"twilightforest:dark_planks" : <tag:items:twilightforest:darkwood_logs>,
		"twilightforest:mangrove_planks" : <tag:items:twilightforest:mangrove_logs>,
		"twilightforest:mining_planks" : <tag:items:twilightforest:mining_logs>,
		"twilightforest:sorting_planks" : <tag:items:twilightforest:sortwood_logs>,
		"twilightforest:time_planks" : <tag:items:twilightforest:timewood_logs>,
		"twilightforest:transformation_planks" : <tag:items:twilightforest:transwood_logs>,
		"twilightforest:twilight_oak_planks" : <tag:items:twilightforest:twilight_oak_logs>,
		"undergarden:grongle_planks" : <tag:items:undergarden:grongle_logs>,
		"undergarden:smogstem_planks" : <tag:items:undergarden:smogstem_logs>,
		"undergarden:wigglewood_planks" : <tag:items:undergarden:wigglewood_logs>,
		"vinery:cherry_planks" : <tag:items:vinery:cherry_logs>
	};
	for packModeExpertPlanksOut, packModeExpertPlanksIn in packModeExpertPlanks {
		if (packModeExpertPlanksOut == "quark:azalea_planks") {
			craftingTable.addShapeless("pack_expert_crafting/log/quark_" + <item:${packModeExpertPlanksOut}>.registryName.path, <item:${packModeExpertPlanksOut}> * expert_log_to_planks, [packModeExpertPlanksIn]);
		} else {
			craftingTable.addShapeless("pack_expert_crafting/log/" + <item:${packModeExpertPlanksOut}>.registryName.path, <item:${packModeExpertPlanksOut}> * expert_log_to_planks, [packModeExpertPlanksIn]);
		}
	}

	craftingTable.addShapeless("pack_expert_crafting_rubberwood_planks", <item:myrtrees:rubberwood_planks> * expert_log_to_planks, [<item:myrtrees:rubberwood_log>]);
} else {
	var packModeExpertDisablePlanks = {
		"canopy_planks" : <tag:items:twilightforest:canopy_logs>,
		"dark_planks" : <tag:items:twilightforest:darkwood_logs>,
		"mangrove_planks" : <tag:items:twilightforest:mangrove_logs>,
		"mining_planks" : <tag:items:twilightforest:mining_logs>,
		"sorting_planks" : <tag:items:twilightforest:sortwood_logs>,
		"time_planks" : <tag:items:twilightforest:timewood_logs>,
		"transformation_planks" : <tag:items:twilightforest:transwood_logs>,
		"twilight_oak_planks" : <tag:items:twilightforest:twilight_oak_logs>
	};
	for packModeExpertDisablePlanksOut, packModeExpertDisablePlanksIn in packModeExpertDisablePlanks {
		craftingTable.addShapeless("twilightforest/wood/" + packModeExpertDisablePlanksOut, <item:${packModeExpertDisablePlanksOut}> * 4, [packModeExpertDisablePlanksIn]);
	}
}

Globals.endScript("pack_mod_expert_recipe_log");