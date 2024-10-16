/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("pack_mod_expert_recipe_horse_armor");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.tag.manager.ITagManager;

var shapedHorseArmorVarFunction as function(usualOut as IItemStack, inputs as IItemStack[][]) as IItemStack = (usualOut as IItemStack, inputs as IItemStack[][]) => {
	var oldDamage = inputs[1][1].damage;
	if oldDamage < 0 {
		oldDamage = 0;
	}
	return usualOut.withDamage(oldDamage);
};

if (packModeSetting.packModeSettingHorseArmors() == true) {

	Globals.packExpertScript("Horse Armor - Active");
	
	// Shaped
	for logWoodenHorseId in Constant.packBaseWoods {
		if (logWoodenHorseId == "dark_oak") {
			craftingTable.addShaped("pack_expert_crafting_horse_armor/dark_oak_horse_armor", <item:woodarmorhorse:bigoak_horse_armor>, [
				[<item:minecraft:air>, <item:minecraft:air>, <item:woodarmor:${logWoodenHorseId}_helmet>],
				[<item:minecraft:${logWoodenHorseId}_planks>, <item:minecraft:${logWoodenHorseId}_stem>, <item:minecraft:${logWoodenHorseId}_planks>],
				[<item:woodarmor:${logWoodenHorseId}_leggings>, <item:minecraft:air>, <item:woodarmor:${logWoodenHorseId}_leggings>]
			]);
		} else if (logWoodenHorseId == "warped" || logWoodenHorseId == "crimson") {
			craftingTable.addShaped("pack_expert_crafting_horse_armor/" + logWoodenHorseId + "_horse_armor", <item:woodarmorhorse:${logWoodenHorseId}_horse_armor>, [
				[<item:minecraft:air>, <item:minecraft:air>, <item:woodarmor:${logWoodenHorseId}_helmet>],
				[<item:minecraft:${logWoodenHorseId}_planks>, <item:minecraft:${logWoodenHorseId}_stem>, <item:minecraft:${logWoodenHorseId}_planks>],
				[<item:woodarmor:${logWoodenHorseId}_leggings>, <item:minecraft:air>, <item:woodarmor:${logWoodenHorseId}_leggings>]
			]);
		} else {
			craftingTable.addShaped("pack_expert_crafting_horse_armor/" + logWoodenHorseId + "_horse_armor", <item:woodarmorhorse:${logWoodenHorseId}_horse_armor>, [
				[<item:minecraft:air>, <item:minecraft:air>, <item:woodarmor:${logWoodenHorseId}_helmet>],
				[<item:minecraft:${logWoodenHorseId}_planks>, <item:minecraft:${logWoodenHorseId}_log>, <item:minecraft:${logWoodenHorseId}_planks>],
				[<item:woodarmor:${logWoodenHorseId}_leggings>, <item:minecraft:air>, <item:woodarmor:${logWoodenHorseId}_leggings>]
			]);
		}
	}

	craftingTable.addShaped("pack_expert_crafting_horse_armor/stone_horse_armor", <item:woodarmorhorse:stone_horse_armor>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:woodarmor:stone_helmet>],
		[<item:minecraft:cobblestone>, <tag:items:woodarmorhorse:wooden_horse_armor>.asIIngredient().anyDamage(), <item:minecraft:cobblestone>],
		[<item:woodarmor:stone_leggings>, <item:minecraft:air>, <item:woodarmor:stone_leggings>]
	], shapedHorseArmorVarFunction);
	craftingTable.addShaped("pack_expert_crafting_horse_armor/leather_horse_armor", <item:minecraft:leather_horse_armor>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:leather_helmet>],
		[<item:minecraft:leather>, <item:woodarmorhorse:stone_horse_armor>.anyDamage(), <item:minecraft:leather>],
		[<item:minecraft:leather_leggings>, <item:minecraft:air>, <item:minecraft:leather_leggings>]
	], shapedHorseArmorVarFunction);
	craftingTable.addShaped("pack_expert_crafting_horse_armor/sterling_horse_armor", <item:galosphere:sterling_horse_armor>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:galosphere:sterling_helmet>],
		[<tag:items:forge:ingots/silver>, <item:minecraft:leather_horse_armor>.anyDamage(), <tag:items:forge:ingots/silver>],
		[<item:galosphere:sterling_leggings>, <item:minecraft:air>, <item:galosphere:sterling_leggings>]
	], shapedHorseArmorVarFunction);
	craftingTable.addShaped("pack_expert_crafting_horse_armor/copper_horse_armor", <item:exlinecopperequipment:copper_horse_armor>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:exlinecopperequipment:copper_helmet>],
		[<item:minecraft:copper_ingot>, <item:galosphere:sterling_horse_armor>.anyDamage(), <item:minecraft:copper_ingot>],
		[<item:exlinecopperequipment:copper_leggings>, <item:minecraft:air>, <item:exlinecopperequipment:copper_leggings>]
	], shapedHorseArmorVarFunction);
	craftingTable.addShaped("pack_expert_crafting_horse_armor/iron_horse_armor", <item:minecraft:iron_horse_armor>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:iron_helmet>],
		[<item:minecraft:iron_ingot>, <item:exlinecopperequipment:copper_horse_armor>.anyDamage(), <item:minecraft:iron_ingot>],
		[<item:minecraft:iron_leggings>, <item:minecraft:air>, <item:minecraft:iron_leggings>]
	], shapedHorseArmorVarFunction);
	craftingTable.addShaped("pack_expert_crafting_horse_armor/golden_horse_armor", <item:minecraft:golden_horse_armor>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:golden_helmet>],
		[<item:minecraft:gold_ingot>, <item:minecraft:iron_horse_armor>.anyDamage(), <item:minecraft:gold_ingot>],
		[<item:minecraft:golden_leggings>, <item:minecraft:air>, <item:minecraft:golden_leggings>]
	], shapedHorseArmorVarFunction);
	craftingTable.addShaped("pack_expert_crafting_horse_armor/diamond_horse_armor", <item:minecraft:diamond_horse_armor>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:diamond_helmet>],
		[<item:minecraft:diamond>, <item:minecraft:golden_horse_armor>.anyDamage(), <item:minecraft:diamond>],
		[<item:minecraft:diamond_leggings>, <item:minecraft:air>, <item:minecraft:diamond_leggings>]
	], shapedHorseArmorVarFunction);
}

Globals.endScript("pack_mod_expert_recipe_horse_armor");