/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Created crafting sequence for Shears.
 * v0.2 : Adding missing shears.
 */

Globals.startScript("pack_mod_expert_recipe_shears");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

if (packModeSetting.packModeSettingShears() == true) {

	Globals.packExpertScript("Shears - Active");

	craftingTable.removeByName("cyclic:shears_flint");
	craftingTable.addShaped("pack_expert_crafting_shears/flint_shears", <item:cyclic:shears_flint>, [
		[<item:minecraft:air>, <item:fiow:flint_tool_head>, <item:minecraft:air>],
		[<item:fiow:flint_tool_head>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);

	var logsWoodenShears = {
	"oak" : "oak",
	"birch" : "birch",
	"jungle" : "jungle",
	"acacia" : "acacia",
	"dark_oak" : "big_oak",
	"spruce" : "spruce",
	"warped" : "warped",
	"crimson" : "crimson"
	};
	for logWoodenShearsId, logWoodenShearsName in logsWoodenShears {
		craftingTable.removeByName("woodenshears:wshears." + logWoodenShearsName);
		craftingTable.addShaped("pack_expert_crafting_shears/wooden_" + logWoodenShearsId + "_shears", <item:woodenshears:wshears_${logWoodenShearsName}>, [
		[<item:minecraft:${logWoodenShearsId}_planks>, <item:minecraft:${logWoodenShearsId}_planks>, <item:minecraft:${logWoodenShearsId}_planks>],
		[<item:minecraft:${logWoodenShearsId}_planks>, <item:cyclic:shears_flint>.anyDamage(), <item:minecraft:${logWoodenShearsId}_planks>],
		[<item:minecraft:${logWoodenShearsId}_planks>, <item:minecraft:${logWoodenShearsId}_planks>, <item:minecraft:${logWoodenShearsId}_planks>]
	]);
	}

	craftingTable.removeByName("ceramicshears:ceramic_shears");
	craftingTable.addShaped("pack_expert_crafting_shears/ceramic_shears", <item:ceramicshears:ceramic_shears>, [
		[<item:ceramicshears:ceramic_shears_part>, <tag:items:woodenshears:wshears>.asIIngredient().anyDamage(), <item:ceramicshears:ceramic_shears_part>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);

	craftingTable.removeByName("minecraft:shears");
	craftingTable.addShaped("pack_expert_crafting_shears/shears", <item:minecraft:shears>, [
		[<item:minecraft:iron_ingot>, <item:ceramicshears:ceramic_shears>.anyDamage(), <item:minecraft:iron_ingot>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);

	craftingTable.removeByName("cyclic:shearing");
	craftingTable.addShaped("pack_expert_crafting_shears/cyclic_shearing", <item:cyclic:shearing>, [
		[<item:minecraft:air>, <item:netherite_shears_and_flint_and_steel:netherite_shears>, <item:minecraft:air>],
		[<item:netherite_shears_and_flint_and_steel:netherite_shears>, <item:contenttweaker:common_part>, <item:netherite_shears_and_flint_and_steel:netherite_shears>],
		[<item:minecraft:air>, <item:netherite_shears_and_flint_and_steel:netherite_shears>, <item:minecraft:air>]
	]);
}

Globals.endScript("pack_mod_expert_recipe_shears");