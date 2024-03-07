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

println("Start script recipe_farmers_delight.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Cooking Pot
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_applesauce", <item:vinery:applesauce>, [<item:minecraft:apple>, <item:minecraft:sugar> * 2], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:minecraft:bowl>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_apple_jam", <item:vinery:apple_jam>, [<item:minecraft:apple>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_cherry_jam", <item:vinery:cherry_jam>, [<item:vinery:cherry>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_grape_jam", <item:vinery:grape_jam>, [<tag:items:forge:crops/grape>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_sweetberry_jam", <item:vinery:sweetberry_jam>, [<item:minecraft:sweet_berries>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 1, 400);

// Cutting Board
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
	"twilightforest:twilight_oak_wood" : "twilightforest:stripped_twilight_oak_wood"
};
for addingLogCuttingFarmersDelightIn, addingLogCuttingFarmersDelightOut in addingLogCuttingFarmersDelight {
	val addingLogCuttingFarmersDelightName = <item:${addingLogCuttingFarmersDelightIn}>;
	<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingLogCuttingFarmersDelightName.registryName.path, {
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

<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/cherry_log", {
	"ingredients": [{
		"item": "vinery:cherry_log"
	}],
	"tool": {
		"type": "farmersdelight:tool_action",
		"action": "axe_strip"
	},
	"result": [{
		"item": "vinery:stripped_cherry_log"
	},
	{
		"item": "farmersdelight:tree_bark"
	}],
	"sound": "minecraft:item.axe.strip"
});
<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/cherry_wood", {
	"ingredients": [{
		"item": "vinery:cherry_wood"
	}],
	"tool": {
		"type": "farmersdelight:tool_action",
		"action": "axe_strip"
	},
	"result": [{
		"item": "vinery:stripped_cherry_wood"
	},
	{
		"item": "farmersdelight:tree_bark"
	}],
	"sound": "minecraft:item.axe.strip"
});
<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/old_cherry_log", {
	"ingredients": [{
		"item": "vinery:old_cherry_log"
	}],
	"tool": {
		"type": "farmersdelight:tool_action",
		"action": "axe_strip"
	},
	"result": [{
		"item": "vinery:stripped_old_cherry_log"
	},
	{
		"item": "farmersdelight:tree_bark"
	}],
	"sound": "minecraft:item.axe.strip"
});
<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/old_cherry_wood", {
	"ingredients": [{
		"item": "vinery:old_cherry_wood"
	}],
	"tool": {
		"type": "farmersdelight:tool_action",
		"action": "axe_strip"
	},
	"result": [{
		"item": "vinery:stripped_old_cherry_wood"
	},
	{
		"item": "farmersdelight:tree_bark"
	}],
	"sound": "minecraft:item.axe.strip"
});

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
<recipetype:farmersdelight:cutting>.addRecipe("thermal_cutting_board_frost_melon_slice", <item:thermal:frost_melon>, [<item:thermal:frost_melon_slice> * 9], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("vinery_cutting_board_cake_slice", <item:vinery:apple_pie>, [<item:vinery:apple_pie_slice> * 4], <tag:items:farmersdelight:tools/knives>);

// Shaped
craftingTable.removeByName("farmersdelight:cooking_pot");
craftingTable.addShaped("farmersdelight_delight_cooking_pot", <item:farmersdelight:cooking_pot>, [
	[<item:minecraft:brick>, <item:minecraft:iron_shovel>, <item:minecraft:brick>],
	[<item:minecraft:iron_ingot>, <item:minecraft:water_bucket>, <item:minecraft:iron_ingot>],
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);

println("End script recipe_farmers_delight.");