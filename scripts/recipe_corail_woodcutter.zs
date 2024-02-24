/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Missing Item.
 * v0.2 : Fix Jungle Post Bug.
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

var addingEcologicsCoconutCorailWoodcutter = {
	"coconut_boat" : 1,
	"coconut_button" : 4,
	"coconut_door" : 4,
	"coconut_fence" : 4,
	"coconut_fence_gate" : 1,
	"coconut_pressure_plate" : 4,
	"coconut_sign" : 4,
	"coconut_slab" : 8,
	"coconut_stairs" : 4,
	"coconut_trapdoor" : 4
};
for addingEcologicsCoconutCorailWoodcutterOut, addingEcologicsCoconutCorailWoodcutterCount in addingEcologicsCoconutCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingEcologicsCoconutCorailWoodcutterOut + "_from_coconut_log", {
		"ingredient":{
			"tag": "ecologics:coconut_logs"
		},
		"result": "ecologics:" + addingEcologicsCoconutCorailWoodcutterOut,
		"count": addingEcologicsCoconutCorailWoodcutterCount
	});
}

var addingEcologicsWalnutCorailWoodcutter = {
	"walnut_boat" : 1,
	"walnut_button" : 4,
	"walnut_door" : 4,
	"walnut_fence" : 4,
	"walnut_fence_gate" : 1,
	"walnut_pressure_plate" : 4,
	"walnut_sign" : 4,
	"walnut_slab" : 8,
	"walnut_stairs" : 4,
	"walnut_trapdoor" : 4
};
for addingEcologicsWalnutCorailWoodcutterOut, addingEcologicsWalnutCorailWoodcutterCount in addingEcologicsWalnutCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingEcologicsWalnutCorailWoodcutterOut + "_from_walnut_log", {
		"ingredient":{
			"tag": "ecologics:walnut_logs"
		},
		"result": "ecologics:" + addingEcologicsWalnutCorailWoodcutterOut,
		"count": addingEcologicsWalnutCorailWoodcutterCount
	});
}

var addingEcologicsAzaleaCorailWoodcutter = {
	"azalea_boat" : 1,
	"azalea_button" : 4,
	"azalea_door" : 4,
	"azalea_fence" : 4,
	"azalea_fence_gate" : 1,
	"azalea_pressure_plate" : 4,
	"azalea_sign" : 4,
	"azalea_slab" : 8,
	"azalea_stairs" : 4,
	"azalea_trapdoor" : 4
};
for addingEcologicsAzaleaCorailWoodcutterOut, addingEcologicsAzaleaCorailWoodcutterCount in addingEcologicsAzaleaCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingEcologicsAzaleaCorailWoodcutterOut + "_from_azalea_log", {
		"ingredient":{
			"tag": "ecologics:azalea_logs"
		},
		"result": "ecologics:" + addingEcologicsAzaleaCorailWoodcutterOut,
		"count": addingEcologicsAzaleaCorailWoodcutterCount
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

var addingUndergardenGrongleCorailWoodcutter = {
	"grongle_boat" : 1,
	"grongle_button" : 4,
	"grongle_door" : 4,
	"grongle_fence" : 4,
	"grongle_fence_gate" : 1,
	"grongle_pressure_plate" : 4,
	"grongle_sign" : 4,
	"grongle_slab" : 8,
	"grongle_stairs" : 4,
	"grongle_trapdoor" : 4
};
for addingUndergardenGrongleCorailWoodcutterOut, addingUndergardenGrongleCorailWoodcutterCount in addingUndergardenGrongleCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingUndergardenGrongleCorailWoodcutterOut + "_from_grongle_log", {
		"ingredient":{
			"tag": "undergarden:grongle_logs"
		},
		"result": "undergarden:" + addingUndergardenGrongleCorailWoodcutterOut,
		"count": addingUndergardenGrongleCorailWoodcutterCount
	});
}

var addingUndergardenSmogstemCorailWoodcutter = {
	"smogstem_boat" : 1,
	"smogstem_button" : 4,
	"smogstem_door" : 4,
	"smogstem_fence" : 4,
	"smogstem_fence_gate" : 1,
	"smogstem_pressure_plate" : 4,
	"smogstem_sign" : 4,
	"smogstem_slab" : 8,
	"smogstem_stairs" : 4,
	"smogstem_trapdoor" : 4
};
for addingUndergardenSmogstemCorailWoodcutterOut, addingUndergardenSmogstemCorailWoodcutterCount in addingUndergardenSmogstemCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingUndergardenSmogstemCorailWoodcutterOut + "_from_smogstem_log", {
		"ingredient":{
			"tag": "undergarden:smogstem_logs"
		},
		"result": "undergarden:" + addingUndergardenSmogstemCorailWoodcutterOut,
		"count": addingUndergardenSmogstemCorailWoodcutterCount
	});
}

var addingUndergardenWigglewoodCorailWoodcutter = {
	"wigglewood_boat" : 1,
	"wigglewood_button" : 4,
	"wigglewood_door" : 4,
	"wigglewood_fence" : 4,
	"wigglewood_fence_gate" : 1,
	"wigglewood_pressure_plate" : 4,
	"wigglewood_sign" : 4,
	"wigglewood_slab" : 8,
	"wigglewood_stairs" : 4,
	"wigglewood_trapdoor" : 4
};
for addingUndergardenWigglewoodCorailWoodcutterOut, addingUndergardenWigglewoodCorailWoodcutterCount in addingUndergardenWigglewoodCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingUndergardenWigglewoodCorailWoodcutterOut + "_from_wigglewood_log", {
		"ingredient":{
			"tag": "undergarden:wigglewood_logs"
		},
		"result": "undergarden:" + addingUndergardenWigglewoodCorailWoodcutterOut,
		"count": addingUndergardenWigglewoodCorailWoodcutterCount
	});
}

var addingTconstructBloodshroomCorailWoodcutter = {
	"bloodshroom_button" : 4,
	"bloodshroom_door" : 4,
	"bloodshroom_fence" : 4,
	"bloodshroom_fence_gate" : 1,
	"bloodshroom_pressure_plate" : 4,
	"bloodshroom_sign" : 4,
	"bloodshroom_planks_slab" : 8,
	"bloodshroom_planks_stairs" : 4,
	"bloodshroom_trapdoor" : 4
};
for addingTconstructBloodshroomCorailWoodcutterOut, addingTconstructBloodshroomCorailWoodcutterCount in addingTconstructBloodshroomCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingTconstructBloodshroomCorailWoodcutterOut + "_from_bloodshroom_log", {
		"ingredient":{
			"tag": "tconstruct:bloodshroom_logs"
		},
		"result": "tconstruct:" + addingTconstructBloodshroomCorailWoodcutterOut,
		"count": addingTconstructBloodshroomCorailWoodcutterCount
	});
}

var addingTconstructGreenheartCorailWoodcutter = {
	"greenheart_button" : 4,
	"greenheart_door" : 4,
	"greenheart_fence" : 4,
	"greenheart_fence_gate" : 1,
	"greenheart_pressure_plate" : 4,
	"greenheart_sign" : 4,
	"greenheart_planks_slab" : 8,
	"greenheart_planks_stairs" : 4,
	"greenheart_trapdoor" : 4
};
for addingTconstructGreenheartCorailWoodcutterOut, addingTconstructGreenheartCorailWoodcutterCount in addingTconstructGreenheartCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingTconstructGreenheartCorailWoodcutterOut + "_from_greenheart_log", {
		"ingredient":{
			"tag": "tconstruct:greenheart_logs"
		},
		"result": "tconstruct:" + addingTconstructGreenheartCorailWoodcutterOut,
		"count": addingTconstructGreenheartCorailWoodcutterCount
	});
}

var addingTconstructSkyrootCorailWoodcutter = {
	"skyroot_button" : 4,
	"skyroot_door" : 4,
	"skyroot_fence" : 4,
	"skyroot_fence_gate" : 1,
	"skyroot_pressure_plate" : 4,
	"skyroot_sign" : 4,
	"skyroot_planks_slab" : 8,
	"skyroot_planks_stairs" : 4,
	"skyroot_trapdoor" : 4
};
for addingTconstructSkyrootCorailWoodcutterOut, addingTconstructSkyrootCorailWoodcutterCount in addingTconstructSkyrootCorailWoodcutter{
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingTconstructSkyrootCorailWoodcutterOut + "_from_skyroot_log", {
		"ingredient":{
			"tag": "tconstruct:skyroot_logs"
		},
		"result": "tconstruct:" + addingTconstructSkyrootCorailWoodcutterOut,
		"count": addingTconstructSkyrootCorailWoodcutterCount
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