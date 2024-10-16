/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_corail_woodcutter");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.tag.manager.ITagManager;

val woodcutting_log_boat_return = 1;
val woodcutting_log_button_return = 4;
val woodcutting_log_door_return = 4;
val woodcutting_log_fence_return = 4;
val woodcutting_log_fence_gate_return = 1;
val woodcutting_log_hollow_return = 1;
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

var addingBanisterFromPlanksCorailWoodcutter = {
	"tflostblocks:thorn_planks" : "tflostblocks:thorn_banister",
	"twilightforest:towerwood" : "tflostblocks:towerwood_banister"
};
for addingBanisterFromPlanksCorailWoodcutterItemIn, addingBanisterFromPlanksCorailWoodcutterItemOut in addingBanisterFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingBanisterFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingBanisterFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingBanisterFromPlanksCorailWoodcutterItemIn}>, <item:${addingBanisterFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_banister_return);
}

var addingButtonFromPlanksCorailWoodcutter = {
	"ecologics:azalea_planks" : "ecologics:azalea_button",
	"ecologics:coconut_planks" : "ecologics:coconut_button",
	"ecologics:walnut_planks" : "ecologics:walnut_button",
	"enlightened_end:cerulean_planks" : "enlightened_end:cerulean_button",
	"enlightened_end:indigo_planks" : "enlightened_end:indigo_button",
	"tconstruct:bloodshroom_planks" : "tconstruct:bloodshroom_button",
	"tconstruct:greenheart_planks" : "tconstruct:greenheart_button",
	"tconstruct:skyroot_planks" : "tconstruct:skyroot_button",
	"tflostblocks:thorn_planks" : "tflostblocks:thorn_button",
	"twilightforest:towerwood" : "tflostblocks:towerwood_button",
	"undergarden:grongle_planks" : "undergarden:grongle_button",
	"undergarden:smogstem_planks" : "undergarden:smogstem_button",
	"undergarden:wigglewood_planks" : "undergarden:wigglewood_button",
	"vinery:cherry_planks" : "vinery:cherry_button"
};
for addingButtonFromPlanksCorailWoodcutterItemIn, addingButtonFromPlanksCorailWoodcutterItemOut in addingButtonFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingButtonFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingButtonFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingButtonFromPlanksCorailWoodcutterItemIn}>, <item:${addingButtonFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_button_return);
}

var addingDoorFromPlanksCorailWoodcutter = {
	"bambooeverything:bamboo_bundle" : "bambooeverything:bamboo_door",
	"bambooeverything:dry_bamboo_bundle" : "bambooeverything:dry_bamboo_door",
	"ecologics:azalea_planks" : "ecologics:azalea_door",
	"ecologics:coconut_planks" : "ecologics:coconut_door",
	"ecologics:flowering_azalea_planks" : "ecologics:flowering_azalea_door",
	"ecologics:walnut_planks" : "ecologics:walnut_door",
	"enlightened_end:cerulean_planks" : "enlightened_end:cerulean_door",
	"enlightened_end:indigo_planks" : "enlightened_end:indigo_door",
	"integrateddynamics:menril_planks" : "integrateddynamics:menril_door",
	"tconstruct:bloodshroom_planks" : "tconstruct:bloodshroom_door",
	"tconstruct:greenheart_planks" : "tconstruct:greenheart_door",
	"tconstruct:skyroot_planks" : "tconstruct:skyroot_door",
	"tflostblocks:thorn_planks" : "tflostblocks:thorn_door",
	"twilightforest:towerwood" : "tflostblocks:towerwood_door",
	"undergarden:grongle_planks" : "undergarden:grongle_door",
	"undergarden:smogstem_planks" : "undergarden:smogstem_door",
	"undergarden:wigglewood_planks" : "undergarden:wigglewood_door",
	"unusualend:chorus_nest_planks" : "unusualend:chorus_nest_planks_door",
	"vinery:cherry_planks" : "vinery:cherry_door"
};
for addingDoorFromPlanksCorailWoodcutterItemIn, addingDoorFromPlanksCorailWoodcutterItemOut in addingDoorFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingDoorFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingDoorFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingDoorFromPlanksCorailWoodcutterItemIn}>, <item:${addingDoorFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_door_return);
}

var addingFenceFromPlanksCorailWoodcutter = {
	"bambooeverything:bamboo_bundle" : "bambooeverything:bamboo_fence",
	"bambooeverything:dry_bamboo_bundle" : "bambooeverything:dry_bamboo_fence",
	"botania:dreamwood_planks" : "botania:dreamwood_fence",
	"botania:livingwood_planks" : "botania:livingwood_fence",
	"ecologics:azalea_planks" : "ecologics:azalea_fence",
	"ecologics:coconut_planks" : "ecologics:coconut_fence",
	"ecologics:flowering_azalea_planks" : "ecologics:flowering_azalea_fence",
	"ecologics:walnut_planks" : "ecologics:walnut_fence",
	"enlightened_end:cerulean_planks" : "enlightened_end:cerulean_fence",
	"enlightened_end:indigo_planks" : "enlightened_end:indigo_fence",
	"immersiveengineering:treated_wood_horizontal" : "immersiveengineering:treated_fence",
	"immersiveengineering:treated_wood_packaged" : "immersiveengineering:treated_fence",
	"immersiveengineering:treated_wood_vertical" : "immersiveengineering:treated_fence",
	"integrateddynamics:menril_planks" : "integrateddynamics:menril_fence",
	"tconstruct:bloodshroom_planks" : "tconstruct:bloodshroom_fence",
	"tconstruct:greenheart_planks" : "tconstruct:greenheart_fence",
	"tconstruct:skyroot_planks" : "tconstruct:skyroot_fence",
	"tflostblocks:thorn_planks" : "tflostblocks:thorn_fence",
	"twilightforest:towerwood" : "tflostblocks:towerwood_fence",
	"undergarden:grongle_planks" : "undergarden:grongle_fence",
	"undergarden:smogstem_planks" : "undergarden:smogstem_fence",
	"undergarden:wigglewood_planks" : "undergarden:wigglewood_fence",
	"unusualend:chorus_nest_mosaic" : "unusualend:chorus_nest_mosaic_fence",
	"vinery:cherry_planks" : "vinery:cherry_fence"
};
for addingFenceFromPlanksCorailWoodcutterItemIn, addingFenceFromPlanksCorailWoodcutterItemOut in addingFenceFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingFenceFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingFenceFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingFenceFromPlanksCorailWoodcutterItemIn}>, <item:${addingFenceFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_fence_return);
}

var addingFenceGateFromPlanksCorailWoodcutter = {
	"bambooeverything:bamboo_bundle" : "bambooeverything:bamboo_fence_gate",
	"bambooeverything:dry_bamboo_bundle" : "bambooeverything:dry_bamboo_fence_gate",
	"botania:dreamwood_planks" : "botania:dreamwood_fence_gate",
	"botania:livingwood_planks" : "botania:livingwood_fence_gate",
	"tflostblocks:thorn_planks" : "tflostblocks:thorn_fence_gate",
	"twilightforest:towerwood" : "tflostblocks:towerwood_fence_gate",
	"unusualend:chorus_nest_mosaic" : "unusualend:chorus_nest_fence_gate"
};
for addingFenceGateFromPlanksCorailWoodcutterItemIn, addingFenceGateFromPlanksCorailWoodcutterItemOut in addingFenceGateFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingFenceGateFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingFenceGateFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingFenceGateFromPlanksCorailWoodcutterItemIn}>, <item:${addingFenceGateFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_fence_gate_return);
}

var addingHollowFromPlanksCorailWoodcutter = {
	"minecraft:acacia_log" : "twilightforest:hollow_acacia_log",
	"minecraft:birch_log" : "twilightforest:hollow_birch_log",
	"minecraft:crimson_stem" : "twilightforest:hollow_crimson_stem",
	"minecraft:dark_oak_log" : "twilightforest:hollow_dark_oak_log",
	"minecraft:jungle_log" : "twilightforest:hollow_jungle_log",
	"minecraft:oak_log" : "twilightforest:hollow_oak_log",
	"minecraft:spruce_log" : "twilightforest:hollow_spruce_log",
	"minecraft:warped_stem" : "twilightforest:hollow_warped_stem",
	"twilightforest:canopy_log" : "twilightforest:hollow_canopy_log",
	"twilightforest:dark_log" :  "twilightforest:hollow_dark_log",
	"twilightforest:mangrove_log" : "twilightforest:hollow_mangrove_log",
	"twilightforest:mining_log" : "twilightforest:hollow_mining_log",
	"twilightforest:sorting_log" : "twilightforest:hollow_sorting_log",
	"twilightforest:time_log" : "twilightforest:hollow_time_log",
	"twilightforest:transformation_log" : "twilightforest:hollow_transformation_log",
	"twilightforest:twilight_oak_log" : "twilightforest:hollow_twilight_oak_log"
};
for addingHollowFromPlanksCorailWoodcutterItemIn, addingHollowFromPlanksCorailWoodcutterItemOut in addingHollowFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingHollowFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingHollowFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingHollowFromPlanksCorailWoodcutterItemIn}>, <item:${addingHollowFromPlanksCorailWoodcutterItemOut}>, woodcutting_log_hollow_return);
}

var addingOtherFromPlanksCorailWoodcutter = {
	"botania:dreamwood_planks" : "botania:framed_dreamwood",
	"botania:dreamwood_planks" : "botania:pattern_framed_dreamwood",
	"botania:livingwood_planks" : "botania:framed_livingwood",
	"botania:livingwood_planks" : "botania:pattern_framed_livingwood",
	"immersiveengineering:treated_wood_horizontal" : "immersiveengineering:treated_wood_packaged",
	"immersiveengineering:treated_wood_horizontal" : "immersiveengineering:treated_wood_vertical",
	"immersiveengineering:treated_wood_packaged" : "immersiveengineering:treated_wood_horizontal",
	"immersiveengineering:treated_wood_packaged" : "immersiveengineering:treated_wood_vertical",
	"immersiveengineering:treated_wood_vertical" : "immersiveengineering:treated_wood_horizontal",
	"immersiveengineering:treated_wood_vertical" : "immersiveengineering:treated_wood_packaged",
	"twilightforest:canopy_planks" : "twilightdecor:vertical_canopy_planks",
	"twilightforest:dark_planks" : "twilightdecor:vertical_darkwood_planks",
	"twilightforest:mangrove_planks" : "twilightdecor:vertical_mangrove_planks",
	"twilightforest:mining_planks" : "twilightdecor:vertical_mining_planks",
	"twilightforest:sorting_planks" : "twilightdecor:vertical_sorting_planks",
	"twilightforest:time_planks" : "twilightdecor:vertical_timewood_planks",
	"twilightforest:transformation_planks" : "twilightdecor:vertical_transformation_planks",
	"twilightforest:twilight_oak_planks" : "twilightdecor:vertical_twilight_oak_planks",
	"tflostblocks:stripped_thorn_block" : "tflostblocks:thorn_planks",
	"unusualend:chorus_nest_planks" : "unusualend:chorus_nest_mosaic",
	"unusualend:chorus_nest_planks" : "unusualend:stripped_chorus_nest_planks",
	"vinery:cherry_planks" : "vinery:cherry_floorboard"
};
for addingOtherFromPlanksCorailWoodcutterItemIn, addingOtherFromPlanksCorailWoodcutterItemOut in addingOtherFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingOtherFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingOtherFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingOtherFromPlanksCorailWoodcutterItemIn}>, <item:${addingOtherFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_other_planks_return);
}

var addingPressurePlateFromPlanksCorailWoodcutter = {
	"ecologics:azalea_planks" : "ecologics:azalea_pressure_plate",
	"ecologics:coconut_planks" : "ecologics:coconut_pressure_plate",
	"ecologics:walnut_planks" : "ecologics:walnut_pressure_plate",
	"enlightened_end:cerulean_planks" : "enlightened_end:cerulean_pressure_plate",
	"enlightened_end:indigo_planks" : "enlightened_end:indigo_pressure_plate",
	"tconstruct:bloodshroom_planks" : "tconstruct:bloodshroom_pressure_plate",
	"tconstruct:greenheart_planks" : "tconstruct:greenheart_pressure_plate",
	"tconstruct:skyroot_planks" : "tconstruct:skyroot_pressure_plate",
	"tflostblocks:thorn_planks" : "tflostblocks:thorn_pressure_plate",
	"twilightforest:towerwood" : "tflostblocks:towerwood_pressure_plate",
	"undergarden:grongle_planks" : "undergarden:grongle_pressure_plate",
	"undergarden:smogstem_planks" : "undergarden:smogstem_pressure_plate",
	"undergarden:wigglewood_planks" : "undergarden:wigglewood_pressure_plate",
	"vinery:cherry_planks" : "vinery:cherry_pressure_plate"
};
for addingPressurePlateFromPlanksCorailWoodcutterItemIn, addingPressurePlateFromPlanksCorailWoodcutterItemOut in addingPressurePlateFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingPressurePlateFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingPressurePlateFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingPressurePlateFromPlanksCorailWoodcutterItemIn}>, <item:${addingPressurePlateFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_pressure_plate_return);
}

var addingScaffoldFromPlanksCorailWoodcutter = {
	"immersiveengineering:treated_wood_horizontal" : "immersiveengineering:treated_scaffold",
	"immersiveengineering:treated_wood_packaged" : "immersiveengineering:treated_scaffold",
	"immersiveengineering:treated_wood_vertical" : "immersiveengineering:treated_scaffold"
};
for addingScaffoldFromPlanksCorailWoodcutterItemIn, addingScaffoldFromPlanksCorailWoodcutterItemOut in addingScaffoldFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingScaffoldFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingScaffoldFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingScaffoldFromPlanksCorailWoodcutterItemIn}>, <item:${addingScaffoldFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_scaffold_return);
}

var addingSignFromPlanksCorailWoodcutter = {
	"ecologics:azalea_planks" : "ecologics:azalea_sign",
	"ecologics:coconut_planks" : "ecologics:coconut_sign",
	"ecologics:flowering_azalea_planks" : "ecologics:flowering_azalea_sign",
	"ecologics:walnut_planks" : "ecologics:walnut_sign",
	"tconstruct:bloodshroom_planks" : "tconstruct:bloodshroom_sign",
	"tconstruct:greenheart_planks" : "tconstruct:greenheart_sign",
	"tconstruct:skyroot_planks" : "tconstruct:skyroot_sign",
	"tflostblocks:thorn_planks" : "tflostblocks:thorn_sign",
	"twilightforest:towerwood" : "tflostblocks:towerwood_sign",
	"undergarden:grongle_planks" : "undergarden:grongle_sign",
	"undergarden:smogstem_planks" : "undergarden:smogstem_sign",
	"undergarden:wigglewood_planks" : "undergarden:wigglewood_sign"
};
for addingSignFromPlanksCorailWoodcutterItemIn, addingSignFromPlanksCorailWoodcutterItemOut in addingSignFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingSignFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingSignFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingSignFromPlanksCorailWoodcutterItemIn}>, <item:${addingSignFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_sign_return);
}

var addingSlabFromPlanksCorailWoodcutter = {
	"bambooeverything:bamboo_bundle" : "bambooeverything:bamboo_slab",
	"bambooeverything:dry_bamboo_bundle" : "bambooeverything:dry_bamboo_slab",
	"botania:dreamwood" : "botania:dreamwood_slab",
	"botania:dreamwood_planks" : "botania:dreamwood_planks_slab",
	"botania:livingwood" : "botania:livingwood_slab",
	"botania:livingwood_planks" : "botania:livingwood_planks_slab",
	"botania:shimmerwood_planks" : "botania:shimmerwood_planks_slab",
	"botania:stripped_dreamwood" : "botania:stripped_dreamwood_slab",
	"botania:stripped_livingwood" : "botania:stripped_livingwood_slab",
	"ecologics:azalea_planks" : "ecologics:azalea_slab",
	"ecologics:coconut_planks" : "ecologics:coconut_slab",
	"ecologics:flowering_azalea_planks" : "ecologics:flowering_azalea_slab",
	"ecologics:walnut_planks" : "ecologics:walnut_slab",
	"enlightened_end:cerulean_planks" : "enlightened_end:cerulean_slab",
	"enlightened_end:indigo_planks" : "enlightened_end:indigo_slab",
	"immersiveengineering:treated_wood_horizontal" : "immersiveengineering:slab_treated_wood_horizontal",
	"immersiveengineering:treated_wood_packaged" : "immersiveengineering:slab_treated_wood_packaged",
	"immersiveengineering:treated_wood_vertical" : "immersiveengineering:slab_treated_wood_vertical",
	"integrateddynamics:menril_planks" : "integrateddynamics:menril_slab",
	"naturesaura:ancient_planks" : "naturesaura:ancient_slab",
	"tconstruct:bloodshroom_planks" : "tconstruct:bloodshroom_planks_slab",
	"tconstruct:greenheart_planks" : "tconstruct:greenheart_planks_slab",
	"tconstruct:skyroot_planks" : "tconstruct:skyroot_planks_slab",
	"tflostblocks:thorn_planks" : "tflostblocks:thorn_slab",
	"twilightforest:mossy_towerwood" : "tflostblocks:mossy_towerwood_slab",
	"twilightforest:towerwood" : "tflostblocks:towerwood_slab",
	"undergarden:grongle_planks" : "undergarden:grongle_slab",
	"undergarden:smogstem_planks" : "undergarden:smogstem_slab",
	"undergarden:wigglewood_planks" : "undergarden:wigglewood_slab",
	"unusualend:chorus_nest_mosaic" : "unusualend:chorus_nest_mosaic_slab",
	"unusualend:chorus_nest_planks" : "unusualend:chorus_nest_slab",
	"unusualend:stripped_chorus_nest_planks" : "unusualend:stripped_chorus_nest_slab",
	"vinery:cherry_planks" : "vinery:cherry_slab"
};
for addingSlabFromPlanksCorailWoodcutterItemIn, addingSlabFromPlanksCorailWoodcutterItemOut in addingSlabFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingSlabFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingSlabFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingSlabFromPlanksCorailWoodcutterItemIn}>, <item:${addingSlabFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_slab_return);
}

var addingStairsFromPlanksCorailWoodcutter = {
	"bambooeverything:bamboo_bundle" : "bambooeverything:bamboo_stairs",
	"bambooeverything:dry_bamboo_bundle" : "bambooeverything:dry_bamboo_stairs",
	"botania:dreamwood" : "botania:dreamwood_stairs",
	"botania:dreamwood_planks" : "botania:dreamwood_planks_stairs",
	"botania:livingwood" : "botania:livingwood_stairs",
	"botania:livingwood_planks" : "botania:livingwood_planks_stairs",
	"botania:shimmerwood_planks" : "botania:shimmerwood_planks_stairs",
	"botania:stripped_dreamwood" : "botania:stripped_dreamwood_stairs",
	"botania:stripped_livingwood" : "botania:stripped_livingwood_stairs",
	"ecologics:azalea_planks" : "ecologics:azalea_stairs",
	"ecologics:coconut_planks" : "ecologics:coconut_stairs",
	"ecologics:flowering_azalea_planks" : "ecologics:flowering_azalea_stairs",
	"ecologics:walnut_planks" : "ecologics:walnut_stairs",
	"enlightened_end:cerulean_planks" : "enlightened_end:cerulean_stairs",
	"enlightened_end:indigo_planks" : "enlightened_end:indigo_stairs",
	"immersiveengineering:treated_wood_horizontal" : "immersiveengineering:stairs_treated_wood_horizontal",
	"immersiveengineering:treated_wood_packaged" : "immersiveengineering:stairs_treated_wood_packaged",
	"immersiveengineering:treated_wood_vertical" : "immersiveengineering:stairs_treated_wood_vertical",
	"integrateddynamics:menril_planks" : "integrateddynamics:menril_planks_stairs",
	"naturesaura:ancient_planks" : "naturesaura:ancient_stairs",
	"tconstruct:bloodshroom_planks" : "tconstruct:bloodshroom_planks_stairs",
	"tconstruct:greenheart_planks" : "tconstruct:greenheart_planks_stairs",
	"tconstruct:skyroot_planks" : "tconstruct:skyroot_planks_stairs",
	"tflostblocks:thorn_planks" : "tflostblocks:thorn_stairs",
	"twilightforest:mossy_towerwood" : "tflostblocks:mossy_towerwood_stairs",
	"twilightforest:towerwood" : "tflostblocks:towerwood_stairs",
	"undergarden:grongle_planks" : "undergarden:grongle_stairs",
	"undergarden:smogstem_planks" : "undergarden:smogstem_stairs",
	"undergarden:wigglewood_planks" : "undergarden:wigglewood_stairs",
	"unusualend:chorus_nest_mosaic" : "unusualend:chorus_nest_mosaic_stairs",
	"unusualend:chorus_nest_planks" : "unusualend:chorus_nest_stairs",
	"unusualend:stripped_chorus_nest_planks" : "unusualend:stripped_chorus_nest_stairs",
	"vinery:cherry_planks" : "vinery:cherry_stairs"
};
for addingStairsFromPlanksCorailWoodcutterItemIn, addingStairsFromPlanksCorailWoodcutterItemOut in addingStairsFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingStairsFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingStairsFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingStairsFromPlanksCorailWoodcutterItemIn}>, <item:${addingStairsFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_stairs_return);
}

var addingStickFromPlanksCorailWoodcutter = {
	"immersiveengineering:treated_wood_horizontal" : "immersiveengineering:stick_treated",
	"immersiveengineering:treated_wood_packaged" : "immersiveengineering:stick_treated",
	"immersiveengineering:treated_wood_vertical" : "immersiveengineering:stick_treated",
	"naturesaura:ancient_slab" : "naturesaura:ancient_stick",
};
for addingStickFromPlanksCorailWoodcutterItemIn, addingStickFromPlanksCorailWoodcutterItemOut in addingStickFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingStickFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingStickFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingStickFromPlanksCorailWoodcutterItemIn}>, <item:${addingStickFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_stick_return);
}

var addingTrapdoorFromPlanksCorailWoodcutter = {
	"bambooeverything:bamboo_bundle" : "bambooeverything:bamboo_trapdoor",
	"bambooeverything:dry_bamboo_bundle" : "bambooeverything:dry_bamboo_trapdoor",
	"ecologics:azalea_planks" : "ecologics:azalea_trapdoor",
	"ecologics:coconut_planks" : "ecologics:coconut_trapdoor",
	"ecologics:flowering_azalea_planks" : "ecologics:flowering_azalea_trapdoor",
	"ecologics:walnut_planks" : "ecologics:walnut_trapdoor",
	"enlightened_end:cerulean_planks" : "enlightened_end:cerulean_trapdoor",
	"enlightened_end:indigo_planks" : "enlightened_end:indigo_trapdoor",
	"tconstruct:bloodshroom_planks" : "tconstruct:bloodshroom_trapdoor",
	"tconstruct:greenheart_planks" : "tconstruct:greenheart_trapdoor",
	"tconstruct:skyroot_planks" : "tconstruct:skyroot_trapdoor",
	"tflostblocks:thorn_planks" : "tflostblocks:thorn_trapdoor",
	"twilightforest:towerwood" : "tflostblocks:towerwood_trapdoor",
	"undergarden:grongle_planks" : "undergarden:grongle_trapdoor",
	"undergarden:smogstem_planks" : "undergarden:smogstem_trapdoor",
	"undergarden:wigglewood_planks" : "undergarden:wigglewood_trapdoor",
	"unusualend:chorus_nest_planks" : "unusualend:chorus_nest_trapdoor",
	"vinery:cherry_planks" : "vinery:cherry_trapdoor"
};
for addingTrapdoorFromPlanksCorailWoodcutterItemIn, addingTrapdoorFromPlanksCorailWoodcutterItemOut in addingTrapdoorFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingTrapdoorFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingTrapdoorFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingTrapdoorFromPlanksCorailWoodcutterItemIn}>, <item:${addingTrapdoorFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_trapdoor_return);
}

var addingWallFromPlanksCorailWoodcutter = {
	"botania:dreamwood" : "botania:dreamwood_wall",
	"botania:livingwood" : "botania:livingwood_wall",
	"botania:stripped_dreamwood" : "botania:stripped_dreamwood_wall",
	"botania:stripped_livingwood" : "botania:stripped_livingwood_wall"
};
for addingWallFromPlanksCorailWoodcutterItemIn, addingWallFromPlanksCorailWoodcutterItemOut in addingWallFromPlanksCorailWoodcutter {
	packAddRecipeCorailWoodcutter_Item("corail_woodcutter_" + <item:${addingWallFromPlanksCorailWoodcutterItemOut}>.registryName.path + "_from_" + <item:${addingWallFromPlanksCorailWoodcutterItemIn}>.registryName.path, <item:${addingWallFromPlanksCorailWoodcutterItemIn}>, <item:${addingWallFromPlanksCorailWoodcutterItemOut}>, woodcutting_planks_wall_return);
}

packAddRecipeCorailWoodcutter_Item("corail_woodcutter_rubberwood_planks_from_rubberwood_log", <item:myrtrees:rubberwood_log>, <item:myrtrees:rubberwood_planks>, woodcutting_log_planks_return);

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
	"menril_planks" : woodcutting_log_planks_return,
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

var addingComponentLogCorailWoodcutter = {
	"ancient" : "naturesaura",
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
	if (addingComponentLogCorailWoodcutterModId == "naturesaura") {
		var addingComponentCorailWoodcutter = {
			"slab" : (woodcutting_log_slab_return / 2),
			"stairs" : (woodcutting_log_stairs_return / 2),
			"stick" : (woodcutting_log_stick_return / 2),
			"planks" : (woodcutting_log_planks_return / 2)
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
	} else if (addingComponentLogCorailWoodcutterModId == "ecologics" || addingComponentLogCorailWoodcutterModId == "undergarden") {
		if (addingComponentLogCorailWoodcutterName == "flowering_azalea") {
			var addingComponentCorailWoodcutter = {
				"boat" : woodcutting_log_boat_return,
				"door" : woodcutting_log_door_return,
				"fence" : woodcutting_log_fence_return,
				"fence_gate" : woodcutting_log_fence_gate_return,
				"planks" : woodcutting_log_planks_return,
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
				"planks" : woodcutting_log_planks_return,
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
	} else if (addingComponentLogCorailWoodcutterModId == "enlightened_end" || addingComponentLogCorailWoodcutterModId == "vinery") {
		var addingComponentCorailWoodcutter = {
			"button" : woodcutting_log_button_return,
			"door" : woodcutting_log_door_return,
			"fence" : woodcutting_log_fence_return,
			"fence_gate" : woodcutting_log_fence_gate_return,
			"planks" : woodcutting_log_planks_return,
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
			"planks" : woodcutting_log_planks_return,
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
	"acacia" : "logs",
	"birch" : "logs",
	"crimson" : "stems",
	"dark_oak" : "logs",
	"jungle" : "logs",
	"oak" : "logs",
	"spruce" : "logs",
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