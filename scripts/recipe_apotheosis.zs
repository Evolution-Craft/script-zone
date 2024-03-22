/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Custom Arrow Recipe.
 */

Globals.startScript("recipe_apotheosis");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
//import crafttweaker.api.tag.manager.ITagManager;

// Fletching
craftingTable.removeByName("archarsenal:arrow_up_vanilla_to_barbed");
craftingTable.removeByName("archarsenal:barbed_arrow");
<recipetype:apotheosis:fletching>.addJsonRecipe("fletching/barbed_arrow", {
	"conditions": [{
		"type": "apotheosis:module",
		"module": "village"
	}],
	"ingredients": [{
			"item": "minecraft:iron_nugget"
		},
		{
			"item": "minecraft:stick"
		},
		{
			"item": "minecraft:feather"
		}
	],
	"result": {
		"item": "archarsenal:barbed_arrow",
		"count": 2
	}
});

craftingTable.removeByName("unusualend:phantom_arrows");
<recipetype:apotheosis:fletching>.addJsonRecipe("fletching/phantom_arrow", {
	"conditions": [{
		"type": "apotheosis:module",
		"module": "village"
	}],
	"ingredients": [{
			"item": "minecraft:phantom_membrane"
		},
		{
			"item": "minecraft:arrow"
		},
		{
			"item": "minecraft:phantom_membrane"
		}
	],
	"result": {
		"item": "unusualend:phantom_arrow",
		"count": 4
	}
});

craftingTable.removeByName("alexsmobs:shark_tooth_arrow");
<recipetype:apotheosis:fletching>.addJsonRecipe("fletching/shark_tooth_arrow", {
	"conditions": [{
		"type": "apotheosis:module",
		"module": "village"
	}],
	"ingredients": [{
			"item": "alexsmobs:shark_tooth"
		},
		{
			"item": "minecraft:stick"
		},
		{
			"item": "minecraft:kelp"
		}
	],
	"result": {
		"item": "alexsmobs:shark_tooth_arrow",
		"count": 6
	}
});

Globals.endScript("recipe_apotheosis");