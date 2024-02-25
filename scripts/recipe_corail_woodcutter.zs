/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Missing Item.
 * v0.2 : Fix Jungle Post Bug.
 * v0.3 : Adding Towerwood and Thorn.
 * v0.4 : Code Compatting.
 */

println("Start script recipe_corail_woodcutter.");
println("Script Priority Null.");

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

function addRecipeCorailWoodcutter(itemIn as IItemStack, itemOut as IItemStack, count as int) as void {
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + itemOut.registryName.path + "_from_" + itemIn.registryName.path, {
		"ingredient":{
			"item": itemIn.registryName
		},
		"result": itemOut.registryName,
		"count": count
	});
}
// Bamboo Everything
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_door>, 1);
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_fence>, 1);
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_fence_gate>, 1);
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_slab>, 2);
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_stairs>, 1);
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_trapdoor>, 1);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_door>, 1);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_fence>, 1);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_fence_gate>, 1);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_slab>, 2);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_stairs>, 1);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_trapdoor>, 1);
// Botania
addRecipeCorailWoodcutter(<item:botania:dreamwood_planks>, <item:botania:framed_dreamwood>, 1);
addRecipeCorailWoodcutter(<item:botania:dreamwood_planks>, <item:botania:dreamwood_planks_slab>, 2);
addRecipeCorailWoodcutter(<item:botania:dreamwood_planks>, <item:botania:dreamwood_planks_stairs>, 1);
addRecipeCorailWoodcutter(<item:botania:dreamwood_planks>, <item:botania:pattern_framed_dreamwood>, 1);
addRecipeCorailWoodcutter(<item:botania:livingwood_planks>, <item:botania:framed_livingwood>, 1);
addRecipeCorailWoodcutter(<item:botania:livingwood_planks>, <item:botania:livingwood_planks_slab>, 2);
addRecipeCorailWoodcutter(<item:botania:livingwood_planks>, <item:botania:livingwood_planks_stairs>, 1);
addRecipeCorailWoodcutter(<item:botania:livingwood_planks>, <item:botania:pattern_framed_livingwood>, 1);
addRecipeCorailWoodcutter(<item:botania:shimmerwood_planks>, <item:botania:shimmerwood_planks_slab>, 2);
addRecipeCorailWoodcutter(<item:botania:shimmerwood_planks>, <item:botania:shimmerwood_planks_stairs>, 1);
// Enlightend
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_button>, 1);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_door>, 1);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_fence>, 1);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_slab>, 2);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_stairs>, 1);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_trapdoor>, 1);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_button>, 1);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_door>, 1);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_fence>, 1);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_slab>, 2);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_stairs>, 1);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_trapdoor>, 1);
// Ecologics
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_button>, 1);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_door>, 1);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_fence>, 1);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_sign>, 1);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_slab>, 2);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_stairs>, 1);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_trapdoor>, 1);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_door>, 1);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_fence>, 1);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_sign>, 1);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_slab>, 2);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_stairs>, 1);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_trapdoor>, 1);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_button>, 1);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_door>, 1);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_fence>, 1);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_sign>, 1);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_slab>, 2);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_stairs>, 1);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_trapdoor>, 1);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_button>, 1);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_door>, 1);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_fence>, 1);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_sign>, 1);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_slab>, 2);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_stairs>, 1);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_trapdoor>, 1);
// Integrated Dynamics
addRecipeCorailWoodcutter(<item:integrateddynamics:menril_planks>, <item:integrateddynamics:menril_door>, 1);
addRecipeCorailWoodcutter(<item:integrateddynamics:menril_planks>, <item:integrateddynamics:menril_fence>, 1);
addRecipeCorailWoodcutter(<item:integrateddynamics:menril_planks>, <item:integrateddynamics:menril_slab>, 2);
addRecipeCorailWoodcutter(<item:integrateddynamics:menril_planks>, <item:integrateddynamics:menril_planks_stairs>, 1);
// Myrtrees
addRecipeCorailWoodcutter(<item:myrtrees:rubberwood_log>, <item:myrtrees:rubberwood_planks>, 4);
// Nature's Aura
addRecipeCorailWoodcutter(<item:naturesaura:ancient_planks>, <item:naturesaura:ancient_slab>, 2);
addRecipeCorailWoodcutter(<item:naturesaura:ancient_planks>, <item:naturesaura:ancient_stairs>, 1);
addRecipeCorailWoodcutter(<item:naturesaura:ancient_slab>, <item:naturesaura:ancient_stick>, 2);
// Tinkers Construct
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_button>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_door>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_fence>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_sign>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_planks_slab>, 2);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_planks_stairs>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_trapdoor>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_button>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_door>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_fence>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_sign>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_planks_slab>, 2);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_planks_stairs>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_trapdoor>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_button>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_door>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_fence>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_sign>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_planks_slab>, 2);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_planks_stairs>, 1);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_trapdoor>, 1);
// Twilight Decor
addRecipeCorailWoodcutter(<item:twilightforest:twilight_oak_planks>, <item:twilightdecor:vertical_twilight_oak_planks>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:canopy_planks>, <item:twilightdecor:vertical_canopy_planks>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:mangrove_planks>, <item:twilightdecor:vertical_mangrove_planks>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:dark_planks>, <item:twilightdecor:vertical_darkwood_planks>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:time_planks>, <item:twilightdecor:vertical_timewood_planks>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:transformation_planks>, <item:twilightdecor:vertical_transformation_planks>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:mining_planks>, <item:twilightdecor:vertical_mining_planks>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:sorting_planks>, <item:twilightdecor:vertical_sorting_planks>, 1);
// Twilight Forest: The Lost Blocks
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_banister>, 1);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_button>, 1);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_door>, 1);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_fence>, 1);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_fence_gate>, 1);
addRecipeCorailWoodcutter(<item:tflostblocks:stripped_thorn_block>, <item:tflostblocks:thorn_planks>, 2);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_sign>, 1);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_stairs>, 1);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_slab>, 2);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_trapdoor>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:mossy_towerwood>, <item:tflostblocks:mossy_towerwood_stairs>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:mossy_towerwood>, <item:tflostblocks:mossy_towerwood_slab>, 2);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_banister>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_button>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_door>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_fence>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_fence_gate>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_sign>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_stairs>, 1);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_slab>, 2);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_trapdoor>, 1);
// Undergarden
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_button>, 1);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_door>, 1);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_fence>, 1);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_sign>, 1);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_slab>, 2);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_stairs>, 1);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_trapdoor>, 1);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_button>, 1);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_door>, 1);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_fence>, 1);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_sign>, 1);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_slab>, 2);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_stairs>, 1);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_trapdoor>, 1);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_button>, 1);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_door>, 1);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_fence>, 1);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_sign>, 1);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_slab>, 2);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_stairs>, 1);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_trapdoor>, 1);
// Unusual End
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_mosaic>, <item:unusualend:chorus_nest_fence_gate>, 1);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_mosaic>, <item:unusualend:chorus_nest_mosaic_fence>, 1);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_mosaic>, <item:unusualend:chorus_nest_mosaic_slab>, 2);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_mosaic>, <item:unusualend:chorus_nest_mosaic_stairs>, 1);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:chorus_nest_planks_door>, 1);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:chorus_nest_mosaic>, 1);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:chorus_nest_slab>, 2);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:chorus_nest_stairs>, 1);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:chorus_nest_trapdoor>, 1);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:stripped_chorus_nest_planks>, 1);
addRecipeCorailWoodcutter(<item:unusualend:stripped_chorus_nest_planks>, <item:unusualend:stripped_chorus_nest_stairs>, 1);
addRecipeCorailWoodcutter(<item:unusualend:stripped_chorus_nest_planks>, <item:unusualend:stripped_chorus_nest_slab>, 2);
// Vinery
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_button>, 1);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_door>, 1);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_fence>, 1);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_floorboard>, 1);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_pressure_plate>, 1);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_slab>, 2);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_stairs>, 1);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_trapdoor>, 1);

<recipetype:corail_woodcutter:woodcutting>.removeByName("corail_woodcutter:woodcutting/quark/jungle_post_from_jungle_planks");
<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_woodcutting/quark/jungle_post_from_jungle_planks", {
	"ingredient":{
		"tag": "forge:planks/jungle"
	},
	"result": "quark:jungle_post",
	"count": 1
});
<recipetype:corail_woodcutter:woodcutting>.removeByName("corail_woodcutter:woodcutting/quark/jungle_post_from_jungle_logs");
<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_woodcutting/quark/jungle_post_from_jungle_logs", {
	"ingredient":{
		"tag": "minecraft:jungle_logs"
	},
	"result": "quark:jungle_post",
	"count": 4
});

var addingBotaniaDreamwoodCorailWoodcutter = {
	"framed_dreamwood" : 4,
	"dreamwood_planks" : 4,
	"dreamwood_planks_slab" : 8,
	"dreamwood_planks_stairs" : 4,
	"pattern_framed_dreamwood" : 4
};
for addingBotaniaDreamwoodCorailWoodcutterOut, addingBotaniaDreamwoodCorailWoodcutterCount in addingBotaniaDreamwoodCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingBotaniaDreamwoodCorailWoodcutterOut + "_from_dreamwood_log", {
		"ingredient":{
			"tag": "botania:dreamwood_logs"
		},
		"result": "botania:" + addingBotaniaDreamwoodCorailWoodcutterOut,
		"count": addingBotaniaDreamwoodCorailWoodcutterCount
	});
}

var addingBotaniaLivingwoodCorailWoodcutter = {
	"framed_livingwood" : 4,
	"livingwood_planks" : 4,
	"livingwood_planks_slab" : 8,
	"livingwood_planks_stairs" : 4,
	"pattern_framed_livingwood" : 4
};
for addingBotaniaLivingwoodCorailWoodcutterOut, addingBotaniaLivingwoodCorailWoodcutterCount in addingBotaniaLivingwoodCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingBotaniaLivingwoodCorailWoodcutterOut + "_from_liwingwood_log", {
		"ingredient":{
			"tag": "botania:livingwood_logs"
		},
		"result": "botania:" + addingBotaniaLivingwoodCorailWoodcutterOut,
		"count": addingBotaniaLivingwoodCorailWoodcutterCount
	});
}

var addingEcologicsFloweringAzaleaCorailWoodcutter = {
	"flowering_azalea_boat" : 1,
	"flowering_azalea_door" : 4,
	"flowering_azalea_fence" : 4,
	"flowering_azalea_fence_gate" : 1,
	"flowering_azalea_sign" : 4,
	"flowering_azalea_slab" : 8,
	"flowering_azalea_stairs" : 4,
	"flowering_azalea_trapdoor" : 4
};
for addingEcologicsFloweringAzaleaCorailWoodcutterOut, addingEcologicsFloweringAzaleaCorailWoodcutterCount in addingEcologicsFloweringAzaleaCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingEcologicsFloweringAzaleaCorailWoodcutterOut + "_from_flowering_azalea_log", {
		"ingredient":{
			"tag": "ecologics:flowering_azalea_logs"
		},
		"result": "ecologics:" + addingEcologicsFloweringAzaleaCorailWoodcutterOut,
		"count": addingEcologicsFloweringAzaleaCorailWoodcutterCount
	});
}

var addingEnlightenedIndigoCorailWoodcutter = {
	"indigo_button" : 4,
	"indigo_door" : 4,
	"indigo_fence" : 4,
	"indigo_fence_gate" : 1,
	"indigo_pressure_plate" : 4,
	"indigo_slab" : 8,
	"indigo_stairs" : 4,
	"indigo_trapdoor" : 4
};
for addingEnlightenedIndigoCorailWoodcutterOut, addingEnlightenedIndigoCorailWoodcutterCount in addingEnlightenedIndigoCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingEnlightenedIndigoCorailWoodcutterOut + "_from_indigo_log", {
		"ingredient":{
			"tag": "enlightened_end:indigo_stems"
		},
		"result": "enlightened_end:" + addingEnlightenedIndigoCorailWoodcutterOut,
		"count": addingEnlightenedIndigoCorailWoodcutterCount
	});
}

var addingEnlightenedCeruleanCorailWoodcutter = {
	"cerulean_button" : 4,
	"cerulean_door" : 4,
	"cerulean_fence" : 4,
	"cerulean_fence_gate" : 1,
	"cerulean_pressure_plate" : 4,
	"cerulean_slab" : 8,
	"cerulean_stairs" : 4,
	"cerulean_trapdoor" : 4
};
for addingEnlightenedCeruleanCorailWoodcutterOut, addingEnlightenedCeruleanCorailWoodcutterCount in addingEnlightenedCeruleanCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingEnlightenedCeruleanCorailWoodcutterOut + "_from_cerulean_log", {
		"ingredient":{
			"tag": "enlightened_end:cerulean_logs"
		},
		"result": "enlightened_end:" + addingEnlightenedCeruleanCorailWoodcutterOut,
		"count": addingEnlightenedCeruleanCorailWoodcutterCount
	});
}

var addingIntegratedDynamicsMenrilCorailWoodcutter = {
	"menril_door" : 4,
	"menril_fence" : 4,
	"menril_fence_gate" : 1,
	"menril_slab" : 8,
	"menril_planks_stairs" : 4
};
for addingIntegratedDynamicsMenrilCorailWoodcutterOut, addingIntegratedDynamicsMenrilCorailWoodcutterCount in addingIntegratedDynamicsMenrilCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingIntegratedDynamicsMenrilCorailWoodcutterOut + "_from_menril_log", {
		"ingredient":{
			"tag": "integrateddynamics:menril_logs"
		},
		"result": "integrateddynamics:" + addingIntegratedDynamicsMenrilCorailWoodcutterOut,
		"count": addingIntegratedDynamicsMenrilCorailWoodcutterCount
	});
}

var addingNaturesAuraAncientCorailWoodcutter = {
	"ancient_slab" : 4,
	"ancient_stairs" : 2,
	"ancient_stick" : 4,
	"ancient_planks" : 2
};
for addingNaturesAuraAncientCorailWoodcutterOut, addingNaturesAuraAncientCorailWoodcutterCount in addingNaturesAuraAncientCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingNaturesAuraAncientCorailWoodcutterOut + "_from_ancient_log", {
		"ingredient":{
			"tag": "naturesaura:ancient_logs"
		},
		"result": "naturesaura:" + addingNaturesAuraAncientCorailWoodcutterOut,
		"count": addingNaturesAuraAncientCorailWoodcutterCount
	});
}

var addingVineryCherryCorailWoodcutter = {
	"cherry_button" : 4,
	"cherry_door" : 4,
	"cherry_fence" : 4,
	"cherry_fence_gate" : 1,
	"cherry_pressure_plate" : 4,
	"cherry_slab" : 8,
	"cherry_stairs" : 4,
	"cherry_trapdoor" : 4
};
for addingVineryCherryCorailWoodcutterOut, addingVineryCherryCorailWoodcutterCount in addingVineryCherryCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingVineryCherryCorailWoodcutterOut + "_from_cherry_log", {
		"ingredient":{
			"tag": "vinery:cherry_logs"
		},
		"result": "vinery:" + addingVineryCherryCorailWoodcutterOut,
		"count": addingVineryCherryCorailWoodcutterCount
	});
}

var addingBoatLogCorailWoodcutter = {
	"azalea" : "ecologics",
	"coconut" : "ecologics",
	"grongle" : "undergarden",
	"smogstem" : "undergarden",
	"walnut" : "ecologics",
	"wigglewood" : "undergarden"
};
for addingBoatLogCorailWoodcutterName, addingBoatLogCorailWoodcutterModId in addingBoatLogCorailWoodcutter {
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingBoatLogCorailWoodcutterName + "_boat_from_" + addingBoatLogCorailWoodcutterName + "_log", {
		"ingredient":{
			"tag": addingBoatLogCorailWoodcutterModId + ":" + addingBoatLogCorailWoodcutterName + "_logs"
		},
		"result": addingBoatLogCorailWoodcutterModId + ":" + addingBoatLogCorailWoodcutterName + "_boat",
		"count": 1
	});
}

var addingComponentLogCorailWoodcutter = {
	"azalea" : "ecologics",
	"bloodshroom" : "tconstruct",
	"coconut" : "ecologics",
	"greenheart" : "tconstruct",
	"grongle" : "undergarden",
	"smogstem" : "undergarden",
	"skyroot" : "tconstruct",
	"walnut" : "ecologics",
	"wigglewood" : "undergarden"
};
for addingComponentLogCorailWoodcutterName, addingComponentLogCorailWoodcutterModId in addingComponentLogCorailWoodcutter {
	var addingComponentCorailWoodcutter = {
		"button" : 4,
		"door" : 4,
		"fence" : 4,
		"fence_gate" : 1,
		"pressure_plate" : 4,
		"sign" : 4,
		"planks_slab" : 8,
		"planks_stairs" : 4,
		"trapdoor" : 4
	};
	for addingComponentCorailWoodcutterOut, addingComponentCorailWoodcutterCount in addingComponentCorailWoodcutter {
		<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut + "_from_" + addingComponentLogCorailWoodcutterName + "_log", {
			"ingredient":{
				"tag": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_logs"
			},
			"result": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut,
			"count": addingComponentCorailWoodcutterCount
		});
	}
}

var addingPathMacawCorailWoodcutter = {
	"oak" : "logs",
	"spruce" : "logs",
	"birch" : "logs",
	"jungle" : "logs",
	"acacia" : "logs",
	"dark_oak" : "logs",
	"crimson" : "stems",
	"warped" : "stems"
};
for addingPathMacawCorailWoodcutterId, addingPathMacawCorailWoodcutterType in addingPathMacawCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingPathMacawCorailWoodcutterId + "_path_from_" + addingPathMacawCorailWoodcutterId + "_planks", {
		"ingredient":{
			"item": "minecraft:" + addingPathMacawCorailWoodcutterId + "_planks"
		},
		"result": "mcwpaths:" + addingPathMacawCorailWoodcutterId + "_planks_path",
		"count": 6
	});
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingPathMacawCorailWoodcutterId + "_path_from_" + addingPathMacawCorailWoodcutterId + "_" + addingPathMacawCorailWoodcutterType, {
		"ingredient":{
			"tag": "minecraft:" + addingPathMacawCorailWoodcutterId + "_" + addingPathMacawCorailWoodcutterType
		},
		"result": "mcwpaths:" + addingPathMacawCorailWoodcutterId + "_planks_path",
		"count": 24
	});	
}

var addingRoofPartMacawCorailWoodcutter = [
	"attic_roof",
	"lower_roof",
	"steep_roof",
	"roof",
	"top_roof",
	"upper_lower_roof",
	"upper_steep_roof"
];
for addingRoofPartMacawCorailWoodcutterName in addingRoofPartMacawCorailWoodcutter{
	var addingRoofMacawCorailWoodcutter = {
		"oak" : "logs",
		"spruce" : "logs",
		"birch" : "logs",
		"jungle" : "logs",
		"acacia" : "logs",
		"dark_oak" : "logs",
		"crimson" : "stems",
		"warped" : "stems"
	};
	for addingRoofMacawCorailWoodcutterId, addingRoofMacawCorailWoodcutterType in addingRoofMacawCorailWoodcutter{
		<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingRoofPartMacawCorailWoodcutterName + "_" + addingRoofMacawCorailWoodcutterId + "_from_" + addingRoofMacawCorailWoodcutterId + "_planks", {
			"ingredient":{
				"item": "minecraft:" + addingRoofMacawCorailWoodcutterId + "_planks"
			},
			"result": "mcwroofs:" + addingRoofMacawCorailWoodcutterId + "_planks_" + addingRoofPartMacawCorailWoodcutterName,
			"count": 1
		});
		<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingRoofPartMacawCorailWoodcutterName + "_" + addingRoofMacawCorailWoodcutterId + "_from_" + addingRoofMacawCorailWoodcutterId + "_" + addingRoofMacawCorailWoodcutterType, {
			"ingredient":{
				"tag": "minecraft:" + addingRoofMacawCorailWoodcutterId + "_" + addingRoofMacawCorailWoodcutterType
			},
			"result": "mcwroofs:" + addingRoofMacawCorailWoodcutterId + "_" + addingRoofPartMacawCorailWoodcutterName,
			"count": 1
		});	
	}
}

var addingFencesPartMacawCorailWoodcutter = [
	"highley_gate",
	"horse_fence",
	"picket_fence",
	"pyramid_gate",
	"stockade_fence"
];
for addingFencesPartMacawCorailWoodcutterName in addingFencesPartMacawCorailWoodcutter{
	var addingFencesMacawCorailWoodcutter = {
		"oak" : "logs",
		"spruce" : "logs",
		"birch" : "logs",
		"jungle" : "logs",
		"acacia" : "logs",
		"dark_oak" : "logs",
		"crimson" : "stems",
		"warped" : "stems"
	};
	for addingFencesMacawCorailWoodcutterId, addingFencesMacawCorailWoodcutterType in addingFencesMacawCorailWoodcutter{
		<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingFencesPartMacawCorailWoodcutterName + "_" + addingFencesMacawCorailWoodcutterId + "_from_" + addingFencesMacawCorailWoodcutterId + "_" + addingFencesMacawCorailWoodcutterType, {
			"ingredient":{
				"tag": "minecraft:" + addingFencesMacawCorailWoodcutterId + "_" + addingFencesMacawCorailWoodcutterType
			},
			"result": "mcwfences:" + addingFencesMacawCorailWoodcutterId + "_" + addingFencesPartMacawCorailWoodcutterName,
			"count": 1
		});	
	}
}

println("End script recipe_corail_woodcutter.");