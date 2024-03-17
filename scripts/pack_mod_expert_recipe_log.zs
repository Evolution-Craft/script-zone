/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Modify Item Max Stack Size.
 */

#priority 500

Globals.startScript("pack_mod_expert_recipe_log");
Globals.priorityScript("500");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

val pack_mode_expert_enable = true;
val expert_log_to_planks = 2;

if (pack_mode_expert_enable == true) {
	Globals.startScript("Log - Active");
	var packModeExpertPlanks = {
		// Botania
		"botania:dreamwood_planks" : <tag:items:botania:dreamwood_logs>,
		"botania:livingwood_planks" : <tag:items:botania:livingwood_logs>,
		// Ecologics
		"ecologics:azalea_planks" : <tag:items:ecologics:azalea_logs>,
		"ecologics:flowering_azalea_planks" : <tag:items:ecologics:flowering_azalea_logs>,
		"ecologics:coconut_planks" : <tag:items:ecologics:coconut_logs>,
		"ecologics:walnut_planks" : <tag:items:ecologics:walnut_logs>,
		// Enlightened End
		"enlightened_end:cerulean_planks" : <tag:items:enlightened_end:cerulean_logs>,
		"enlightened_end:indigo_planks" : <tag:items:enlightened_end:indigo_stems>,
		//Integrated Dynamics
		"integrateddynamics:menril_planks" : <tag:items:integrateddynamics:menril_logs>,
		// Minecraft
		"minecraft:acacia_planks" : <tag:items:minecraft:acacia_logs>,
		"minecraft:birch_planks" : <tag:items:minecraft:birch_logs>,
		"minecraft:crimson_planks" : <tag:items:minecraft:crimson_stems>,
		"minecraft:dark_oak_planks" : <tag:items:minecraft:dark_oak_logs>,
		"minecraft:jungle_planks" : <tag:items:minecraft:jungle_logs>,
		"minecraft:oak_planks" : <tag:items:minecraft:oak_logs>,
		"minecraft:spruce_planks" : <tag:items:minecraft:spruce_logs>,
		"minecraft:warped_planks" : <tag:items:minecraft:warped_stems>,
		// Quark
		"quark:azalea_planks" : <tag:items:quark:azalea_logs>,
		"quark:blossom_planks" : <tag:items:quark:blossom_logs>,
		// Tinkers Construct
		"tconstruct:bloodshroom_planks" : <tag:items:tconstruct:bloodshroom_logs>,
		"tconstruct:greenheart_planks" : <tag:items:tconstruct:greenheart_logs>,
		"tconstruct:skyroot_planks" : <tag:items:tconstruct:skyroot_logs>,
		// Twilight Forest
		"twilightforest:canopy_planks" : <tag:items:twilightforest:canopy_logs>,
		"twilightforest:dark_planks" : <tag:items:twilightforest:darkwood_logs>,
		"twilightforest:mangrove_planks" : <tag:items:twilightforest:mangrove_logs>,
		"twilightforest:mining_planks" : <tag:items:twilightforest:mining_logs>,
		"twilightforest:sorting_planks" : <tag:items:twilightforest:sortwood_logs>,
		"twilightforest:time_planks" : <tag:items:twilightforest:timewood_logs>,
		"twilightforest:transformation_planks" : <tag:items:twilightforest:transwood_logs>,
		"twilightforest:twilight_oak_planks" : <tag:items:twilightforest:twilight_oak_logs>,
		// Undergarden
		"undergarden:grongle_planks" : <tag:items:undergarden:grongle_logs>,
		"undergarden:smogstem_planks" : <tag:items:undergarden:smogstem_logs>,
		"undergarden:wigglewood_planks" : <tag:items:undergarden:wigglewood_logs>,
		// Vinery
		"vinery:cherry_planks" : <tag:items:vinery:cherry_logs>
	};
	for packModeExpertPlanksOut, packModeExpertPlanksIn in packModeExpertPlanks {
		val packModeExpertPlanksName = <item:${packModeExpertPlanksOut}>;
		if (packModeExpertPlanksOut == "twilightforest:canopy_planks" ||
			packModeExpertPlanksOut == "twilightforest:mangrove_planks" ||
			packModeExpertPlanksOut == "twilightforest:mining_planks" ||
			packModeExpertPlanksOut == "twilightforest:sorting_planks" ||
			packModeExpertPlanksOut == "twilightforest:time_planks" ||
			packModeExpertPlanksOut == "twilightforest:transformation_planks" ||
			packModeExpertPlanksOut == "twilightforest:twilight_oak_planks") {
			craftingTable.removeByName("twilightforest:wood/" + packModeExpertPlanksName.registryName.path);
		} else if (packModeExpertPlanksOut == "twilightforest:dark_planks") {
			craftingTable.removeByName("twilightforest:wood/darkwood_planks");
		} else if (packModeExpertPlanksOut == "tconstruct:bloodshroom_planks") {
			craftingTable.removeByName("tconstruct:world/wood/bloodshroom/planks");
		} else if (packModeExpertPlanksOut == "tconstruct:greenheart_planks") {
			craftingTable.removeByName("tconstruct:world/wood/greenheart/planks");
		} else if (packModeExpertPlanksOut == "tconstruct:skyroot_planks") {
			craftingTable.removeByName("tconstruct:world/wood/skyroot/planks");
		} else if (packModeExpertPlanksOut == "quark:azalea_planks") {
			craftingTable.removeByName("quark:world/crafting/woodsets/azalea/planks");
		} else if (packModeExpertPlanksOut == "quark:blossom_planks") {
			craftingTable.removeByName("quark:world/crafting/woodsets/blossom/planks");
		} else if (packModeExpertPlanksOut == "integrateddynamics:menril_planks") {
			craftingTable.removeByName("integrateddynamics:crafting/menril_planks");
		} else {
			craftingTable.removeByName(packModeExpertPlanksOut);
		}
		if (packModeExpertPlanksOut == "quark:azalea_planks") {
			craftingTable.addShapeless("pack_expert_crafting/quark_" + packModeExpertPlanksName.registryName.path, <item:${packModeExpertPlanksOut}> * expert_log_to_planks, [packModeExpertPlanksIn]);
		} else {
			craftingTable.addShapeless("pack_expert_crafting_" + packModeExpertPlanksName.registryName.path, <item:${packModeExpertPlanksOut}> * expert_log_to_planks, [packModeExpertPlanksIn]);
		}
	}

	// Myrtrees
	craftingTable.removeByName("myrtrees:rubberwood_planks");
	craftingTable.addShapeless("pack_expert_crafting_rubberwood_planks", <item:myrtrees:rubberwood_planks> * expert_log_to_planks, [<item:myrtrees:rubberwood_log>]);
}

Globals.endScript("pack_mod_expert_recipe_log");