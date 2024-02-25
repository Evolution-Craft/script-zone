/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Cooking Pot.
 * v0.2 : Add Vinery Mod Support.
 * v0.3 : Adding Door/Trapdoor/Sign in Cutting Board.
 */

println("Start script recipe_farmers_delight.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Cooking Pot
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_applesauce", <item:vinery:applesauce>, [<item:minecraft:apple>, <item:minecraft:sugar> * 2], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:minecraft:bowl>, 100, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_apple_jam", <item:vinery:apple_jam>, [<item:minecraft:apple>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 100, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_cherry_jam", <item:vinery:cherry_jam>, [<item:vinery:cherry>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 100, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_grape_jam", <item:vinery:grape_jam>, [<tag:items:forge:crops/grape>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 100, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_sweetberry_jam", <item:vinery:sweetberry_jam>, [<item:minecraft:sweet_berries>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 100, 400);

// Cutting Board
var addingDoorCuttingFarmersDelight = {
	"azalea" : "ecologics:azalea",
	"azalea_quark" : "quark:azalea",
	"bloodshroom" : "tconstruct:bloodshroom",
	"blossom" : "quark:blossom",
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
	"azalea_quark" : "quark:azalea",
	"bloodshroom" : "tconstruct:bloodshroom",
	"blossom" : "quark:blossom",
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