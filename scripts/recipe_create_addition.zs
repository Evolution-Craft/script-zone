/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Missing Wire.
 * v0.2 : Move to Kubejs for solving vaious bug.
 * v0.3 : Add Custom Rods.
 */
 
println("Start script recipe_create_addition");
println("Script Priority Null.");

// Rolling
<recipetype:createaddition:rolling>.addJsonRecipe("createaddition_rolling/diamond_rod", {
	"input": {
		"tag": "forge:gems/diamond"
	},
	"result": {
		"item": "contenttweaker:immersiveengineering/diamond_rod",
		"count": 1
	}
}

<recipetype:createaddition:rolling>.addJsonRecipe("createaddition_rolling/emerald_rod", {
	"input": {
		"tag": "forge:gems/emerald"
	},
	"result": {
		"item": "contenttweaker:immersiveengineering/emerald_rod",
		"count": 1
	}
}

println("End script recipe_create_addition.");