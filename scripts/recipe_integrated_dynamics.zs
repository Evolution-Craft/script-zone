/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Recipe on errate OreDirect.
 */

println("Start script recipe_integrated_dynamics.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// TODO: count is bugged, not work.
<recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("integrateddynamics_mechanical_squeezer/ore/raw_certus_quartz", 
{
"type": "integrateddynamics:mechanical_squeezer",
	"item": {
		"tag": "forge:ores/certus_quartz"
	},
	"result": {
		"items": [
		{
			"item": "ae2:certus_quartz_crystal",
			"count": 3
		},
		{
			"item": "ae2:certus_quartz_crystal",
			"count": 2,
			"chance": 0.5
		},
		{
			"item": "ae2:certus_quartz_dust",
			"count": 2,
			"chance": 0.5
		} ]
	},
	"duration": 40
});

println("End script recipe_integrated_dynamics.");