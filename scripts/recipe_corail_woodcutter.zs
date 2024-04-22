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
 * v0.5 : Update Code and Adding missing Recipe Botania and Immersive Engineering.
 */

Globals.startScript("recipe_corail_woodcutter");
Globals.priorityScript("Null");

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
var craftingExpertLogCorailWoodcutter = {
	"oak" : <tag:items:minecraft:oak_logs>,
	"spruce" : <tag:items:minecraft:spruce_logs>,
	"birch" : <tag:items:minecraft:birch_logs>,
	"jungle" : <tag:items:minecraft:jungle_logs>,
	"acacia" : <tag:items:minecraft:acacia_logs>,
	"dark_oak" : <tag:items:minecraft:dark_oak_logs>,
	"crimson" : <tag:items:minecraft:crimson_stems>,
	"warped" : <tag:items:minecraft:warped_stems>,
	"canopy" : <tag:items:twilightforest:canopy_logs>,
	"dark" : <tag:items:twilightforest:darkwood_logs>,
	"mangrove" : <tag:items:twilightforest:mangrove_logs>,
	"mining" : <tag:items:twilightforest:mining_logs>,
	"sorting" : <tag:items:twilightforest:sortwood_logs>,
	"time" : <tag:items:twilightforest:timewood_logs>,
	"transformation" : <tag:items:twilightforest:transwood_logs>,
	"twilight_oak" : <tag:items:twilightforest:twilight_oak_logs>
};
for craftingExpertLogCorailWoodcutterName, craftingExpertLogCorailWoodcutterModId in craftingExpertLogCorailWoodcutter{
	craftingTable.removeByName("corail_woodcutter:" + craftingExpertLogCorailWoodcutterName + "_woodcutter");
	craftingTable.addShaped("pack_expert_crafting_woodcutter/" + craftingExpertLogCorailWoodcutterName + "_woodcutter", <item:corail_woodcutter:${craftingExpertLogCorailWoodcutterName}_woodcutter>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:thermal:saw_blade>, <item:minecraft:air>],
		[craftingExpertLogCorailWoodcutterModId, craftingExpertLogCorailWoodcutterModId, craftingExpertLogCorailWoodcutterModId]
	]);
}

// Woodcutting
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

val woodcutting_log_boat_return = 1;
val woodcutting_log_button_return = 4;
val woodcutting_log_door_return = 4;
val woodcutting_log_fence_return = 4;
val woodcutting_log_fence_gate_return = 1;
val woodcutting_log_planks_return = 4;
val woodcutting_log_pressure_plate_return = 4;
val woodcutting_log_sign_return = 4;
val woodcutting_log_slab_return = 8;
val woodcutting_log_stairs_return = 4;
val woodcutting_log_stick_return = 8;
val woodcutting_log_trapdoor_return = 4;
val woodcutting_mcwbridges = 1;
val woodcutting_mcwfences = 1;
val woodcutting_mcwpaths_log = 24;
val woodcutting_mcwpaths_planks = 6;
val woodcutting_mcwroofs_log = 1;
val woodcutting_mcwroofs_planks = 1;
val woodcutting_planks_banister_return = 1;
val woodcutting_planks_button_return = 1;
val woodcutting_planks_door_return = 1;
val woodcutting_planks_fence_return = 1;
val woodcutting_planks_fence_gate_return = 1;
val woodcutting_planks_other_planks_return = 1;
val woodcutting_planks_pressure_plate_return = 1;
val woodcutting_planks_scaffold_return = 1;
val woodcutting_planks_sign_return = 1;
val woodcutting_planks_slab_return = 2;
val woodcutting_planks_stairs_return = 1;
val woodcutting_planks_stick_return = 2;
val woodcutting_planks_trapdoor_return = 1;
val woodcutting_planks_wall_return = 1;

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
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_fence_gate>, woodcutting_planks_fence_gate_return);
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:bambooeverything:bamboo_bundle>, <item:bambooeverything:bamboo_trapdoor>, woodcutting_planks_trapdoor_return);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_fence_gate>, woodcutting_planks_fence_gate_return);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:bambooeverything:dry_bamboo_bundle>, <item:bambooeverything:dry_bamboo_trapdoor>, woodcutting_planks_trapdoor_return);
// Botania
addRecipeCorailWoodcutter(<item:botania:dreamwood>, <item:botania:dreamwood_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:botania:dreamwood>, <item:botania:dreamwood_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:botania:dreamwood>, <item:botania:dreamwood_wall>, woodcutting_planks_wall_return);
addRecipeCorailWoodcutter(<item:botania:dreamwood_planks>, <item:botania:dreamwood_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:botania:dreamwood_planks>, <item:botania:dreamwood_fence_gate>, woodcutting_planks_fence_gate_return);
addRecipeCorailWoodcutter(<item:botania:dreamwood_planks>, <item:botania:framed_dreamwood>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:botania:dreamwood_planks>, <item:botania:dreamwood_planks_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:botania:dreamwood_planks>, <item:botania:dreamwood_planks_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:botania:dreamwood_planks>, <item:botania:pattern_framed_dreamwood>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:botania:livingwood>, <item:botania:livingwood_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:botania:livingwood>, <item:botania:livingwood_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:botania:livingwood>, <item:botania:livingwood_wall>, woodcutting_planks_wall_return);
addRecipeCorailWoodcutter(<item:botania:livingwood_planks>, <item:botania:livingwood_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:botania:livingwood_planks>, <item:botania:livingwood_fence_gate>, woodcutting_planks_fence_gate_return);
addRecipeCorailWoodcutter(<item:botania:livingwood_planks>, <item:botania:framed_livingwood>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:botania:livingwood_planks>, <item:botania:livingwood_planks_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:botania:livingwood_planks>, <item:botania:livingwood_planks_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:botania:livingwood_planks>, <item:botania:pattern_framed_livingwood>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:botania:shimmerwood_planks>, <item:botania:shimmerwood_planks_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:botania:shimmerwood_planks>, <item:botania:shimmerwood_planks_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:botania:stripped_dreamwood>, <item:botania:stripped_dreamwood_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:botania:stripped_dreamwood>, <item:botania:stripped_dreamwood_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:botania:stripped_dreamwood>, <item:botania:stripped_dreamwood_wall>, woodcutting_planks_wall_return);
addRecipeCorailWoodcutter(<item:botania:stripped_livingwood>, <item:botania:stripped_livingwood_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:botania:stripped_livingwood>, <item:botania:stripped_livingwood_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:botania:stripped_livingwood>, <item:botania:stripped_livingwood_wall>, woodcutting_planks_wall_return);
// Enlightend
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:enlightened_end:cerulean_planks>, <item:enlightened_end:cerulean_trapdoor>, woodcutting_planks_trapdoor_return);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:enlightened_end:indigo_planks>, <item:enlightened_end:indigo_trapdoor>, woodcutting_planks_trapdoor_return);
// Ecologics
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:ecologics:azalea_planks>, <item:ecologics:azalea_trapdoor>, woodcutting_planks_trapdoor_return);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:ecologics:flowering_azalea_planks>, <item:ecologics:flowering_azalea_trapdoor>, woodcutting_planks_trapdoor_return);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:ecologics:coconut_planks>, <item:ecologics:coconut_trapdoor>, woodcutting_planks_trapdoor_return);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:ecologics:walnut_planks>, <item:ecologics:walnut_trapdoor>, woodcutting_planks_trapdoor_return);
// Immersive Engineering
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:treated_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:treated_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_scaffold>, woodcutting_planks_scaffold_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:treated_scaffold>, woodcutting_planks_scaffold_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:treated_scaffold>, woodcutting_planks_scaffold_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:slab_treated_wood_horizontal>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:slab_treated_wood_packaged>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:slab_treated_wood_vertical>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:stairs_treated_wood_horizontal>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:stairs_treated_wood_packaged>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:stairs_treated_wood_vertical>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:stick_treated>, woodcutting_planks_stick_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:stick_treated>, woodcutting_planks_stick_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:stick_treated>, woodcutting_planks_stick_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_packaged>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_vertical>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:treated_wood_horizontal>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:treated_wood_vertical>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:treated_wood_horizontal>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:treated_wood_packaged>, woodcutting_planks_other_planks_return);
// Integrated Dynamics
addRecipeCorailWoodcutter(<item:integrateddynamics:menril_planks>, <item:integrateddynamics:menril_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:integrateddynamics:menril_planks>, <item:integrateddynamics:menril_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:integrateddynamics:menril_planks>, <item:integrateddynamics:menril_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:integrateddynamics:menril_planks>, <item:integrateddynamics:menril_planks_stairs>, woodcutting_planks_stairs_return);
// Myrtrees
addRecipeCorailWoodcutter(<item:myrtrees:rubberwood_log>, <item:myrtrees:rubberwood_planks>, woodcutting_log_planks_return);
// Nature's Aura
addRecipeCorailWoodcutter(<item:naturesaura:ancient_planks>, <item:naturesaura:ancient_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:naturesaura:ancient_planks>, <item:naturesaura:ancient_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:naturesaura:ancient_slab>, <item:naturesaura:ancient_stick>, woodcutting_planks_stick_return);
// Tinkers Construct
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_planks_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_planks_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:tconstruct:bloodshroom_planks>, <item:tconstruct:bloodshroom_trapdoor>, woodcutting_planks_trapdoor_return);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_planks_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_planks_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:tconstruct:greenheart_planks>, <item:tconstruct:greenheart_trapdoor>, woodcutting_planks_trapdoor_return);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_planks_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_planks_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:tconstruct:skyroot_planks>, <item:tconstruct:skyroot_trapdoor>, woodcutting_planks_trapdoor_return);
// Twilight Decor
addRecipeCorailWoodcutter(<item:twilightforest:twilight_oak_planks>, <item:twilightdecor:vertical_twilight_oak_planks>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:twilightforest:canopy_planks>, <item:twilightdecor:vertical_canopy_planks>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:twilightforest:mangrove_planks>, <item:twilightdecor:vertical_mangrove_planks>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:twilightforest:dark_planks>, <item:twilightdecor:vertical_darkwood_planks>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:twilightforest:time_planks>, <item:twilightdecor:vertical_timewood_planks>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:twilightforest:transformation_planks>, <item:twilightdecor:vertical_transformation_planks>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:twilightforest:mining_planks>, <item:twilightdecor:vertical_mining_planks>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:twilightforest:sorting_planks>, <item:twilightdecor:vertical_sorting_planks>, woodcutting_planks_other_planks_return);
// Twilight Forest: The Lost Blocks
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_banister>, woodcutting_planks_banister_return);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_fence_gate>, woodcutting_planks_fence_gate_return);
addRecipeCorailWoodcutter(<item:tflostblocks:stripped_thorn_block>, <item:tflostblocks:thorn_planks>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:tflostblocks:thorn_planks>, <item:tflostblocks:thorn_trapdoor>, woodcutting_planks_trapdoor_return);
addRecipeCorailWoodcutter(<item:twilightforest:mossy_towerwood>, <item:tflostblocks:mossy_towerwood_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:twilightforest:mossy_towerwood>, <item:tflostblocks:mossy_towerwood_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_banister>, woodcutting_planks_banister_return);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_fence_gate>, woodcutting_planks_fence_gate_return);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:twilightforest:towerwood>, <item:tflostblocks:towerwood_trapdoor>, woodcutting_planks_trapdoor_return);
// Undergarden
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:undergarden:grongle_planks>, <item:undergarden:grongle_trapdoor>, woodcutting_planks_trapdoor_return);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:undergarden:smogstem_planks>, <item:undergarden:smogstem_trapdoor>, woodcutting_planks_trapdoor_return);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_sign>, woodcutting_planks_sign_return);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:undergarden:wigglewood_planks>, <item:undergarden:wigglewood_trapdoor>, woodcutting_planks_trapdoor_return);
// Unusual End
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_mosaic>, <item:unusualend:chorus_nest_fence_gate>, woodcutting_planks_fence_gate_return);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_mosaic>, <item:unusualend:chorus_nest_mosaic_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_mosaic>, <item:unusualend:chorus_nest_mosaic_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_mosaic>, <item:unusualend:chorus_nest_mosaic_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:chorus_nest_planks_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:chorus_nest_mosaic>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:chorus_nest_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:chorus_nest_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:chorus_nest_trapdoor>, woodcutting_planks_trapdoor_return);
addRecipeCorailWoodcutter(<item:unusualend:chorus_nest_planks>, <item:unusualend:stripped_chorus_nest_planks>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:unusualend:stripped_chorus_nest_planks>, <item:unusualend:stripped_chorus_nest_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:unusualend:stripped_chorus_nest_planks>, <item:unusualend:stripped_chorus_nest_slab>, woodcutting_planks_slab_return);
// Vinery
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_button>, woodcutting_planks_button_return);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_door>, woodcutting_planks_door_return);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_fence>, woodcutting_planks_fence_return);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_floorboard>, woodcutting_planks_other_planks_return);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_pressure_plate>, woodcutting_planks_pressure_plate_return);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_slab>, woodcutting_planks_slab_return);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_stairs>, woodcutting_planks_stairs_return);
addRecipeCorailWoodcutter(<item:vinery:cherry_planks>, <item:vinery:cherry_trapdoor>, woodcutting_planks_trapdoor_return);

var addingBotaniaDreamwoodCorailWoodcutter = {
	"framed_dreamwood" : woodcutting_log_planks_return,
	"dreamwood_planks" : woodcutting_log_planks_return,
	"dreamwood_planks_slab" : woodcutting_log_slab_return,
	"dreamwood_planks_stairs" : woodcutting_log_stairs_return,
	"dreamwood_fence" : woodcutting_log_fence_return,
	"dreamwood_fence_gate" : woodcutting_log_fence_gate_return,
	"pattern_framed_dreamwood" : woodcutting_log_planks_return
};
for addingBotaniaDreamwoodCorailWoodcutterOut, addingBotaniaDreamwoodCorailWoodcutterCount in addingBotaniaDreamwoodCorailWoodcutter {
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingBotaniaDreamwoodCorailWoodcutterOut + "_from_dreamwood_log", {
		"ingredient": {
			"tag": "botania:dreamwood_logs"
		},
		"result": "botania:" + addingBotaniaDreamwoodCorailWoodcutterOut,
		"count": addingBotaniaDreamwoodCorailWoodcutterCount
	});
}

var addingBotaniaLivingwoodCorailWoodcutter = {
	"framed_livingwood" : woodcutting_log_planks_return,
	"livingwood_planks" : woodcutting_log_planks_return,
	"livingwood_planks_slab" : woodcutting_log_slab_return,
	"livingwood_planks_stairs" : woodcutting_log_stairs_return,
	"livingwood_fence" : woodcutting_log_fence_return,
	"livingwood_fence_gate" : woodcutting_log_fence_gate_return,
	"pattern_framed_livingwood" : woodcutting_log_planks_return
};
for addingBotaniaLivingwoodCorailWoodcutterOut, addingBotaniaLivingwoodCorailWoodcutterCount in addingBotaniaLivingwoodCorailWoodcutter {
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingBotaniaLivingwoodCorailWoodcutterOut + "_from_liwingwood_log", {
		"ingredient": {
			"tag": "botania:livingwood_logs"
		},
		"result": "botania:" + addingBotaniaLivingwoodCorailWoodcutterOut,
		"count": addingBotaniaLivingwoodCorailWoodcutterCount
	});
}

var addingIntegratedDynamicsMenrilCorailWoodcutter = {
	"menril_door" : woodcutting_log_door_return,
	"menril_fence" : woodcutting_log_fence_return,
	"menril_fence_gate" : woodcutting_log_fence_gate_return,
	"menril_slab" : woodcutting_log_slab_return,
	"menril_planks_stairs" : woodcutting_log_stairs_return
};
for addingIntegratedDynamicsMenrilCorailWoodcutterOut, addingIntegratedDynamicsMenrilCorailWoodcutterCount in addingIntegratedDynamicsMenrilCorailWoodcutter {
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingIntegratedDynamicsMenrilCorailWoodcutterOut + "_from_menril_log", {
		"ingredient": {
			"tag": "integrateddynamics:menril_logs"
		},
		"result": "integrateddynamics:" + addingIntegratedDynamicsMenrilCorailWoodcutterOut,
		"count": addingIntegratedDynamicsMenrilCorailWoodcutterCount
	});
}

var addingNaturesAuraAncientCorailWoodcutter = {
	"ancient_slab" : (woodcutting_log_slab_return / 2),
	"ancient_stairs" : (woodcutting_log_stairs_return / 2),
	"ancient_stick" : (woodcutting_log_stick_return / 2),
	"ancient_planks" : (woodcutting_log_planks_return / 2)
};
for addingNaturesAuraAncientCorailWoodcutterOut, addingNaturesAuraAncientCorailWoodcutterCount in addingNaturesAuraAncientCorailWoodcutter {
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingNaturesAuraAncientCorailWoodcutterOut + "_from_ancient_log", {
		"ingredient": {
			"tag": "naturesaura:ancient_logs"
		},
		"result": "naturesaura:" + addingNaturesAuraAncientCorailWoodcutterOut,
		"count": addingNaturesAuraAncientCorailWoodcutterCount
	});
}

var addingComponentLogCorailWoodcutter = {
	"azalea" : "ecologics",
	"bloodshroom" : "tconstruct",
	"cerulean" : "enlightened_end",
	"coconut" : "ecologics",
	"cherry" : "vinery",
	"flowering_azalea" : "ecologics",
	"greenheart" : "tconstruct",
	"grongle" : "undergarden",
	"indigo" : "enlightened_end",
	"smogstem" : "undergarden",
	"skyroot" : "tconstruct",
	"walnut" : "ecologics",
	"wigglewood" : "undergarden"
};
for addingComponentLogCorailWoodcutterName, addingComponentLogCorailWoodcutterModId in addingComponentLogCorailWoodcutter {
	if (addingComponentLogCorailWoodcutterModId == "ecologics" || 
		addingComponentLogCorailWoodcutterModId == "undergarden") {
		if (addingComponentLogCorailWoodcutterName == "flowering_azalea") {
			var addingComponentCorailWoodcutter = {
				"boat" : woodcutting_log_boat_return,
				"door" : woodcutting_log_door_return,
				"fence" : woodcutting_log_fence_return,
				"fence_gate" : woodcutting_log_fence_gate_return,
				"sign" : woodcutting_log_sign_return,
				"slab" : woodcutting_log_slab_return,
				"stairs" : woodcutting_log_stairs_return,
				"trapdoor" : woodcutting_log_trapdoor_return
			};
			for addingComponentCorailWoodcutterOut, addingComponentCorailWoodcutterCount in addingComponentCorailWoodcutter {
				<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut + "_from_" + addingComponentLogCorailWoodcutterName + "_log", {
					"ingredient": {
						"tag": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_logs"
					},
					"result": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut,
					"count": addingComponentCorailWoodcutterCount
				});
			}
		} else {
			var addingComponentCorailWoodcutter = {
				"boat" : woodcutting_log_boat_return,
				"button" : woodcutting_log_button_return,
				"door" : woodcutting_log_door_return,
				"fence" : woodcutting_log_fence_return,
				"fence_gate" : woodcutting_log_fence_gate_return,
				"pressure_plate" : woodcutting_log_pressure_plate_return,
				"sign" : woodcutting_log_sign_return,
				"slab" : woodcutting_log_slab_return,
				"stairs" : woodcutting_log_stairs_return,
				"trapdoor" : woodcutting_log_trapdoor_return
			};
			for addingComponentCorailWoodcutterOut, addingComponentCorailWoodcutterCount in addingComponentCorailWoodcutter {
				<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut + "_from_" + addingComponentLogCorailWoodcutterName + "_log", {
					"ingredient": {
						"tag": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_logs"
					},
					"result": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut,
					"count": addingComponentCorailWoodcutterCount
				});
			}
		}
	} else if (addingComponentLogCorailWoodcutterModId == "enlightened_end" || 
		addingComponentLogCorailWoodcutterModId == "vinery") {
		var addingComponentCorailWoodcutter = {
			"button" : woodcutting_log_button_return,
			"door" : woodcutting_log_door_return,
			"fence" : woodcutting_log_fence_return,
			"fence_gate" : woodcutting_log_fence_gate_return,
			"pressure_plate" : woodcutting_log_pressure_plate_return,
			"slab" : woodcutting_log_slab_return,
			"stairs" : woodcutting_log_stairs_return,
			"trapdoor" : woodcutting_log_trapdoor_return
		};
		if (addingComponentLogCorailWoodcutterName == "indigo") {
			for addingComponentCorailWoodcutterOut, addingComponentCorailWoodcutterCount in addingComponentCorailWoodcutter {
				<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut + "_from_" + addingComponentLogCorailWoodcutterName + "_log", {
					"ingredient": {
						"tag": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_stems"
					},
					"result": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut,
					"count": addingComponentCorailWoodcutterCount
				});
			}
		} else {
			for addingComponentCorailWoodcutterOut, addingComponentCorailWoodcutterCount in addingComponentCorailWoodcutter {
				<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut + "_from_" + addingComponentLogCorailWoodcutterName + "_log", {
					"ingredient": {
						"tag": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_logs"
					},
					"result": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut,
					"count": addingComponentCorailWoodcutterCount
				});
			}
		}
	} else {
		var addingComponentCorailWoodcutter = {
			"button" : woodcutting_log_button_return,
			"door" : woodcutting_log_door_return,
			"fence" : woodcutting_log_fence_return,
			"fence_gate" : woodcutting_log_fence_gate_return,
			"pressure_plate" : woodcutting_log_pressure_plate_return,
			"sign" : woodcutting_log_sign_return,
			"planks_slab" : woodcutting_log_slab_return,
			"planks_stairs" : woodcutting_log_stairs_return,
			"trapdoor" : woodcutting_log_trapdoor_return
		};
		for addingComponentCorailWoodcutterOut, addingComponentCorailWoodcutterCount in addingComponentCorailWoodcutter {
			<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut + "_from_" + addingComponentLogCorailWoodcutterName + "_log", {
				"ingredient": {
					"tag": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_logs"
				},
				"result": addingComponentLogCorailWoodcutterModId + ":" + addingComponentLogCorailWoodcutterName + "_" + addingComponentCorailWoodcutterOut,
				"count": addingComponentCorailWoodcutterCount
			});
		}
	}
}

var addingBaseLogsCorailWoodcutter = {
	"oak" : "logs",
	"spruce" : "logs",
	"birch" : "logs",
	"jungle" : "logs",
	"acacia" : "logs",
	"dark_oak" : "logs",
	"crimson" : "stems",
	"warped" : "stems"
};

for addingPathMacawCorailWoodcutterId, addingPathMacawCorailWoodcutterType in addingBaseLogsCorailWoodcutter {
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingPathMacawCorailWoodcutterId + "_path_from_" + addingPathMacawCorailWoodcutterId + "_planks", {
		"ingredient": {
			"item": "minecraft:" + addingPathMacawCorailWoodcutterId + "_planks"
		},
		"result": "mcwpaths:" + addingPathMacawCorailWoodcutterId + "_planks_path",
		"count": woodcutting_mcwpaths_planks
	});
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingPathMacawCorailWoodcutterId + "_path_from_" + addingPathMacawCorailWoodcutterId + "_" + addingPathMacawCorailWoodcutterType, {
		"ingredient": {
			"tag": "minecraft:" + addingPathMacawCorailWoodcutterId + "_" + addingPathMacawCorailWoodcutterType
		},
		"result": "mcwpaths:" + addingPathMacawCorailWoodcutterId + "_planks_path",
		"count": woodcutting_mcwpaths_log
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
for addingRoofPartMacawCorailWoodcutterName in addingRoofPartMacawCorailWoodcutter {
	for addingRoofMacawCorailWoodcutterId, addingRoofMacawCorailWoodcutterType in addingBaseLogsCorailWoodcutter {
		<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingRoofPartMacawCorailWoodcutterName + "_" + addingRoofMacawCorailWoodcutterId + "_from_" + addingRoofMacawCorailWoodcutterId + "_planks", {
			"ingredient": {
				"item": "minecraft:" + addingRoofMacawCorailWoodcutterId + "_planks"
			},
			"result": "mcwroofs:" + addingRoofMacawCorailWoodcutterId + "_planks_" + addingRoofPartMacawCorailWoodcutterName,
			"count": woodcutting_mcwroofs_planks
		});
		<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingRoofPartMacawCorailWoodcutterName + "_" + addingRoofMacawCorailWoodcutterId + "_from_" + addingRoofMacawCorailWoodcutterId + "_" + addingRoofMacawCorailWoodcutterType, {
			"ingredient": {
				"tag": "minecraft:" + addingRoofMacawCorailWoodcutterId + "_" + addingRoofMacawCorailWoodcutterType
			},
			"result": "mcwroofs:" + addingRoofMacawCorailWoodcutterId + "_" + addingRoofPartMacawCorailWoodcutterName,
			"count": woodcutting_mcwroofs_log
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
for addingFencesPartMacawCorailWoodcutterName in addingFencesPartMacawCorailWoodcutter {
	for addingFencesMacawCorailWoodcutterId, addingFencesMacawCorailWoodcutterType in addingBaseLogsCorailWoodcutter {
		<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingFencesPartMacawCorailWoodcutterName + "_" + addingFencesMacawCorailWoodcutterId + "_from_" + addingFencesMacawCorailWoodcutterId + "_" + addingFencesMacawCorailWoodcutterType, {
			"ingredient": {
				"tag": "minecraft:" + addingFencesMacawCorailWoodcutterId + "_" + addingFencesMacawCorailWoodcutterType
			},
			"result": "mcwfences:" + addingFencesMacawCorailWoodcutterId + "_" + addingFencesPartMacawCorailWoodcutterName,
			"count": woodcutting_mcwfences
		});	
	}
}

var addingBridgesPartMacawCorailWoodcutter = [
	"bridge_pier",
	"log_bridge_middle",
	"log_bridge_stair",
	"rail_bridge"
];
for addingBridgesPartMacawCorailWoodcutterName in addingBridgesPartMacawCorailWoodcutter {
	for addingBridgesMacawCorailWoodcutterId, addingBridgesMacawCorailWoodcutterType in addingBaseLogsCorailWoodcutter {
		<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe("corail_woodcutter_" + addingBridgesPartMacawCorailWoodcutterName + "_" + addingBridgesMacawCorailWoodcutterId + "_from_" + addingBridgesMacawCorailWoodcutterId + "_" + addingBridgesMacawCorailWoodcutterType, {
			"ingredient": {
				"tag": "minecraft:" + addingBridgesMacawCorailWoodcutterId + "_" + addingBridgesMacawCorailWoodcutterType
			},
			"result": "mcwbridges:" + addingBridgesMacawCorailWoodcutterId + "_" + addingBridgesPartMacawCorailWoodcutterName,
			"count": woodcutting_mcwbridges
		});	
	}
}

Globals.endScript("recipe_corail_woodcutter");