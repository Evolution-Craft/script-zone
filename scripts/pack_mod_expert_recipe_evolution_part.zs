/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("pack_mod_expert_recipe_evolution_part");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

if (packModeSetting.packModeSettingEvolutionParts() == true) {

	Globals.packExpertScript("Evolution Part - Active");

	mods.extendedcrafting.TableCrafting.addShaped("pack_expert_crafting/evolution_part/common_part_middle", <item:contenttweaker:common_part_middle>, [
		[<item:tconstruct:pig_iron_block>, <item:immersiveengineering:alu_scaffolding_standard>, <item:thermal:rose_gold_block>, <item:immersiveengineering:alu_scaffolding_standard>, <item:tconstruct:pig_iron_block>],
		[<item:immersiveengineering:alu_scaffolding_standard>, <item:contenttweaker:lapis_ingot_alloy>, <item:thermal:lead_plate>, <item:contenttweaker:lapis_ingot_alloy>, <item:immersiveengineering:alu_scaffolding_standard>],
		[<item:thermal:rose_gold_block>, <item:thermal:lead_plate>, <tag:items:forge:rubbers>, <item:thermal:lead_plate>, <item:thermal:rose_gold_block>],
		[<item:immersiveengineering:alu_scaffolding_standard>, <item:contenttweaker:lapis_ingot_alloy>, <item:thermal:lead_plate>, <item:contenttweaker:lapis_ingot_alloy>, <item:immersiveengineering:alu_scaffolding_standard>],
		[<item:tconstruct:pig_iron_block>, <item:immersiveengineering:alu_scaffolding_standard>, <item:thermal:rose_gold_block>, <item:immersiveengineering:alu_scaffolding_standard>, <item:tconstruct:pig_iron_block>]
	]);
	<recipetype:tconstruct:casting_table>.addJsonRecipe("pack_expert_crafting/evolution_part/tconstruct/common_part", {
	"cast": {
		"item": "contenttweaker:common_part_middle"
	},
	"cast_consumed": true,
	"fluid": {
		"tag": "tconstruct:molten_constantan",
		"amount": 810
	},
	"result": "contenttweaker:common_part",
	"cooling_time": 628
	});
	<recipetype:create:filling>.addRecipe("pack_expert_crafting/evolution_part/create/common_part", <item:contenttweaker:common_part>, <item:contenttweaker:common_part_middle>, <fluid:tconstruct:molten_constantan> * 810, 314);
	<recipetype:thermal:bottler>.addRecipe("pack_expert_crafting/evolution_part/thermal/common_part", <item:contenttweaker:common_part>, <item:contenttweaker:common_part_middle>, <fluid:tconstruct:molten_constantan> * 810, 50500);
}

Globals.endScript("pack_mod_expert_recipe_evolution_part");