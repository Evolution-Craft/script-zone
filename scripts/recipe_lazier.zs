/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Bio Fuel Update.
 */

println("Start script recipe_lazier.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Grinder
val lazier_bio_fuel_crops_quantity = 5;
val lazier_bio_fuel_flowers_quantity = 5;
val lazier_bio_fuel_leaves_quantity = 2;
val lazier_bio_fuel_mushrooms_quantity = 5;
val lazier_bio_fuel_mushrooms_block_quantity = 7;
val lazier_bio_fuel_saplings_quantity = 2;
val lazier_bio_fuel_seeds_quantity = 2;
val lazier_process_time = 15;
val lazier_energy_cost = 100;

var addingSeedGrinderLazier = {
	"croptopia/artichoke" : "croptopia:artichoke",
	"croptopia/asparagus" : "croptopia:asparagus",
	"croptopia/barley" : "croptopia:barley",
	"croptopia/basil" : "croptopia:basil",
	"croptopia/bellpepper" : "croptopia:bellpepper",
	"croptopia/blackbean" : "croptopia:blackbean",
	"croptopia/blackberry" : "croptopia:blackberry",
	"croptopia/blueberry" : "croptopia:blueberry",
	"croptopia/broccoli" : "croptopia:broccoli",
	"croptopia/cabbage" : "croptopia:cabbage",
	"croptopia/cantaloupe" : "croptopia:cantaloupe",
	"croptopia/cauliflower" : "croptopia:cauliflower",
	"croptopia/celery" : "croptopia:celery",
	"croptopia/chile_pepper" : "croptopia:chile_pepper",
	"croptopia/coffee" : "croptopia:coffee",
	"croptopia/corn" : "croptopia:corn",
	"croptopia/cranberry" : "croptopia:cranberry",
	"croptopia/cucumber" : "croptopia:cucumber",
	"croptopia/currant" : "croptopia:currant",
	"croptopia/eggplant" : "croptopia:eggplant",
	"croptopia/elderberry" : "croptopia:elderberry",
	"croptopia/garlic" : "croptopia:garlic",
	"croptopia/ginger" : "croptopia:ginger",
	"croptopia/grape" : "croptopia:grape",
	"croptopia/greenbean" : "croptopia:greenbean",
	"croptopia/greenonion" : "croptopia:greenonion",
	"croptopia/honeydew" : "croptopia:honeydew",
	"croptopia/hops" : "croptopia:hops",
	"croptopia/kale" : "croptopia:kale",
	"croptopia/kiwi" : "croptopia:kiwi",
	"croptopia/leek" : "croptopia:leek",
	"croptopia/lettuce" : "croptopia:lettuce",
	"croptopia/mustard" : "croptopia:mustard",
	"croptopia/oat" : "croptopia:oat",
	"croptopia/olive" : "croptopia:olive",
	"croptopia/onion" : "croptopia:onion",
	"croptopia/peanut" : "croptopia:peanut",
	"croptopia/pepper" : "croptopia:pepper",
	"croptopia/pineapple" : "croptopia:pineapple",
	"croptopia/radish" : "croptopia:radish",
	"croptopia/raspberry" : "croptopia:raspberry",
	"croptopia/rhubarb" : "croptopia:rhubarb",
	"croptopia/rice" : "croptopia:rice",
	"croptopia/rutabaga" : "croptopia:rutabaga",
	"croptopia/saguaro" : "croptopia:saguaro",
	"croptopia/soybean" : "croptopia:soybean",
	"croptopia/spinach" : "croptopia:spinach",
	"croptopia/squash" : "croptopia:squash",
	"croptopia/strawberry" : "croptopia:strawberry",
	"croptopia/sweetpotato" : "croptopia:sweetpotato",
	"croptopia/tea" : "croptopia:tea",
	"croptopia/tomatillo" : "croptopia:tomatillo",
	"croptopia/tomato" : "croptopia:tomato",
	"croptopia/turmeric" : "croptopia:turmeric",
	"croptopia/turnip" : "croptopia:turnip",
	"croptopia/yam" : "croptopia:yam",
	"croptopia/zucchini" : "croptopia:zucchini",
	"ecologics/coconut" : "ecologics:coconut",
	"immersiveengineering/seed" : "immersiveengineering:seed"

};
for addingSeedGrinderLazierName, addingSeedGrinderLazierMod in addingSeedGrinderLazier {
	if (addingSeedGrinderLazierName == "immersiveengineering/seed") {
		<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingSeedGrinderLazierName, {
			"output": {
				"item": "mekanism:bio_fuel",
				"count": lazier_bio_fuel_seeds_quantity
			},
			"input": {
				"item": addingSeedGrinderLazierMod
			},
			"process_time": lazier_process_time,
			"energy_cost": lazier_energy_cost
		});
	} else if (addingSeedGrinderLazierName == "ecologics/coconut") {
		<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingSeedGrinderLazierName + "_seedling", {
			"output": {
				"item": "mekanism:bio_fuel",
				"count": lazier_bio_fuel_seeds_quantity
			},
			"input": {
				"item": addingSeedGrinderLazierMod + "_seedling"
			},
			"process_time": lazier_process_time,
			"energy_cost": lazier_energy_cost
		});
		<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingSeedGrinderLazierName, {
			"output": {
				"item": "mekanism:bio_fuel",
				"count": lazier_bio_fuel_seeds_quantity
			},
			"input": {
				"item": addingSeedGrinderLazierMod
			},
			"process_time": lazier_process_time,
			"energy_cost": lazier_energy_cost
		});
	} else {
		<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingSeedGrinderLazierName + "_seed", {
			"output": {
				"item": "mekanism:bio_fuel",
				"count": lazier_bio_fuel_seeds_quantity
			},
			"input": {
				"item": addingSeedGrinderLazierMod + "_seed"
			},
			"process_time": lazier_process_time,
			"energy_cost": lazier_energy_cost
		});
		<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingSeedGrinderLazierName, {
			"output": {
				"item": "mekanism:bio_fuel",
				"count": lazier_bio_fuel_seeds_quantity
			},
			"input": {
				"item": addingSeedGrinderLazierMod
			},
			"process_time": lazier_process_time,
			"energy_cost": lazier_energy_cost
		});
	}
}

var addingVinerySeedsGrinderLazier = {
	"vinery/jungle_grape_seeds_red" : "vinery:jungle_grape_seeds_red",
	"vinery/jungle_grape_seeds_white" : "vinery:jungle_grape_seeds_white",
	"vinery/savanna_grape_seeds_red" : "vinery:savanna_grape_seeds_red",
	"vinery/savanna_grape_seeds_white" : "vinery:savanna_grape_seeds_white",
	"vinery/taiga_grape_seeds_red" : "vinery:taiga_grape_seeds_red",
	"vinery/taiga_grape_seeds_white" : "vinery:taiga_grape_seeds_white"
};
for addingVinerySeedsGrinderLazierName, addingVinerySeedsGrinderLazierMod in addingVinerySeedsGrinderLazier {
	<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingVinerySeedsGrinderLazierName, {
		"output": {
			"item": "mekanism:bio_fuel",
			"count": lazier_bio_fuel_seeds_quantity
		},
		"input": {
			"item": addingVinerySeedsGrinderLazierMod
		},
		"process_time": lazier_process_time,
		"energy_cost": lazier_energy_cost
	});
}

var addingVineryCropsGrinderLazier = {
	"vinery/jungle_grapes_red" : "vinery:jungle_grapes_red",
	"vinery/jungle_grapes_white" : "vinery:jungle_grapes_white",
	"vinery/savanna_grapes_red" : "vinery:savanna_grapes_red",
	"vinery/savanna_grapes_white" : "vinery:savanna_grapes_white",
	"vinery/taiga_grape_red" : "vinery:taiga_grapes_red",
	"vinery/taiga_grape_white" : "vinery:taiga_grapes_white"
};
for addingVineryCropsGrinderLazierName, addingVineryCropsGrinderLazierMod in addingVineryCropsGrinderLazier {
	<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingVineryCropsGrinderLazierName, {
		"output": {
			"item": "mekanism:bio_fuel",
			"count": lazier_bio_fuel_crops_quantity
		},
		"input": {
			"item": addingVineryCropsGrinderLazierMod
		},
		"process_time": lazier_process_time,
		"energy_cost": lazier_energy_cost
	});
}

var addingSeedsGrinderLazier = {
	"croptopia/vanilla" : "croptopia:vanilla",
	"corn_delight/corn" : "corn_delight:corn",
	"enlightened_end/elevibloom" : "enlightened_end:elevibloom",
	"farmersdelight/cabbage" : "farmersdelight:cabbage",
	"farmersdelight/tomato" : "farmersdelight:tomato",
	"supplementaries/flax" : "supplementaries:flax",
	"thermal/amaranth" : "thermal:amaranth",
	"thermal/barley" : "thermal:barley",
	"thermal/bell_pepper" : "thermal:bell_pepper",
	"thermal/coffee" : "thermal:coffee",
	"thermal/corn" : "thermal:corn",
	"thermal/eggplant" : "thermal:eggplant",
	"thermal/flax" : "thermal:flax",
	"thermal/frost_melon" : "thermal:frost_melon",
	"thermal/green_bean" : "thermal:green_bean",
	"thermal/hops" : "thermal:hops",
	"thermal/onion" : "thermal:onion",
	"thermal/peanut" : "thermal:peanut",
	"thermal/radish" : "thermal:radish",
	"thermal/rice" : "thermal:rice",
	"thermal/sadiroot" : "thermal:sadiroot",
	"thermal/spinach" : "thermal:spinach",
	"thermal/strawberry" : "thermal:strawberry",
	"thermal/tea" : "thermal:tea",
	"thermal/tomato" : "thermal:tomato",
	"undergarden/gloomgourd" : "undergarden:gloomgourd",
	"vinery/red_grape" : "vinery:red_grape",
	"vinery/white_grape" : "vinery:white_grape"
};
for addingSeedsGrinderLazierName, addingSeedsGrinderLazierMod in addingSeedsGrinderLazier {
	<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingSeedsGrinderLazierName + "_seed", {
		"output": {
			"item": "mekanism:bio_fuel",
			"count": lazier_bio_fuel_seeds_quantity
		},
		"input": {
			"item": addingSeedsGrinderLazierMod + "_seeds"
		},
		"process_time": lazier_process_time,
		"energy_cost": lazier_energy_cost
	});
	<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingSeedsGrinderLazierName, {
		"output": {
			"item": "mekanism:bio_fuel",
			"count": lazier_bio_fuel_seeds_quantity
		},
		"input": {
			"item": addingSeedsGrinderLazierMod
		},
		"process_time": lazier_process_time,
		"energy_cost": lazier_energy_cost
	});
}

var addingLeavesGrinderLazier = {
	"botania/horn_leaves" : "botania:horn_leaves",
	"ecologics/coconut_leaves" : "ecologics:coconut_leaves",
	"ecologics/walnut_leaves" : "ecologics:walnut_leaves",
	"integrateddynamics/menril_leaves" : "integrateddynamics:menril_leaves",
	"myrtrees/rubberwood_leaves" : "myrtrees:rubberwood_leaves",
	"mythicbotany/dreamwood_leaves" : "mythicbotany:dreamwood_leaves",
	"naturesaura/ancient_leaves" : "naturesaura:ancient_leaves",
	"naturesaura/decayed_leaves" : "naturesaura:decayed_leaves",
	"naturesaura/golden_leaves" : "naturesaura:golden_leaves",
	"quark/blue_blossom_leaves" : "quark:blue_blossom_leaves",
	"quark/lavender_blossom_leaves" : "quark:lavender_blossom_leaves",
	"quark/orange_blossom_leaves" : "quark:orange_blossom_leaves",
	"quark/pink_blossom_leaves" : "quark:pink_blossom_leaves",
	"quark/red_blossom_leaves" : "quark:red_blossom_leaves",
	"quark/yellow_blossom_leaves" : "quark:yellow_blossom_leaves",
	"tconstruct/earth_slime_leaves" : "tconstruct:earth_slime_leaves",
	"tconstruct/ender_slime_leaves" : "tconstruct:ender_slime_leaves",
	"tconstruct/sky_slime_leaves" : "tconstruct:sky_slime_leaves",
	"twilightforest/beanstalk_leaves" : "twilightforest:beanstalk_leaves",
	"twilightforest/canopy_leaves" : "twilightforest:canopy_leaves",
	"twilightforest/dark_leaves" : "twilightforest:dark_leaves",
	"twilightforest/fallen_leaves" : "twilightforest:fallen_leaves",
	"twilightforest/giant_leaves" : "twilightforest:giant_leaves",
	"twilightforest/mangrove_leaves" : "twilightforest:mangrove_leaves",
	"twilightforest/mining_leaves" : "twilightforest:mining_leaves",
	"twilightforest/rainbow_oak_leaves" : "twilightforest:rainbow_oak_leaves",
	"twilightforest/sorting_leaves" : "twilightforest:sorting_leaves",
	"twilightforest/thorn_leaves" : "twilightforest:thorn_leaves",
	"twilightforest/time_leaves" : "twilightforest:time_leaves",
	"twilightforest/transformation_leaves" : "twilightforest:transformation_leaves",
	"twilightforest/twilight_oak_leaves" : "twilightforest:twilight_oak_leaves",
	"undergarden/grongle_leaves" : "undergarden:grongle_leaves",
	"undergarden/hanging_grongle_leaves" : "undergarden:hanging_grongle_leaves",
	"undergarden/smogstem_leaves" : "undergarden:smogstem_leaves",
	"undergarden/wigglewood_leaves" : "undergarden:wigglewood_leaves",
	"vinery/cherry_leaves" : "vinery:cherry_leaves"
};
for addingLeavesGrinderLazierName, addingLeavesGrinderLazierMod in addingLeavesGrinderLazier {
	<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingLeavesGrinderLazierName, {
		"output": {
			"item": "mekanism:bio_fuel",
			"count": lazier_bio_fuel_leaves_quantity
		},
		"input": {
			"item": addingLeavesGrinderLazierMod
		},
		"process_time": lazier_process_time,
		"energy_cost": lazier_energy_cost
	});
}

var addingSaplingsGrinderLazier = {
	"croptopia/almond_sapling" : "croptopia:almond_sapling",
	"croptopia/apple_sapling" : "croptopia:apple_sapling",
	"croptopia/apricot_sapling" : "croptopia:apricot_sapling",
	"croptopia/avocado_sapling" : "croptopia:avocado_sapling",
	"croptopia/banana_sapling" : "croptopia:banana_sapling",
	"croptopia/cashew_sapling" : "croptopia:cashew_sapling",
	"croptopia/cherry_sapling" : "croptopia:cherry_sapling",
	"croptopia/coconut_sapling" : "croptopia:coconut_sapling",
	"croptopia/date_sapling" : "croptopia:date_sapling",
	"croptopia/dragonfruit_sapling" : "croptopia:dragonfruit_sapling",
	"croptopia/fig_sapling" : "croptopia:fig_sapling",
	"croptopia/grapefruit_sapling" : "croptopia:grapefruit_sapling",
	"croptopia/kumquat_sapling" : "croptopia:kumquat_sapling",
	"croptopia/lemon_sapling" : "croptopia:lemon_sapling",
	"croptopia/lime_sapling" : "croptopia:lime_sapling",
	"croptopia/mango_sapling" : "croptopia:mango_sapling",
	"croptopia/nectarine_sapling" : "croptopia:nectarine_sapling",
	"croptopia/nutmeg_sapling" : "croptopia:nutmeg_sapling",
	"croptopia/orange_sapling" : "croptopia:orange_sapling",
	"croptopia/peach_sapling" : "croptopia:peach_sapling",
	"croptopia/pear_sapling" : "croptopia:pear_sapling",
	"croptopia/pecan_sapling" : "croptopia:pecan_sapling",
	"croptopia/persimmon_sapling" : "croptopia:persimmon_sapling",
	"croptopia/plum_sapling" : "croptopia:plum_sapling",
	"croptopia/starfruit_sapling" : "croptopia:starfruit_sapling",
	"croptopia/walnut_sapling" : "croptopia:walnut_sapling",
	"croptopia/cinnamon_sapling" : "croptopia:cinnamon_sapling",
	"ecologics/walnut_sapling" : "ecologics:walnut_sapling",
	"quark/blue_blossom_sapling" : "quark:blue_blossom_sapling",
	"quark/lavender_blossom_sapling" : "quark:lavender_blossom_sapling",
	"quark/orange_blossom_sapling" : "quark:orange_blossom_sapling",
	"quark/pink_blossom_sapling" : "quark:pink_blossom_sapling",
	"quark/red_blossom_sapling" : "quark:red_blossom_sapling",
	"quark/yellow_blossom_sapling" : "quark:yellow_blossom_sapling",
	"simplytea/tea_sapling" : "simplytea:tea_sapling",
	"myrtrees/rubberwood_sapling" : "myrtrees:rubberwood_sapling",
	"tconstruct/blood_slime_sapling" : "tconstruct:blood_slime_sapling",
	"tconstruct/earth_slime_sapling" : "tconstruct:earth_slime_sapling",
	"tconstruct/ender_slime_sapling" : "tconstruct:ender_slime_sapling",
	"tconstruct/sky_slime_sapling" : "tconstruct:sky_slime_sapling",
	"twilightforest/canopy_sapling" : "twilightforest:canopy_sapling",
	"twilightforest/darkwood_sapling" : "twilightforest:darkwood_sapling",
	"twilightforest/hollow_oak_sapling" : "twilightforest:hollow_oak_sapling",
	"twilightforest/mangrove_sapling" : "twilightforest:mangrove_sapling",
	"twilightforest/mining_sapling" : "twilightforest:mining_sapling",
	"twilightforest/rainbow_oak_sapling" : "twilightforest:rainbow_oak_sapling",
	"twilightforest/sorting_sapling" : "twilightforest:sorting_sapling",
	"twilightforest/time_sapling" : "twilightforest:time_sapling",
	"twilightforest/transformation_sapling" : "twilightforest:transformation_sapling",
	"twilightforest/twilight_oak_sapling" : "twilightforest:twilight_oak_sapling",
	"undergarden/grongle_sapling" : "undergarden:grongle_sapling",
	"undergarden/smogstem_sapling" : "undergarden:smogstem_sapling",
	"undergarden/wigglewood_sapling" : "undergarden:wigglewood_sapling",
	"vinery/cherry_sapling" : "vinery:cherry_sapling",
	"vinery/old_cherry_sapling" : "vinery:old_cherry_sapling"
};
for addingSaplingsGrinderLazierName, addingSaplingsGrinderLazierMod in addingSaplingsGrinderLazier {
	<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingSaplingsGrinderLazierName, {
		"output": {
			"item": "mekanism:bio_fuel",
			"count": lazier_bio_fuel_saplings_quantity
		},
		"input": {
			"item": addingSaplingsGrinderLazierMod
		},
		"process_time": lazier_process_time,
		"energy_cost": lazier_energy_cost
	});
}

var addingMushroomsGrinderLazier = {
	"botania/black_mushroom" : "botania:black_mushroom",
	"botania/blue_mushroom" : "botania:blue_mushroom",
	"botania/brown_mushroom" : "botania:brown_mushroom",
	"botania/cyan_mushroom" : "botania:cyan_mushroom",
	"botania/gray_mushroom" : "botania:gray_mushroom",
	"botania/green_mushroom" : "botania:green_mushroom",
	"botania/magenta_mushroom" : "botania:magenta_mushroom",
	"botania/light_blue_mushroom" : "botania:light_blue_mushroom",
	"botania/light_gray_mushroom" : "botania:light_gray_mushroom",
	"botania/lime_mushroom" : "botania:lime_mushroom",
	"botania/orange_mushroom" : "botania:orange_mushroom",
	"botania/red_mushroom" : "botania:red_mushroom",
	"botania/pink_mushroom" : "botania:pink_mushroom",
	"botania/purple_mushroom" : "botania:purple_mushroom",
	"botania/yellow_mushroom" : "botania:yellow_mushroom",
	"botania/white_mushroom" : "botania:white_mushroom",
	"farmersdelight/brown_mushroom_colony" : "farmersdelight:brown_mushroom_colony",
	"farmersdelight/red_mushroom_colony" : "farmersdelight:red_mushroom_colony",
	"naturesaura/aura_mushroom" : "naturesaura:aura_mushroom",
	"naturesaura/crimson_aura_mushroom" : "naturesaura:crimson_aura_mushroom",
	"naturesaura/warped_aura_mushroom" : "naturesaura:warped_aura_mushroom",
	"twilightforest/mushgloom" : "twilightforest:mushgloom",
	"undergarden/blood_mushroom" : "undergarden:blood_mushroom",
	"undergarden/indigo_mushroom" : "undergarden:indigo_mushroom",
	"undergarden/ink_mushroom" : "undergarden:ink_mushroom",
	"undergarden/veil_mushroom" : "undergarden:veil_mushroom"
};
for addingMushroomsGrinderLazierName, addingMushroomsGrinderLazierMod in addingMushroomsGrinderLazier {
	<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingMushroomsGrinderLazierName, {
		"output": {
			"item": "mekanism:bio_fuel",
			"count": lazier_bio_fuel_mushrooms_quantity
		},
		"input": {
			"item": addingMushroomsGrinderLazierMod
		},
		"process_time": lazier_process_time,
		"energy_cost": lazier_energy_cost
	});
}

var addingMushroomsBlockGrinderLazier = {
	"naturesaura/nether_wart_mushroom" : "naturesaura:nether_wart_mushroom",
	"twilightforest/huge_mushgloom" : "twilightforest:huge_mushgloom",
	"twilightforest/huge_mushgloom_stem" : "twilightforest:huge_mushgloom_stem",
	"undergarden/blood_mushroom_cap" : "undergarden:blood_mushroom_cap",
	"undergarden/blood_mushroom_globule" : "undergarden:blood_mushroom_globule",
	"undergarden/blood_mushroom_stalk" : "undergarden:blood_mushroom_stalk",
	"undergarden/indigo_mushroom_cap" : "undergarden:indigo_mushroom_cap",
	"undergarden/indigo_mushroom_stalk" : "undergarden:indigo_mushroom_stalk",
	"undergarden/ink_mushroom_cap" : "undergarden:ink_mushroom_cap",
	"undergarden/veil_mushroom_cap" : "undergarden:veil_mushroom_cap",
	"undergarden/veil_mushroom_stalk" : "undergarden:veil_mushroom_stalk"
};
for addingMushroomsBlockGrinderLazierName, addingMushroomsBlockGrinderLazierMod in addingMushroomsBlockGrinderLazier {
	<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingMushroomsBlockGrinderLazierName, {
		"output": {
			"item": "mekanism:bio_fuel",
			"count": lazier_bio_fuel_mushrooms_block_quantity
		},
		"input": {
			"item": addingMushroomsBlockGrinderLazierMod
		},
		"process_time": lazier_process_time,
		"energy_cost": lazier_energy_cost
	});
}

var addingFlowersGrinderLazier = {
	"botania/black_double_flower" : "botania:black_double_flower",
	"botania/blue_double_flower" : "botania:blue_double_flower",
	"botania/brown_double_flower" : "botania:brown_double_flower",
	"botania/cyan_double_flower" : "botania:cyan_double_flower",
	"botania/gray_double_flower" : "botania:gray_double_flower",
	"botania/green_double_flower" : "botania:green_double_flower",
	"botania/light_blue_double_flower" : "botania:light_blue_double_flower",
	"botania/light_gray_double_flower" : "botania:light_gray_double_flower",
	"botania/lime_double_flower" : "botania:lime_double_flower",
	"botania/magenta_double_flower" : "botania:magenta_double_flower",
	"botania/orange_double_flower" : "botania:orange_double_flower",
	"botania/pink_double_flower" : "botania:pink_double_flower",
	"botania/purple_double_flower" : "botania:purple_double_flower",
	"botania/red_double_flower" : "botania:red_double_flower",
	"botania/yellow_double_flower" : "botania:yellow_double_flower",
	"botania/white_double_flower" : "botania:white_double_flower",
	"botania/black_mystical_flower" : "botania:black_mystical_flower",
	"botania/blue_mystical_flower" : "botania:blue_mystical_flower",
	"botania/brown_mystical_flower" : "botania:brown_mystical_flower",
	"botania/cyan_mystical_flower" : "botania:cyan_mystical_flower",
	"botania/gray_mystical_flower" : "botania:gray_mystical_flower",
	"botania/green_mystical_flower" : "botania:green_mystical_flower",
	"botania/light_blue_mystical_flower" : "botania:light_blue_mystical_flower",
	"botania/light_gray_mystical_flower" : "botania:light_gray_mystical_flower",
	"botania/lime_mystical_flower" : "botania:lime_mystical_flower",
	"botania/magenta_mystical_flower" : "botania:magenta_mystical_flower",
	"botania/orange_mystical_flower" : "botania:orange_mystical_flower",
	"botania/pink_mystical_flower" : "botania:pink_mystical_flower",
	"botania/purple_mystical_flower" : "botania:purple_mystical_flower",
	"botania/red_mystical_flower" : "botania:red_mystical_flower",
	"botania/yellow_mystical_flower" : "botania:yellow_mystical_flower",
	"botania/white_mystical_flower" : "botania:white_mystical_flower",
	"botania/black_shiny_flower" : "botania:black_shiny_flower",
	"botania/blue_shiny_flower" : "botania:blue_shiny_flower",
	"botania/brown_shiny_flower" : "botania:brown_shiny_flower",
	"botania/cyan_shiny_flower" : "botania:cyan_shiny_flower",
	"botania/gray_shiny_flower" : "botania:gray_shiny_flower",
	"botania/green_shiny_flower" : "botania:green_shiny_flower",
	"botania/light_blue_shiny_flower" : "botania:light_blue_shiny_flower",
	"botania/light_gray_shiny_flower" : "botania:light_gray_shiny_flower",
	"botania/lime_shiny_flower" : "botania:lime_shiny_flower",
	"botania/magenta_shiny_flower" : "botania:magenta_shiny_flower",
	"botania/orange_shiny_flower" : "botania:orange_shiny_flower",
	"botania/pink_shiny_flower" : "botania:pink_shiny_flower",
	"botania/purple_shiny_flower" : "botania:purple_shiny_flower",
	"botania/red_shiny_flower" : "botania:red_shiny_flower",
	"botania/yellow_shiny_flower" : "botania:yellow_shiny_flower",
	"botania/white_shiny_flower" : "botania:white_shiny_flower",
	"cyclic/flower_absalon_tulip" : "cyclic:flower_absalon_tulip",
	"cyclic/flower_cyan" : "cyclic:flower_cyan",
	"cyclic/flower_lime_carnation" : "cyclic:flower_lime_carnation",
	"cyclic/flower_purple_tulip" : "cyclic:flower_purple_tulip",
	"ecologics/azalea_flower" : "ecologics:azalea_flower",
	"enlightened_end/cradling_flower" : "enlightened_end:cradling_flower"
};
for addingFlowersGrinderLazierName, addingFlowersGrinderLazierMod in addingFlowersGrinderLazier {
	<recipetype:lazierae2:grinder>.addJsonRecipe("compat/mekanism/ginder/bio_fuel/" + addingFlowersGrinderLazierName, {
		"output": {
			"item": "mekanism:bio_fuel",
			"count": lazier_bio_fuel_flowers_quantity
		},
		"input": {
			"item": addingFlowersGrinderLazierMod
		},
		"process_time": lazier_process_time,
		"energy_cost": lazier_energy_cost
	});
}

println("End script recipe_lazier.");