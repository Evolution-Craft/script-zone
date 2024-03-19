/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Recipe.
 */

Globals.startScript("recipe_aquaculture");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

val expert_ingradient_to_plate = 2; //packModeSetting.packModeSettingPlateCastingBasing();
val expert_ticks_to_plate = 200;//packModeSetting.packModeSettingPlateCastingBasing();
val expert_energy_for_tick_to_plate = 450.0;//packModeSetting.packModeSettingPlateCastingBasing();

// Mineral Crusher

/*<recipetype:electrodynamics:mineral_crusher_recipe>.removeByName("electrodynamics:item2item/mineral_crusher/plate_iron_from_ingot");
<recipetype:electrodynamics:mineral_crusher_recipe>.addJsonRecipe("pack_expert_crafting/electrodynamics/mineral_crusher/iron_plate", {
	"ticks": expert_ticks_to_plate,
	"usagepertick": expert_energy_for_tick_to_plate,
	"iteminputs": {
		"count": 1,
		"0": {
			"tag": "forge:ingots/iron",
			"count": 1
		}
	},
	"output": {
		"item": "thermal:iron_plate",
		"count": 1
	},
	"experience": 0.10000000149011612
});*/

Globals.endScript("recipe_aquaculture");