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
for addingCombinerRecipeId, addingCombinerRecipeName in addingCombinerRecipe {
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
			"item": addingCombinerRecipeId
		}
	});
}
var addingSeedCombinerRecipe = {
	"croptopia/artichoke" : "croptopia:artichoke_seed",
	"croptopia/asparagus" : "croptopia:asparagus_seed",
	"croptopia/barley" : "croptopia:barley_seed",
	"croptopia/basil" : "croptopia:basil_seed",
	"croptopia/bellpepper" : "croptopia:bellpepper_seed",
	"croptopia/blackbean" : "croptopia:blackbean_seed",
	"croptopia/blackberry" : "croptopia:blackberry_seed",
	"croptopia/blueberry" : "croptopia:blueberry_seed",
	"croptopia/broccoli" : "croptopia:broccoli_seed",
	"croptopia/cabbage" : "croptopia:cabbage_seed",
	"croptopia/cantaloupe" : "croptopia:cantaloupe_seed",
	"croptopia/cauliflower" : "croptopia:cauliflower_seed",
	"croptopia/celery" : "croptopia:celery_seed",
	"croptopia/chile_pepper" : "croptopia:chile_pepper_seed",
	"croptopia/coffee" : "croptopia:coffee_seed",
	"croptopia/corn" : "croptopia:corn_seed",
	"croptopia/cranberry" : "croptopia:cranberry_seed",
	"croptopia/cucumber" : "croptopia:cucumber_seed",
	"croptopia/currant" : "croptopia:currant_seed",
	"croptopia/eggplant" : "croptopia:eggplant_seed",
	"croptopia/elderberry" : "croptopia:elderberry_seed",
	"croptopia/garlic" : "croptopia:garlic_seed",
	"croptopia/ginger" : "croptopia:ginger_seed",
	"croptopia/grape" : "croptopia:grape_seed",
	"croptopia/greenbean" : "croptopia:greenbean_seed",
	"croptopia/greenonion" : "croptopia:greenonion_seed",
	"croptopia/honeydew" : "croptopia:honeydew_seed",
	"croptopia/hops" : "croptopia:hops_seed",
	"croptopia/kale" : "croptopia:kale_seed",
	"croptopia/kiwi" : "croptopia:kiwi_seed",
	"croptopia/leek" : "croptopia:leek_seed",
	"croptopia/lettuce" : "croptopia:lettuce_seed",
	"croptopia/mustard" : "croptopia:mustard_seed",
	"croptopia/oat" : "croptopia:oat_seed",
	"croptopia/olive" : "croptopia:olive_seed",
	"croptopia/onion" : "croptopia:onion_seed",
	"croptopia/peanut" : "croptopia:peanut_seed",
	"croptopia/pepper" : "croptopia:pepper_seed",
	"croptopia/pineapple" : "croptopia:pineapple_seed",
	"croptopia/radish" : "croptopia:radish_seed",
	"croptopia/raspberry" : "croptopia:raspberry_seed",
	"croptopia/rhubarb" : "croptopia:rhubarb_seed",
	"croptopia/rice" : "croptopia:rice_seed",
	"croptopia/rutabaga" : "croptopia:rutabaga_seed",
	"croptopia/saguaro" : "croptopia:saguaro_seed",
	"croptopia/soybean" : "croptopia:soybean_seed",
	"croptopia/spinach" : "croptopia:spinach_seed",
	"croptopia/squash" : "croptopia:squash_seed",
	"croptopia/strawberry" : "croptopia:strawberry_seed",
	"croptopia/sweetpotato" : "croptopia:sweetpotato_seed",
	"croptopia/tea" : "croptopia:tea_seed",
	"croptopia/tomatillo" : "croptopia:tomatillo_seed",
	"croptopia/tomato" : "croptopia:tomato_seed",
	"croptopia/turmeric" : "croptopia:turmeric_seed",
	"croptopia/turnip" : "croptopia:turnip_seed",
	"croptopia/vanilla" : "croptopia:vanilla_seeds",
	"croptopia/yam" : "croptopia:yam_seed",
	"croptopia/zucchini" : "croptopia:zucchini_seed",
	"corn_delight/corn" : "corn_delight:corn_seeds",
	"ecologics/coconut" : "ecologics:coconut_seedling",
	"enlightened_end/elevibloom" : "enlightened_end:elevibloom_seeds",
	"farmersdelight/cabbage" : "farmersdelight:cabbage_seeds",
	"farmersdelight/tomato" : "farmersdelight:tomato_seeds",
	"immersiveengineering/seed" : "immersiveengineering:seed",
	"supplementaries/flax" : "supplementaries:flax_seeds",
	"thermal/amaranth" : "thermal:amaranth_seeds",
	"thermal/barley" : "thermal:barley_seeds",
	"thermal/bell_pepper" : "thermal:bell_pepper_seeds",
	"thermal/coffee" : "thermal:coffee_seeds",
	"thermal/corn" : "thermal:corn_seeds",
	"thermal/eggplant" : "thermal:eggplant_seeds",
	"thermal/flax" : "thermal:flax_seeds",
	"thermal/frost_melon" : "thermal:frost_melon_seeds",
	"thermal/green_bean" : "thermal:green_bean_seeds",
	"thermal/hops" : "thermal:hops_seeds",
	"thermal/onion" : "thermal:onion_seeds",
	"thermal/peanut" : "thermal:peanut_seeds",
	"thermal/radish" : "thermal:radish_seeds",
	"thermal/rice" : "thermal:rice_seeds",
	"thermal/sadiroot" : "thermal:sadiroot_seeds",
	"thermal/spinach" : "thermal:spinach_seeds",
	"thermal/strawberry" : "thermal:strawberry_seeds",
	"thermal/tea" : "thermal:tea_seeds",
	"thermal/tomato" : "thermal:tomato_seeds",
	"undergarden/gloomgourd" : "undergarden:gloomgourd_seeds",
	"vinery/red_grape" : "vinery:red_grape_seeds",
	"vinery/white_grape" : "vinery:white_grape_seeds",
	"vinery/jungle_grape_seeds_red" : "vinery:jungle_grape_seeds_red",
	"vinery/jungle_grape_seeds_white" : "vinery:jungle_grape_seeds_white",
	"vinery/savanna_grape_seeds_red" : "vinery:savanna_grape_seeds_red",
	"vinery/savanna_grape_seeds_white" : "vinery:savanna_grape_seeds_white",
	"vinery/taiga_grape_seeds_red" : "vinery:taiga_grape_seeds_red",
	"vinery/taiga_grape_seeds_white" : "vinery:taiga_grape_seeds_white"
};
for addingSeedCombinerRecipeName, addingSeedCombinerRecipeId in addingSeedCombinerRecipe {
	<recipetype:alchemistry:combiner>.addJsonRecipe("alchemistry_combiner/" + addingSeedCombinerRecipeName, {
		"group": "alchemistry:combiner",
		"input": [ {
			"ingredient": {
				"item": "chemlib:sucrose"
			},
			"count": 1
		}, {
			"ingredient": {
				"item": "chemlib:triglyceride"
			},
			"count": 2
		} ],
		"result": {
			"item": addingSeedCombinerRecipeId
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