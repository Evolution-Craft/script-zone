/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Petrified Oak Slab.
 * v0.2 : Add Custom Rods.
 */

println("Start script recipe_tinkers_construct.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Casting Basin
<recipetype:tconstruct:casting_basin>.addJsonRecipe("tconstruct_casting_basin/minecraft_petrified_oak_slab", {
	"cast": {
		"item": "minecraft:oak_slab"
	},
	"cast_consumed": true,
	"fluid": {
		"tag": "tconstruct:molten_clay",
		"amount": 180
	},
	"result": "minecraft:petrified_oak_slab",
	"cooling_time": 221
});

// Casting Table
<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_smeltery/casting/diamond/rod_gold_cast", {
	"cast": {
		"tag": "tconstruct:casts/multi_use/rod"
	},
	"fluid": {
		"tag": "forge:molten_diamond",
		"amount": 45
	},
		"result": {
		"item": "contenttweaker:immersiveengineering/diamond_rod"
	},
	"cooling_time": 83
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_smeltery/casting/diamond/rod_sand_cast", {
	"cast": {
		"tag": "tconstruct:casts/single_use/rod"
	},
	"cast_consumed": true,
	"fluid": {
		"tag": "forge:molten_diamond",
		"amount": 45
	},
	"result": {
		"item": "contenttweaker:immersiveengineering/diamond_rod"
	},
	"cooling_time": 83
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_smeltery/casting/emerald/rod_gold_cast", {
	"cast": {
		"tag": "tconstruct:casts/multi_use/rod"
	},
	"fluid": {
		"tag": "forge:molten_emerald",
		"amount": 45
	},
		"result": {
		"item": "contenttweaker:immersiveengineering/emerald_rod"
	},
	"cooling_time": 68
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_smeltery/casting/emerald/rod_sand_cast", {
	"cast": {
		"tag": "tconstruct:casts/single_use/rod"
	},
	"cast_consumed": true,
	"fluid": {
		"tag": "forge:molten_emerald",
		"amount": 45
	},
	"result": {
		"item": "contenttweaker:immersiveengineering/emerald_rod"
	},
	"cooling_time": 68
});

println("End script recipe_tinkers_construct.");