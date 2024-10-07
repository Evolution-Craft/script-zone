/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("pack_mod_expert_recipe_hopper");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

if (packModeSetting.packModeSettingHoppers() == true) {

	Globals.packExpertScript("Hopper - Active");

	craftingTable.addShaped("pack_expert_crafting_hopper/brick_hopper", <item:brickhopper:brick_hopper>, [
		[<item:minecraft:brick>, <item:minecraft:air>, <item:minecraft:brick>],
		[<item:minecraft:brick>, <item:woodenhopper:wooden_hopper>, <item:minecraft:brick>],
		[<item:minecraft:air>, <item:minecraft:brick>]
	]);
	craftingTable.addShaped("pack_expert_crafting_hopper/hopper", <item:minecraft:hopper>, [
		[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
		[<item:minecraft:iron_ingot>, <item:brickhopper:brick_hopper>, <item:minecraft:iron_ingot>],
		[<item:minecraft:air>, <item:minecraft:iron_ingot>]
	]);
	craftingTable.addShaped("pack_expert_crafting_hopper/hopper_fluid", <item:cyclic:hopper_fluid>, [
		[<item:minecraft:brick>, <item:minecraft:bucket>, <item:minecraft:brick>],
		[<item:minecraft:brick>, <item:minecraft:hopper>, <item:minecraft:brick>],
		[<item:minecraft:air>, <item:minecraft:brick>]
	]);
	craftingTable.addShaped("pack_expert_crafting_hopper/speedyhopper_mk1", <item:speedyhoppers:speedyhopper_mk1>, [
		[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
		[<item:minecraft:iron_ingot>, <item:minecraft:hopper>, <item:minecraft:iron_ingot>],
		[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
	]);
	craftingTable.addShaped("pack_expert_crafting_hopper/speedyhopper_mk2", <item:speedyhoppers:speedyhopper_mk2>, [
		[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
		[<item:minecraft:gold_ingot>, <item:speedyhoppers:speedyhopper_mk1>, <item:minecraft:gold_ingot>],
		[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]
	]);
	craftingTable.addShaped("pack_expert_crafting_hopper/speedyhopper_mk3", <item:speedyhoppers:speedyhopper_mk3>, [
		[<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
		[<item:minecraft:diamond>, <item:speedyhoppers:speedyhopper_mk2>, <item:minecraft:diamond>],
		[<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>]
	]);
}

Globals.endScript("pack_mod_expert_recipe_hopper");