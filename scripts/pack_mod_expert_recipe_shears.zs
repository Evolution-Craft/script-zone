/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("pack_mod_expert_recipe_shears");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

if (packModeSetting.packModeSettingShears() == true) {

	Globals.packExpertScript("Shears - Active");

	craftingTable.addShaped("pack_expert_crafting_shears/flint_shears", <item:cyclic:shears_flint>, [
		[<item:minecraft:air>, <item:fiow:flint_tool_head>, <item:minecraft:air>],
		[<item:fiow:flint_tool_head>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);

	for woodenshears_shears_log in Constant.packBaseWoods {
		if (woodenshears_shears_log == "dark_oak"){
			craftingTable.addShaped("pack_expert_crafting_shears/wooden_" + woodenshears_shears_log + "_shears", <item:woodenshears:wshears_big_oak>, [
				[<item:minecraft:${woodenshears_shears_log}_planks>, <item:minecraft:${woodenshears_shears_log}_planks>, <item:minecraft:${woodenshears_shears_log}_planks>],
				[<item:minecraft:${woodenshears_shears_log}_planks>, <item:cyclic:shears_flint>.anyDamage(), <item:minecraft:${woodenshears_shears_log}_planks>],
				[<item:minecraft:${woodenshears_shears_log}_planks>, <item:minecraft:${woodenshears_shears_log}_planks>, <item:minecraft:${woodenshears_shears_log}_planks>]
			]);
		} else {
			craftingTable.addShaped("pack_expert_crafting_shears/wooden_" + woodenshears_shears_log + "_shears", <item:woodenshears:wshears_${woodenshears_shears_log}>, [
				[<item:minecraft:${woodenshears_shears_log}_planks>, <item:minecraft:${woodenshears_shears_log}_planks>, <item:minecraft:${woodenshears_shears_log}_planks>],
				[<item:minecraft:${woodenshears_shears_log}_planks>, <item:cyclic:shears_flint>.anyDamage(), <item:minecraft:${woodenshears_shears_log}_planks>],
				[<item:minecraft:${woodenshears_shears_log}_planks>, <item:minecraft:${woodenshears_shears_log}_planks>, <item:minecraft:${woodenshears_shears_log}_planks>]
			]);
		}
	}

	craftingTable.addShaped("pack_expert_crafting_shears/ceramic_shears", <item:ceramicshears:ceramic_shears>, [
		[<item:ceramicshears:ceramic_shears_part>, <tag:items:woodenshears:wshears>.asIIngredient().anyDamage(), <item:ceramicshears:ceramic_shears_part>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);
	craftingTable.addShaped("pack_expert_crafting_shears/shears", <item:minecraft:shears>, [
		[<item:minecraft:iron_ingot>, <item:ceramicshears:ceramic_shears>.anyDamage(), <item:minecraft:iron_ingot>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);
	craftingTable.addShaped("pack_expert_crafting_shears/cyclic_shearing", <item:cyclic:shearing>, [
		[<item:minecraft:air>, <item:netherite_shears_and_flint_and_steel:netherite_shears>, <item:minecraft:air>],
		[<item:netherite_shears_and_flint_and_steel:netherite_shears>, <item:contenttweaker:common_part>, <item:netherite_shears_and_flint_and_steel:netherite_shears>],
		[<item:minecraft:air>, <item:netherite_shears_and_flint_and_steel:netherite_shears>, <item:minecraft:air>]
	]);
}

Globals.endScript("pack_mod_expert_recipe_shears");