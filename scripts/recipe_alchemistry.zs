/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Missing Sapling Recipe.
 * v0.2 : Adding Missing Log Recipe.
 */
 
println("Start script recipe_alchemistry");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Combiner
var addingCombinerRecipe = {
	"croptopia:almond_sapling" : "almond_sapling",
	"croptopia:apple_sapling" : "apple_sapling",
	"croptopia:apricot_sapling" : "apricot_sapling",
	"croptopia:avocado_sapling" : "avocado_sapling",
	"croptopia:banana_sapling" : "banana_sapling",
	"croptopia:cashew_sapling" : "cashew_sapling",
	"croptopia:cherry_sapling" : "cherry_sapling",
	"croptopia:coconut_sapling" : "coconut_sapling",
	"croptopia:date_sapling" : "date_sapling",
	"croptopia:dragonfruit_sapling" : "dragonfruit_sapling",
	"croptopia:fig_sapling" : "fig_sapling",
	"croptopia:grapefruit_sapling" : "grapefruit_sapling",
	"croptopia:kumquat_sapling" : "kumquat_sapling",
	"croptopia:lemon_sapling" : "lemon_sapling",
	"croptopia:lime_sapling" : "lime_sapling",
	"croptopia:mango_sapling" : "mango_sapling",
	"croptopia:nectarine_sapling" : "nectarine_sapling",
	"croptopia:nutmeg_sapling" : "nutmeg_sapling",
	"croptopia:orange_sapling" : "orange_sapling",
	"croptopia:peach_sapling" : "peach_sapling",
	"croptopia:pear_sapling" : "pear_sapling",
	"croptopia:pecan_sapling" : "pecan_sapling",
	"croptopia:persimmon_sapling" : "persimmon_sapling",
	"croptopia:plum_sapling" : "plum_sapling",
	"croptopia:starfruit_sapling" : "starfruit_sapling",
	"croptopia:walnut_sapling" : "walnut_sapling",
	"croptopia:cinnamon_sapling" : "cinnamon_sapling",
	"ecologics:walnut_sapling" : "ecologics_walnut_sapling",
	"simplytea:tea_sapling" : "simplytea_tea_sapling",
	"myrtrees:rubberwood_sapling" : "myrtrees_rubberwood_sapling",
	"vinery:cherry_sapling" : "vinery_cherry_sapling",
	"vinery:old_cherry_sapling" : "vinery_old_cherry_sapling"
};
for addingCombinerRecipeID, addingCombinerRecipeName in addingCombinerRecipe {
	<recipetype:alchemistry:combiner>.addJsonRecipe("alchemistry_combiner/" + addingCombinerRecipeName, {
		"group": "alchemistry:combiner",
		"input": [ {
			"ingredient": {
				"item": "chemlib:oxygen"
			},
			"count": 1
		}, {
			"ingredient": {
				"item": "chemlib:cellulose"
			},
			"count": 2
		} ],
		"result": {
			"item": addingCombinerRecipeID
		}
	});
}

// Compactor
var addingCompactorRecipe = {
	"ecologics:azalea_log" : "ecologics_azalea_log",
	"quark:azalea_log" : "quark_azalea_log",
	"quark:blossom_log" : "quark_blossom_log",
	"twilightforest:canopy_log" : "twilightforest_canopy_log",
	"vinery:cherry_log" : "vinery_cherry_log",
	"croptopia:cinnamon_log" : "croptopia_cinnamon_log",
	"ecologics:coconut_log" : "ecologics_coconut_log",
	"twilightforest:dark_log" : "twilightforest_dark_log",
	"ecologics:flowering_azalea_log" : "flowering_ecologics_azalea_log",
	"twilightforest:mangrove_log" : "twilightforest_mangrove_log",
	"twilightforest:mining_log" : "twilightforest_mining_log",
	"integrateddynamics:menril_log" : "integrateddynamics_menril_log",
	"vinery:old_cherry_log" : "vinery_old_cherry_log",
	"twilightforest:sorting_log" : "twilightforest_sorting_log",
	"ecologics:walnut_log" : "ecologics_walnut_log",
	"twilightforest:time_log" : "twilightforest_time_log",
	"twilightforest:transformation_log" : "twilightforest_transformation_log",
	"twilightforest:twilight_oak_log" : "twilightforest_twilight_oak_log"
};
for addingCompactorRecipeID, addingCompactorRecipeName in addingCompactorRecipe {
	<recipetype:alchemistry:compactor>.addJsonRecipe("alchemistry_combiner/" + addingCompactorRecipeName, {
		"group": "alchemistry:compactor",
		"input": {
			"ingredient": {
				"item": "chemlib:cellulose"
			},
		"count": 1
		},
		"result": {
			"item": addingCompactorRecipeID
		}
	});
}

println("End script recipe_alchemistry.");