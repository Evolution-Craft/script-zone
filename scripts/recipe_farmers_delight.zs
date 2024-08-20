/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Cooking Pot.
 * v0.2 : Add Vinery Mod Support.
 * v0.3 : Adding Door/Trapdoor/Sign in Cutting Board.
 * v0.4 : Adding Stripped Log and Wood on Cutting Board.
 * v0.5 : Remove unnecessary Item.
 */

Globals.startScript("recipe_farmers_delight");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shapeless
craftingTable.addShapeless("farmersdelight_delight/tconstruct/blood_cake", <item:tconstruct:blood_cake>, [<item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>]);
craftingTable.addShapeless("farmersdelight_delight/tconstruct/earth_cake", <item:tconstruct:earth_cake>, [<item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>]);
craftingTable.addShapeless("farmersdelight_delight/tconstruct/ender_cake", <item:tconstruct:ender_cake>, [<item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>]);
craftingTable.addShapeless("farmersdelight_delight/tconstruct/magma_cake", <item:tconstruct:magma_cake>, [<item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>]);
craftingTable.addShapeless("farmersdelight_delight/tconstruct/sky_cake", <item:tconstruct:sky_cake>, [<item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>]);
craftingTable.addShapeless("farmersdelight_delight/tconstruct/skyslime_sweets", <item:contenttweaker:tconstruct/delight/skyslime_sweets>, [<item:tconstruct:sky_slime_ball>, <item:minecraft:sugar>]);

// Shaped
craftingTable.removeByName("farmersdelight:cooking_pot");
craftingTable.addShaped("farmersdelight_delight_cooking_pot", <item:farmersdelight:cooking_pot>, [
	[<item:minecraft:brick>, <item:minecraft:iron_shovel>, <item:minecraft:brick>],
	[<item:minecraft:iron_ingot>, <item:minecraft:water_bucket>, <item:minecraft:iron_ingot>],
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);

// Cooking Pot
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/tconstruct/crimson_broth", <item:contenttweaker:tconstruct/delight/crimson_broth>, [<item:tconstruct:bloodbone>, [<item:tconstruct:blood_slime_tall_grass> | <item:tconstruct:blood_slime_fern>], <item:minecraft:nether_wart>], <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>, <item:minecraft:bowl>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/tconstruct/enderslime_pudding", <item:contenttweaker:tconstruct/delight/enderslime_pudding>, [<item:tconstruct:ender_slime_ball>, <item:minecraft:chorus_fruit>, <item:minecraft:sugar>], <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>, <item:minecraft:air>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/tconstruct/tinkers_stew", <item:contenttweaker:tconstruct/delight/tinkers_stewe>, [<item:farmersdelight:cooked_bacon>, <item:tconstruct:sky_slime_ball>, <item:tconstruct:blood_slime_sapling>, <tag:items:forge:vegetables>], <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>, <item:minecraft:bowl>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/vinery/applesauce", <item:vinery:applesauce>, [<item:minecraft:apple>, <item:minecraft:sugar> * 2], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:minecraft:bowl>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/vinery/apple_jam", <item:vinery:apple_jam>, [<item:minecraft:apple>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/vinery/cherry_jam", <item:vinery:cherry_jam>, [<item:vinery:cherry>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/vinery/grape_jam", <item:vinery:grape_jam>, [<tag:items:forge:crops/grape>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/vinery/sweetberry_jam", <item:vinery:sweetberry_jam>, [<item:minecraft:sweet_berries>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 1, 400);

// Cutting Board
var addingSeedCuttingFarmersDelight = {
	"artichoke" : "croptopia:artichoke_seed",
	"asparagus" : "croptopia:asparagus_seed",
	"barley" : "croptopia:barley_seed",
	"basil" : "croptopia:basil_seed",
	"bellpepper" : "croptopia:bellpepper_seed",
	"blackbean" : "croptopia:blackbean_seed",
	"blackberry" : "croptopia:blackberry_seed",
	"blueberry" : "croptopia:blueberry_seed",
	"broccoli" : "croptopia:broccoli_seed",
	"cabbage" : "croptopia:cabbage_seed",
	"cantaloupe" : "croptopia:cantaloupe_seed",
	"cauliflower" : "croptopia:cauliflower_seed",
	"celery" : "croptopia:celery_seed",
	"chile_pepper" : "croptopia:chile_pepper_seed",
	"coffee" : "croptopia:coffee_seed",
	"corn" : "croptopia:corn_seed",
	"cranberry" : "croptopia:cranberry_seed",
	"cucumber" : "croptopia:cucumber_seed",
	"currant" : "croptopia:currant_seed",
	"eggplant" : "croptopia:eggplant_seed",
	"elderberry" : "croptopia:elderberry_seed",
	"garlic" : "croptopia:garlic_seed",
	"ginger" : "croptopia:ginger_seed",
	"grape" : "croptopia:grape_seed",
	"greenbean" : "croptopia:greenbean_seed",
	"greenonion" : "croptopia:greenonion_seed",
	"honeydew" : "croptopia:honeydew_seed",
	"hops" : "croptopia:hops_seed",
	"kale" : "croptopia:kale_seed",
	"kiwi" : "croptopia:kiwi_seed",
	"leek" : "croptopia:leek_seed",
	"lettuce" : "croptopia:lettuce_seed",
	"mustard" : "croptopia:mustard_seed",
	"oat" : "croptopia:oat_seed",
	"olive" : "croptopia:olive_seed",
	"onion" : "croptopia:onion_seed",
	"peanut" : "croptopia:peanut_seed",
	"pepper" : "croptopia:pepper_seed",
	"pineapple" : "croptopia:pineapple_seed",
	"radish" : "croptopia:radish_seed",
	"raspberry" : "croptopia:raspberry_seed",
	"rhubarb" : "croptopia:rhubarb_seed",
	"rice" : "croptopia:rice_seed",
	"rutabaga" : "croptopia:rutabaga_seed",
	"saguaro" : "croptopia:saguaro_seed",
	"soybean" : "croptopia:soybean_seed",
	"spinach" : "croptopia:spinach_seed",
	"squash" : "croptopia:squash_seed",
	"strawberry" : "croptopia:strawberry_seed",
	"sweetpotato" : "croptopia:sweetpotato_seed",
	"tea" : "croptopia:tea_seed",
	"tomatillo" : "croptopia:tomatillo_seed",
	"tomato" : "croptopia:tomato_seed",
	"turmeric" : "croptopia:turmeric_seed",
	"turnip" : "croptopia:turnip_seed",
	"vanilla" : "croptopia:vanilla_seeds",
	"yam" : "croptopia:yam_seed",
	"zucchini" : "croptopia:zucchini_seed"
};
for addingSeedCuttingFarmersDelightName, addingSeedCuttingFarmersDelightOut in addingSeedCuttingFarmersDelight {
	if (addingSeedCuttingFarmersDelightName == "barley" || addingSeedCuttingFarmersDelightName == "corn" || addingSeedCuttingFarmersDelightName == "oat") {
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/croptopia/" + addingSeedCuttingFarmersDelightName, {
			"ingredients": [{
				"item": "croptopia:" + addingSeedCuttingFarmersDelightName
			}],
			"tool": {
				"tag": "forge:tools/knives"
			},
			"result": [{
				"item": addingSeedCuttingFarmersDelightOut
			},
			{
				"item": addingSeedCuttingFarmersDelightOut,
				"chance": 0.5
			},
			{
				"item": "croptopia:flour",
				"chance": 0.3
			}]
		});
	} else if (addingSeedCuttingFarmersDelightName == "chile_pepper") {
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/croptopia/" + addingSeedCuttingFarmersDelightName, {
			"ingredients": [{
				"item": "croptopia:" + addingSeedCuttingFarmersDelightName
			}],
			"tool": {
				"tag": "forge:tools/knives"
			},
			"result": [{
				"item": addingSeedCuttingFarmersDelightOut
			},
			{
				"item": addingSeedCuttingFarmersDelightOut,
				"chance": 0.5
			},
			{
				"item": "croptopia:paprica",
				"chance": 0.3
			}]
		});
	} else {
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/croptopia/" + addingSeedCuttingFarmersDelightName, {
			"ingredients": [{
				"item": "croptopia:" + addingSeedCuttingFarmersDelightName
			}],
			"tool": {
				"tag": "forge:tools/knives"
			},
			"result": [{
				"item": addingSeedCuttingFarmersDelightOut
			},
			{
				"item": addingSeedCuttingFarmersDelightOut,
				"chance": 0.5
			}]
		});
	}
}

var addingLogCuttingFarmersDelight = {
	"tconstruct:bloodshroom_log" : "tconstruct:stripped_bloodshroom_log",
	"tconstruct:bloodshroom_wood" : "tconstruct:stripped_bloodshroom_wood",
	"ecologics:azalea_log" : "ecologics:stripped_azalea_log",
	"ecologics:azalea_wood" : "ecologics:stripped_azalea_wood",
	"enlightened_end:cerulean_log" : "enlightened_end:stripped_cerulean_stalk_block",
	"twilightforest:canopy_log" : "twilightforest:stripped_canopy_log",
	"twilightforest:canopy_wood" : "twilightforest:stripped_canopy_wood",
	"croptopia:cinnamon_log" : "croptopia:stripped_cinnamon_log",
	"croptopia:cinnamon_wood" : "croptopia:stripped_cinnamon_wood",
	"ecologics:coconut_log" : "ecologics:stripped_coconut_log",
	"ecologics:coconut_wood" : "ecologics:stripped_coconut_wood",
	"botania:dreamwood_log" : "botania:stripped_dreamwood_log",
	"botania:dreamwood" : "botania:stripped_dreamwood",
	"botania:glimmering_dreamwood_log" : "botania:glimmering_stripped_dreamwood_log",
	"botania:glimmering_dreamwood" : "botania:glimmering_stripped_dreamwood",
	"twilightforest:dark_log" : "twilightforest:stripped_dark_log",
	"twilightforest:dark_wood" : "twilightforest:stripped_dark_wood",
	"ecologics:flowering_azalea_log" : "ecologics:stripped_azalea_log",
	"ecologics:flowering_azalea_wood" : "ecologics:stripped_azalea_wood",
	"tconstruct:greenheart_log" : "tconstruct:stripped_greenheart_log",
	"tconstruct:greenheart_wood" : "tconstruct:stripped_greenheart_wood",
	"enlightened_end:indigo_stem" : "enlightened_end:stripped_indigo_stem",
	"enlightened_end:indigo_hyphae" : "enlightened_end:stripped_indigo_hyphae",
	"botania:livingwood_log" : "botania:stripped_livingwood_log",
	"botania:livingwood" : "botania:stripped_livingwood",
	"botania:glimmering_livingwood_log" : "botania:glimmering_stripped_livingwood_log",
	"botania:glimmering_livingwood" : "botania:glimmering_stripped_livingwood",
	"infernalexp:luminous_stem" : "infernalexp:stripped_luminous_stem",
	"infernalexp:luminous_hyphae" : "infernalexp:stripped_luminous_hyphae",
	"twilightforest:mangrove_log" : "twilightforest:stripped_mangrove_log",
	"twilightforest:mangrove_wood" : "twilightforest:stripped_mangrove_wood",
	"twilightforest:mining_log" : "twilightforest:stripped_mining_log",
	"twilightforest:mining_wood" : "twilightforest:stripped_mining_wood",
	"integrateddynamics:menril_log" : "integrateddynamics:menril_log_stripped",
	"integrateddynamics:menril_wood" : "integrateddynamics:menril_wood_stripped",
	"twilightforest:sorting_log" : "twilightforest:stripped_sorting_log",
	"twilightforest:sorting_wood" : "twilightforest:stripped_sorting_wood",
	"tconstruct:skyroot_log" : "tconstruct:stripped_skyroot_log",
	"tconstruct:skyroot_wood" : "tconstruct:stripped_skyroot_wood",
	"ecologics:walnut_log" : "ecologics:stripped_walnut_log",
	"ecologics:walnut_wood" : "ecologics:stripped_walnut_wood",
	"twilightforest:time_log" : "twilightforest:stripped_time_log",
	"twilightforest:time_wood" : "twilightforest:stripped_time_wood",
	"twilightforest:transformation_log" : "twilightforest:stripped_transformation_log",
	"twilightforest:transformation_wood" : "twilightforest:stripped_transformation_wood",
	"twilightforest:twilight_oak_log" : "twilightforest:stripped_twilight_oak_log",
	"twilightforest:twilight_oak_wood" : "twilightforest:stripped_twilight_oak_wood",
	"vinery:cherry_log" : "vinery:stripped_cherry_log",
	"vinery:cherry_wood" : "vinery:stripped_cherry_wood",
	"vinery:old_cherry_log" : "vinery:stripped_old_cherry_log",
	"vinery:old_cherry_wood" : "vinery:stripped_old_cherry_wood"
};
for addingLogCuttingFarmersDelightIn, addingLogCuttingFarmersDelightOut in addingLogCuttingFarmersDelight {
	<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + <item:${addingLogCuttingFarmersDelightIn}>.registryName.path, {
		"ingredients": [{
			"item": addingLogCuttingFarmersDelightIn
		}],
		"tool": {
			"type": "farmersdelight:tool_action",
			"action": "axe_strip"
		},
		"result": [{
			"item": addingLogCuttingFarmersDelightOut
		},
		{
			"item": "farmersdelight:tree_bark"
		}],
		"sound": "minecraft:item.axe.strip"
	});
}

var addingDoorCuttingFarmersDelight = {
	"azalea" : "ecologics:azalea",
	"bloodshroom" : "tconstruct:bloodshroom",
	"canopy" : "twilightforest:canopy",
	"cerulean" : "enlightened_end:cerulean",
	"cherry" : "vinery:cherry",
	"coconut" : "ecologics:coconut",
	"darkwood" : "twilightforest:dark",
	"flowering_azalea" : "ecologics:flowering_azalea",
	"greenheart" : "tconstruct:greenheart",
	"indigo" : "enlightened_end:indigo",
	"mangrove" : "twilightforest:mangrove",
	"mining" : "twilightforest:mining",
	"sorting" : "twilightforest:sorting",
	"skyroot" : "tconstruct:skyroot",
	"walnut" : "ecologics:walnut",
	"timewood" : "twilightforest:time",
	"transformation" : "twilightforest:transformation",
	"twilight_oak" : "twilightforest:twilight_oak"
};
for addingDoorCuttingFarmersDelightName, addingDoorCuttingFarmersDelightId in addingDoorCuttingFarmersDelight {
	<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingDoorCuttingFarmersDelightName + "_door", {
		"ingredients": [{
			"item": addingDoorCuttingFarmersDelightId + "_door"
		}],
		"tool": {
			"type": "farmersdelight:tool_action",
			"action": "axe_dig"
		},
		"result": [{
			"item": addingDoorCuttingFarmersDelightId + "_planks"
		}]
	});
	<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingDoorCuttingFarmersDelightName + "_trapdoor", {
		"ingredients": [{
			"item": addingDoorCuttingFarmersDelightId + "_trapdoor"
		}],
		"tool": {
			"type": "farmersdelight:tool_action",
			"action": "axe_dig"
		},
		"result": [{
			"item": addingDoorCuttingFarmersDelightId + "_planks"
		}]
	});
}

var addingSignCuttingFarmersDelight = {
	"azalea" : "ecologics:azalea",
	"bloodshroom" : "tconstruct:bloodshroom",
	"canopy" : "twilightforest:canopy",
	"coconut" : "ecologics:coconut",
	"flowering_azalea" : "ecologics:flowering_azalea",
	"greenheart" : "tconstruct:greenheart",
	"mangrove" : "twilightforest:mangrove",
	"mining" : "twilightforest:mining",
	"sorting" : "twilightforest:sorting",
	"skyroot" : "tconstruct:skyroot",
	"walnut" : "ecologics:walnut",
	"timewood" : "twilightforest:time",
	"transformation" : "twilightforest:transformation",
	"twilight_oak" : "twilightforest:twilight_oak"
};
for addingSignCuttingFarmersDelightName, addingSignCuttingFarmersDelightId in addingSignCuttingFarmersDelight {
	<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingSignCuttingFarmersDelightName + "_sign", {
		"ingredients": [{
			"item": addingSignCuttingFarmersDelightId + "_sign"
		}],
		"tool": {
			"type": "farmersdelight:tool_action",
			"action": "axe_dig"
		},
		"result": [{
			"item": addingSignCuttingFarmersDelightId + "_planks"
		}]
	});
}

var addingTFLostCuttingFarmersDelight = {
	"towerwood" : "twilightforest:towerwood",
	"thorn" : "tflostblocks:thorn_planks"
};
for addingTFLostCuttingFarmersDelightName, addingTFLostCuttingFarmersDelightId in addingTFLostCuttingFarmersDelight {
	<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingTFLostCuttingFarmersDelightName + "_door", {
		"ingredients": [{
			"item": "tflostblocks:" + addingTFLostCuttingFarmersDelightName + "_door"
		}],
		"tool": {
			"type": "farmersdelight:tool_action",
			"action": "axe_dig"
		},
		"result": [{
			"item": addingTFLostCuttingFarmersDelightId
		}]
	});
	<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingTFLostCuttingFarmersDelightName + "_trapdoor", {
		"ingredients": [{
			"item": "tflostblocks:" + addingTFLostCuttingFarmersDelightName + "_trapdoor"
		}],
		"tool": {
			"type": "farmersdelight:tool_action",
			"action": "axe_dig"
		},
		"result": [{
			"item": addingTFLostCuttingFarmersDelightId
		}]
	});
	<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingTFLostCuttingFarmersDelightName + "_sign", {
		"ingredients": [{
			"item": "tflostblocks:" + addingTFLostCuttingFarmersDelightName + "_sign"
		}],
		"tool": {
			"type": "farmersdelight:tool_action",
			"action": "axe_dig"
		},
		"result": [{
			"item": addingTFLostCuttingFarmersDelightId
		}]
	});
}

<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/menril_door", {
	"ingredients": [{
		"item": "integrateddynamics:menril_door"
	}],
	"tool": {
		"type": "farmersdelight:tool_action",
		"action": "axe_dig"
	},
	"result": [{
		"item": "integrateddynamics:menril_planks"
	}]
});

<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/chorus_nest_planks_door", {
	"ingredients": [{
		"item": "unusualend:chorus_nest_planks_door"
	}],
	"tool": {
		"type": "farmersdelight:tool_action",
		"action": "axe_dig"
	},
	"result": [{
		"item": "unusualend:chorus_nest_planks"
	}]
});

<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/chorus_nest_trapdoor", {
	"ingredients": [{
		"item": "unusualend:chorus_nest_trapdoor"
	}],
	"tool": {
		"type": "farmersdelight:tool_action",
		"action": "axe_dig"
	},
	"result": [{
		"item": "unusualend:chorus_nest_planks"
	}]
});

<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/darkwood_sign", {
	"ingredients": [{
		"item": "twilightforest:darkwood_sign"
	}],
	"tool": {
		"type": "farmersdelight:tool_action",
		"action": "axe_dig"
	},
	"result": [{
		"item": "twilightforest:dark_planks"
	}]
});

<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/alexsmobs/fish_bones", <item:alexsmobs:fish_bones>, [<item:minecraft:bone_meal> * 4], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculture/fish_bones", <item:aquaculture:fish_bones>, [<item:minecraft:bone_meal> * 4], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/netherdepthsupgrade/fish_bones", <item:netherdepthsupgrade:bonefish>, [<item:minecraft:bone_meal> * 4], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/blood_cake_slice", <item:tconstruct:blood_cake>, [<item:contenttweaker:tconstruct/delight/blood_cake_slice> * 7], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/earth_cake_slice", <item:tconstruct:earth_cake>, [<item:contenttweaker:tconstruct/delight/earth_cake_slice> * 7], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/enderslime_cake_slice", <item:tconstruct:ender_cake>, [<item:contenttweaker:tconstruct/delight/enderslime_cake_slice> * 7], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/magma_cake_slice", <item:tconstruct:magma_cake>, [<item:contenttweaker:tconstruct/delight/magma_cake_slice> * 7], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/skyslime_cake_slice", <item:tconstruct:skyslime_cake>, [<item:contenttweaker:tconstruct/delight/skyslime_cake_slice> * 7], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/thermal/frost_melon_slice", <item:thermal:frost_melon>, [<item:thermal:frost_melon_slice> * 9], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/vinery/cake_slice", <item:vinery:apple_pie>, [<item:vinery:apple_pie_slice> * 4], <tag:items:farmersdelight:tools/knives>);

Globals.endScript("recipe_farmers_delight");