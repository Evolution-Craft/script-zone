/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Change seismic survery tool.
 */

Globals.startScript("recipe_immersive_petroleum");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Shaped
craftingTable.removeByName("immersivepetroleum:seismic_survey_tool");
craftingTable.addShaped("immersivepetroleum/seismic_survey_tool", <item:immersivepetroleum:seismic_survey>, [
	[<item:immersiveengineering:steel_scaffolding_standard>, <item:immersiveengineering:stick_steel>, <item:immersiveengineering:wire_steel>],
	[<item:immersiveengineering:steel_scaffolding_standard>, <item:immersiveengineering:stick_steel>, <item:immersiveengineering:steel_scaffolding_standard>],
	[<item:immersiveengineering:component_iron>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:component_iron>]
]);

Globals.endScript("recipe_immersive_petroleum");