/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Petrified Oak Slab.
 */

println("Start script recipe_tinkers_construct.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Casting Table
<recipetype:tconstruct:casting_basin>.addJsonRecipe("tconstruct_casting_table/minecraft_petrified_oak_slab", {
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

println("End script recipe_tinkers_construct.");