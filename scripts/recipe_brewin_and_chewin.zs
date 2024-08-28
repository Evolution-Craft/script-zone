/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Vinery Vine.
 */

Globals.startScript("recipe_brewin_and_chewin");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.removeByName("brewinandchewin:ham_and_cheese_sandwich");
craftingTable.addShaped("brewinandchewin/ham_and_cheese_sandwich", <item:brewinandchewin:ham_and_cheese_sandwich>, [
	[<tag:items:forge:bread>, <tag:items:forge:cheeses>, <item:minecraft:air>],
	[<item:farmersdelight:smoked_ham>, <tag:items:forge:bread>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.removeByName("brewinandchewin:pizza");
craftingTable.addShaped("brewinandchewin/pizza", <item:brewinandchewin:pizza>, [
	[<tag:items:forge:cheeses>, <tag:items:forge:cheeses>, <tag:items:forge:cheeses>],
	[<item:minecraft:brown_mushroom>, <tag:items:forge:tomatoes>, <item:farmersdelight:beef_patty>],
	[<tag:items:forge:dough>, <tag:items:forge:dough>, <tag:items:forge:dough>]
]);

// Fermenting
<recipetype:brewinandchewin:fermenting>.removeByName("brewinandchewin:fermenting/beer");
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/beer", {
	"ingredients": [
	{
		"tag": "forge:grain"
	},
	{
		"tag": "forge:grain"
	},
	{
		"tag": "forge:grain"
	}],
	"result": {
		"item": "brewinandchewin:beer"
	},
	"container": {
		"item": "brewinandchewin:tankard"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 0.6,
	"cookingtime": 12000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.removeByName("brewinandchewin:fermenting/bloody_mary");
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/bloody_mary", {
	"ingredients": [
	{
		"tag": "forge:tomatoes"
	},
	{
		"tag": "forge:tomatoes"
	},
	{
		"item": "farmersdelight:cabbage_leaf"
	},
	{
		"tag": "forge:berries"
	}],
	"result": {
		"item": "brewinandchewin:bloody_mary"
	},
	"container": {
		"item": "brewinandchewin:tankard"
	},
	"liquid": {
		"item": "brewinandchewin:vodka"
	},
	"experience": 0.6,
	"cookingtime": 12000,
	"temperature": 4
});
<recipetype:brewinandchewin:fermenting>.removeByName("brewinandchewin:fermenting/egg_grog");
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/egg_grog", {
	"ingredients": [
	{
		"tag": "forge:eggs"
	},
	{
		"tag": "forge:eggs"
	},
	{
		"item": "farmersdelight:cabbage_leaf"
	},
	{
		"item": "minecraft:sugar"
	}],
	"result": {
		"item": "brewinandchewin:egg_grog"
	},
	"container": {
		"item": "brewinandchewin:tankard"
	},
	"liquid": {
		"tag": "evolution_craft:milk"
	},
	"experience": 0.6,
	"cookingtime": 12000,
	"temperature": 4
});
<recipetype:brewinandchewin:fermenting>.removeByName("brewinandchewin:fermenting/mead");
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/mead", {
	"ingredients": [
	{
		"tag": "forge:potatoes"
	},
	{
		"tag": "forge:potatoes"
	},
	{
		"tag": "forge:potatoes"
	}],
	"result": {
		"item": "brewinandchewin:mead"
	},
	"container": {
		"item": "brewinandchewin:tankard"
	},
	"liquid": {
		"item": "minecraft:honey_bottle"
	},
	"experience": 0.6,
	"cookingtime": 12000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.removeByName("brewinandchewin:fermenting/rice_wine");
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/rice_wine", {
	"ingredients": [
	{
		"tag": "forge:rice"
	},
	{
		"tag": "forge:rice"
	},
	{
		"tag": "forge:rice"
	},
	{
		"tag": "forge:rice"
	}],
	"result": {
		"item": "brewinandchewin:rice_wine"
	},
	"container": {
		"item": "brewinandchewin:tankard"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 0.6,
	"cookingtime": 12000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.removeByName("brewinandchewin:fermenting/saccharine_rum");
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/saccharine_rum", {
	"ingredients": [
	{
		"tag": "forge:berries"
	},
	{
		"item": "minecraft:sugar_cane"
	},
	{
		"item": "minecraft:sugar_cane"
	},
	{
		"tag": "forge:melons"
	}],
	"result": {
		"item": "brewinandchewin:saccharine_rum"
	},
	"container": {
		"item": "brewinandchewin:tankard"
	},
	"liquid": {
		"item": "brewinandchewin:mead"
	},
	"experience": 0.6,
	"cookingtime": 12000,
	"temperature": 4
});
<recipetype:brewinandchewin:fermenting>.removeByName("brewinandchewin:fermenting/steel_toe_stout");
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/steel_toe_stout", {
	"ingredients": [
	{
		"item": "minecraft:crimson_fungus"
	},
	{
		"item": "minecraft:iron_ingot"
	},
	{
		"item": "minecraft:nether_wart"
	},
	{
		"tag": "forge:grain"
	}],
	"result": {
		"item": "brewinandchewin:steel_toe_stout"
	},
	"container": {
		"item": "brewinandchewin:tankard"
	},
	"liquid": {
		"item": "brewinandchewin:strongroot_ale"
	},
	"experience": 0.6,
	"cookingtime": 12000,
	"temperature": 1
});

<recipetype:brewinandchewin:fermenting>.removeByName("brewinandchewin:fermenting/strongroot_ale");
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/strongroot_ale", {
	"ingredients": [
	{
		"item": "minecraft:beetroot"
	},
	{
		"tag": "forge:potatoes"
	},
	{
		"item": "minecraft:brown_mushroom"
	},
	{
		"item": "minecraft:carrot"
	}],
	"result": {
		"item": "brewinandchewin:strongroot_ale"
	},
	"container": {
		"item": "brewinandchewin:tankard"
	},
	"liquid": {
		"item": "brewinandchewin:tankard"
	},
	"experience": 0.6,
	"cookingtime": 12000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.removeByName("brewinandchewin:fermenting/vodka");
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vodka", {
	"ingredients": [
	{
		"tag": "forge:potatoes"
	},
	{
		"tag": "forge:potatoes"
	},
	{
		"tag": "forge:potatoes"
	},
	{
		"tag": "forge:grain"
	}],
	"result": {
		"item": "brewinandchewin:vodka"
	},
	"container": {
		"item": "brewinandchewin:tankard"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 0.6,
	"cookingtime": 12000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.removeByName("brewinandchewin:kombucha");
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/kombucha", {
	"ingredients": [
	{
		"item": "minecraft:beetroot"
	},
	{
		"item": "minecraft:carrot"
	},
	{
		"item": "simplytea:black_tea"
	},
	{
		"item": "minecraft:sweet_berries"
	}],
	"result": {
		"item": "brewinandchewin:kombucha"
	},
	"container": {
		"item": "brewinandchewin:tankard"
	},
	"liquid": {
		"item": "simplytea:cup_tea_green"
	},
	"experience": 0.6,
	"cookingtime": 12000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/aegis_wine", {
	"ingredients": [
	{
		"item": "vinery:jungle_grapes_white"
	},
	{
		"item": "vinery:jungle_grapes_white"
	},
	{
		"item": "minecraft:kelp"
	},
	{
		"item": "minecraft:sugar"
	}],
	"result": {
		"item": "vinery:aegis_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/apple_wine", {
	"ingredients": [
	{
		"item": "vinery:savanna_grapes_white"
	},
	{
		"item": "vinery:savanna_grapes_white"
	},
	{
		"item": "vinery:apple_mash"
	},
	{
		"item": "vinery:apple_mash"
	}],
	"result": {
		"item": "vinery:apple_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:honey_bottle"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/bolvar_wine", {
	"ingredients": [
	{
		"item": "vinery:taiga_grapes_red"
	},
	{
		"item": "vinery:taiga_grapes_red"
	},
	{
		"item": "vinery:cherry"
	},
	{
		"item": "vinery:cherry"
	}],
	"result": {
		"item": "vinery:bolvar_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:honey_bottle"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/chenet_wine", {
	"ingredients": [
	{
		"item": "vinery:taiga_grapes_red"
	},
	{
		"item": "vinery:taiga_grapes_red"
	},
	{
		"item": "vinery:taiga_grapes_red"
	},
	{
		"item": "minecraft:sugar"
	}],
	"result": {
		"item": "vinery:chenet_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:honey_bottle"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/cherry_wine", {
	"ingredients": [
	{
		"item": "vinery:red_grape"
	},
	{
		"item": "vinery:red_grape"
	},
	{
		"item": "vinery:cherry"
	},
	{
		"item": "vinery:cherry"
	}],
	"result": {
		"item": "vinery:cherry_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/chorus_wine", {
	"ingredients": [
	{
		"item": "vinery:white_grape"
	},
	{
		"item": "vinery:white_grape"
	},
	{
		"item": "minecraft:chorus_fruit"
	},
	{
		"item": "minecraft:chorus_fruit"
	}],
	"result": {
		"item": "vinery:chorus_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/clark_wine", {
	"ingredients": [
	{
		"item": "vinery:savanna_grapes_white"
	},
	{
		"item": "vinery:savanna_grapes_white"
	},
	{
		"item": "vinery:savanna_grapes_white"
	},
	{
		"item": "minecraft:sugar"
	}],
	"result": {
		"item": "vinery:clark_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/king_danis_wine", {
	"ingredients": [
	{
		"item": "vinery:jungle_grapes_red"
	},
	{
		"item": "vinery:jungle_grapes_red"
	},
	{
		"item": "vinery:jungle_grapes_red"
	},
	{
		"item": "vinery:cherry"
	}],
	"result": {
		"item": "vinery:king_danis_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/kelp_cider", {
	"ingredients": [
	{
		"item": "vinery:savanna_grapes_red"
	},
	{
		"item": "vinery:savanna_grapes_red"
	},
	{
		"item": "minecraft:kelp"
	},
	{
		"item": "minecraft:kelp"
	}],
	"result": {
		"item": "vinery:kelp_cider"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/jellie_wine", {
	"ingredients": [
	{
		"item": "vinery:apple_wine"
	},
	{
		"item": "vinery:chorus_wine"
	},
	{
		"item": "vinery:chenet_wine"
	},
	{
		"item": "vinery:bolvar_wine"
	}],
	"result": {
		"item": "vinery:jellie_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/magnetic_wine", {
	"ingredients": [
	{
		"item": "vinery:white_grape"
	},
	{
		"item": "vinery:white_grape"
	},
	{
		"tag": "forge:dusts/iron"
	},
	{
		"item": "minecraft:sugar"
	}],
	"result": {
		"item": "vinery:magnetic_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/mellohi_wine", {
	"ingredients": [
	{
		"item": "vinery:taiga_grapes_white"
	},
	{
		"item": "vinery:taiga_grapes_white"
	},
	{
		"item": "vinery:taiga_grapes_white"
	},
	{
		"item": "minecraft:sugar"
	}],
	"result": {
		"item": "vinery:mellohi_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/noir_wine", {
	"ingredients": [
	{
		"item": "vinery:red_grape"
	},
	{
		"item": "vinery:red_grape"
	},
	{
		"item": "vinery:red_grape"
	},
	{
		"item": "minecraft:sugar"
	}],
	"result": {
		"item": "vinery:noir_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:water_bucket"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/solaris_wine", {
	"ingredients": [
	{
		"item": "vinery:taiga_grapes_white"
	},
	{
		"item": "vinery:taiga_grapes_white"
	},
	{
		"item": "minecraft:sweet_berries"
	},
	{
		"item": "minecraft:sweet_berries"
	}],
	"result": {
		"item": "vinery:solaris_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:honey_bottle"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/stal_wine", {
	"ingredients": [
	{
		"item": "vinery:jungle_grapes_red"
	},
	{
		"item": "vinery:jungle_grapes_red"
	},
	{
		"item": "minecraft:cocoa_beans"
	},
	{
		"item": "minecraft:sugar"
	}],
	"result": {
		"item": "vinery:stal_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:honey_bottle"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});
<recipetype:brewinandchewin:fermenting>.addJsonRecipe("brewinandchewin_fermenting/vinery/strad_wine", {
	"ingredients": [
	{
		"item": "vinery:jungle_grapes_white"
	},
	{
		"item": "vinery:jungle_grapes_white"
	},
	{
		"item": "minecraft:cocoa_beans"
	},
	{
		"item": "minecraft:sugar"
	}],
	"result": {
		"item": "vinery:strad_wine"
	},
	"container": {
		"item": "vinery:wine_bottle"
	},
	"liquid": {
		"item": "minecraft:honey_bottle"
	},
	"experience": 10,
	"cookingtime": 24000,
	"temperature": 3
});

Globals.endScript("recipe_brewin_and_chewin");