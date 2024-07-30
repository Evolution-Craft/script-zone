/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Modify Item Max Stack Size.
 * v0.2 : Potion Max Stack Size.
 */

Globals.startScript("item_max_stack_size");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;

val expert_max_stack_size_potion = packModeSetting.packModeSettingPotionStackSize();
val expert_max_stack_size_splash_potion = packModeSetting.packModeSettingSplashPotionStackSize();
val expert_max_stack_size_lingering_potion = packModeSetting.packModeSettingLingeringPotionStackSize();

var itemSetMaxStackSize = {

	"minecraft:potion" : expert_max_stack_size_potion,
	"minecraft:splash_potion" : expert_max_stack_size_splash_potion,
	"minecraft:lingering_potion" : expert_max_stack_size_lingering_potion,

	"ecologics:azalea_sign" : 64,
	"ecologics:coconut_sign" : 64,
	"ecologics:flowering_azalea_sign" : 64,
	"ecologics:walnut_sign" : 64,
	"ends_delight:chorus_fruit_milk_tea" : 64,
	"minecraft:acacia_sign" : 64,
	"minecraft:birch_sign" : 64,
	"minecraft:crimson_sign" : 64,
	"minecraft:dark_oak_sign" : 64,
	"minecraft:egg" : 64,
	"minecraft:ender_pearl" : 64,
	"minecraft:honey_bottle" : 64,
	"minecraft:jungle_sign" : 64,
	"minecraft:oak_sign" : 64,
	"minecraft:spruce_sign" : 64,
	"minecraft:snowball" : 64,
	"minecraft:warped_sign" : 64,
	"powah:charged_snowball" : 64,
	"quark:egg_parrot_blue" : 64,
	"quark:egg_parrot_green" : 64,
	"quark:egg_parrot_grey" : 64,
	"quark:egg_parrot_red_blue" : 64,
	"quark:egg_parrot_yellow_blue" : 64,
	"quark:azalea_sign" : 64,
	"quark:blossom_sign" : 64,
	"supplementaries:botania/hanging_sign_dreamwood" : 64,
	"supplementaries:botania/hanging_sign_livingwood" : 64,
	"supplementaries:botania/sign_post_dreamwood" : 64,
	"supplementaries:botania/sign_post_livingwood" : 64,
	"supplementaries:createdieselgenerators/hanging_sign_chip_wood" : 64,
	"supplementaries:createdieselgenerators/sign_post_chip_wood" : 64,
	"supplementaries:ecologics/hanging_sign_azalea" : 64,
	"supplementaries:ecologics/hanging_sign_flowering_azalea" : 64,
	"supplementaries:ecologics/hanging_sign_coconut" : 64,
	"supplementaries:ecologics/hanging_sign_walnut" : 64,
	"supplementaries:ecologics/sign_post_azalea" : 64,
	"supplementaries:ecologics/sign_post_flowering_azalea" : 64,
	"supplementaries:ecologics/sign_post_coconut" : 64,
	"supplementaries:ecologics/sign_post_walnut" : 64,
	"supplementaries:enlightened_end/hanging_sign_cerulean" : 64,
	"supplementaries:enlightened_end/hanging_sign_indigo" : 64,
	"supplementaries:enlightened_end/sign_post_cerulean" : 64,
	"supplementaries:enlightened_end/sign_post_indigo" : 64,
	"supplementaries:hanging_sign_acacia" : 64,
	"supplementaries:hanging_sign_crimson" : 64,
	"supplementaries:hanging_sign_dark_oak" : 64,
	"supplementaries:hanging_sign_birch" : 64,
	"supplementaries:hanging_sign_jungle" : 64,
	"supplementaries:hanging_sign_oak" : 64,
	"supplementaries:hanging_sign_spruce" : 64,
	"supplementaries:hanging_sign_warped" : 64,
	"supplementaries:integrateddynamics/hanging_sign_menril" : 64,
	"supplementaries:integrateddynamics/sign_post_menril" : 64,
	"supplementaries:myrtrees/hanging_sign_rubberwood" : 64,
	"supplementaries:myrtrees/sign_post_rubberwood" : 64,
	"supplementaries:naturesaura/hanging_sign_ancient" : 64,
	"supplementaries:naturesaura/sign_post_ancient" : 64,
	"supplementaries:quark/hanging_sign_azalea" : 64,
	"supplementaries:quark/hanging_sign_blossom" : 64,
	"supplementaries:quark/sign_post_azalea" : 64,
	"supplementaries:quark/sign_post_blossom" : 64,
	"supplementaries:sign_post_acacia" : 64,
	"supplementaries:sign_post_birch" : 64,
	"supplementaries:sign_post_crimson" : 64,
	"supplementaries:sign_post_dark_oak" : 64,
	"supplementaries:sign_post_jungle" : 64,
	"supplementaries:sign_post_oak" : 64,
	"supplementaries:sign_post_spruce" : 64,
	"supplementaries:sign_post_warped" : 64,
	"supplementaries:tconstruct/hanging_sign_bloodshroom" : 64,
	"supplementaries:tconstruct/hanging_sign_greenheart" : 64,
	"supplementaries:tconstruct/hanging_sign_skyroot" : 64,
	"supplementaries:tconstruct/sign_post_bloodshroom" : 64,
	"supplementaries:tconstruct/sign_post_greenheart" : 64,
	"supplementaries:tconstruct/sign_post_skyroot" : 64,
	"supplementaries:twilightforest/hanging_sign_canopy" : 64,
	"supplementaries:twilightforest/hanging_sign_dark" : 64,
	"supplementaries:twilightforest/hanging_sign_mangrove" : 64,
	"supplementaries:twilightforest/hanging_sign_mining" : 64,
	"supplementaries:twilightforest/hanging_sign_sorting" : 64,
	"supplementaries:twilightforest/hanging_sign_time" : 64,
	"supplementaries:twilightforest/hanging_sign_transformation" : 64,
	"supplementaries:twilightforest/hanging_sign_twilight_oak" : 64,
	"supplementaries:twilightforest/sign_post_canopy" : 64,
	"supplementaries:twilightforest/sign_post_dark" : 64,
	"supplementaries:twilightforest/sign_post_mangrove" : 64,
	"supplementaries:twilightforest/sign_post_mining" : 64,
	"supplementaries:twilightforest/sign_post_sorting" : 64,
	"supplementaries:twilightforest/sign_post_time" : 64,
	"supplementaries:twilightforest/sign_post_transformation" : 64,
	"supplementaries:twilightforest/sign_post_twilight_oak" : 64,
	"supplementaries:undergarden/hanging_sign_grongle" : 64,
	"supplementaries:undergarden/hanging_sign_smogstem" : 64,
	"supplementaries:undergarden/hanging_sign_wigglewood" : 64,
	"supplementaries:undergarden/sign_post_grongle" : 64,
	"supplementaries:undergarden/sign_post_smogstem" : 64,
	"supplementaries:undergarden/sign_post_wigglewood" : 64,
	"supplementaries:vinery/hanging_sign_cherry" : 64,
	"supplementaries:vinery/sign_post_cherry" : 64,
	"tconstruct:bloodshroom_sign" : 64,
	"tconstruct:greenheart_sign" : 64,
	"tconstruct:skyroot_sign" : 64,
	"tflostblocks:thorn_sign" : 64,
	"tflostblocks:towerwood_sign" : 64,
	"twilightforest:canopy_sign" : 64,
	"twilightforest:darkwood_sign" : 64,
	"twilightforest:mangrove_sign" : 64,
	"twilightforest:mining_sign" : 64,
	"twilightforest:sorting_sign" : 64,
	"twilightforest:time_sign" : 64,
	"twilightforest:transformation_sign" : 64,
	"twilightforest:twilight_oak_sign" : 64,
	"undergarden:grongle_sign" : 64,
	"undergarden:smogstem_sign" : 64,
	"undergarden:wigglewood_sign" : 64,
	"unusualend:ender_firefly_egg" : 64
};
for itemSetMaxStackSizeMaterial, itemSetMaxStackSizeValue in itemSetMaxStackSize {
	<item:${itemSetMaxStackSizeMaterial}>.setMaxStackSize(itemSetMaxStackSizeValue);
}

Globals.endScript("item_max_stack_size");