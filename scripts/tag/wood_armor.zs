/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 981

Globals.startScript("tag/wood_armor");
Globals.priorityScript("981");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Armor
for logWoodenArmorName in Constant.packBaseWoods {
	<tag:items:woodarmor:wooden_armor>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
	<tag:items:woodarmor:wooden_armor>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
	<tag:items:woodarmor:wooden_armor>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
	<tag:items:woodarmor:wooden_armor>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
	<tag:items:woodarmor:wooden_armor/helmet>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
	<tag:items:woodarmor:wooden_armor/chestplate>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
	<tag:items:woodarmor:wooden_armor/leggings>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
	<tag:items:woodarmor:wooden_armor/boots>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
}

// Acacia Armor
<tag:items:woodarmor:wooden_armor_acacia>.add(<item:woodarmor:acacia_helmet>);
<tag:items:woodarmor:wooden_armor_acacia>.add(<item:woodarmor:acacia_chestplate>);
<tag:items:woodarmor:wooden_armor_acacia>.add(<item:woodarmor:acacia_leggings>);
<tag:items:woodarmor:wooden_armor_acacia>.add(<item:woodarmor:acacia_boots>);
<tag:items:woodarmor:wooden_armor_acacia/helmet>.add(<item:woodarmor:acacia_helmet>);
<tag:items:woodarmor:wooden_armor_acacia/chestplate>.add(<item:woodarmor:acacia_chestplate>);
<tag:items:woodarmor:wooden_armor_acacia/leggings>.add(<item:woodarmor:acacia_leggings>);
<tag:items:woodarmor:wooden_armor_acacia/boots>.add(<item:woodarmor:acacia_boots>);

// Birch Armor
<tag:items:woodarmor:wooden_armor_birch>.add(<item:woodarmor:birch_helmet>);
<tag:items:woodarmor:wooden_armor_birch>.add(<item:woodarmor:birch_chestplate>);
<tag:items:woodarmor:wooden_armor_birch>.add(<item:woodarmor:birch_leggings>);
<tag:items:woodarmor:wooden_armor_birch>.add(<item:woodarmor:birch_boots>);
<tag:items:woodarmor:wooden_armor_birch/helmet>.add(<item:woodarmor:birch_helmet>);
<tag:items:woodarmor:wooden_armor_birch/chestplate>.add(<item:woodarmor:birch_chestplate>);
<tag:items:woodarmor:wooden_armor_birch/leggings>.add(<item:woodarmor:birch_leggings>);
<tag:items:woodarmor:wooden_armor_birch/boots>.add(<item:woodarmor:birch_boots>);

// Crimson
<tag:items:woodarmor:wooden_armor_crimson>.add(<item:woodarmor:crimson_helmet>);
<tag:items:woodarmor:wooden_armor_crimson>.add(<item:woodarmor:crimson_chestplate>);
<tag:items:woodarmor:wooden_armor_crimson>.add(<item:woodarmor:crimson_leggings>);
<tag:items:woodarmor:wooden_armor_crimson>.add(<item:woodarmor:crimson_boots>);
<tag:items:woodarmor:wooden_armor_crimson/helmet>.add(<item:woodarmor:crimson_helmet>);
<tag:items:woodarmor:wooden_armor_crimson/chestplate>.add(<item:woodarmor:crimson_chestplate>);
<tag:items:woodarmor:wooden_armor_crimson/leggings>.add(<item:woodarmor:crimson_leggings>);
<tag:items:woodarmor:wooden_armor_crimson/boots>.add(<item:woodarmor:crimson_boots>);

// Dark Oak Armor
<tag:items:woodarmor:wooden_armor_dark_oak>.add(<item:woodarmor:dark_oak_helmet>);
<tag:items:woodarmor:wooden_armor_dark_oak>.add(<item:woodarmor:dark_oak_chestplate>);
<tag:items:woodarmor:wooden_armor_dark_oak>.add(<item:woodarmor:dark_oak_leggings>);
<tag:items:woodarmor:wooden_armor_dark_oak>.add(<item:woodarmor:dark_oak_boots>);
<tag:items:woodarmor:wooden_armor_dark_oak/helmet>.add(<item:woodarmor:dark_oak_helmet>);
<tag:items:woodarmor:wooden_armor_dark_oak/chestplate>.add(<item:woodarmor:dark_oak_chestplate>);
<tag:items:woodarmor:wooden_armor_dark_oak/leggings>.add(<item:woodarmor:dark_oak_leggings>);
<tag:items:woodarmor:wooden_armor_dark_oak/boots>.add(<item:woodarmor:dark_oak_boots>);

// Jungle
<tag:items:woodarmor:wooden_armor_jungle>.add(<item:woodarmor:jungle_helmet>);
<tag:items:woodarmor:wooden_armor_jungle>.add(<item:woodarmor:jungle_chestplate>);
<tag:items:woodarmor:wooden_armor_jungle>.add(<item:woodarmor:jungle_leggings>);
<tag:items:woodarmor:wooden_armor_jungle>.add(<item:woodarmor:jungle_boots>);
<tag:items:woodarmor:wooden_armor_jungle/helmet>.add(<item:woodarmor:jungle_helmet>);
<tag:items:woodarmor:wooden_armor_jungle/chestplate>.add(<item:woodarmor:jungle_chestplate>);
<tag:items:woodarmor:wooden_armor_jungle/leggings>.add(<item:woodarmor:jungle_leggings>);
<tag:items:woodarmor:wooden_armor_jungle/boots>.add(<item:woodarmor:jungle_boots>);

// Oak Armor
<tag:items:woodarmor:wooden_armor_oak>.add(<item:woodarmor:oak_helmet>);
<tag:items:woodarmor:wooden_armor_oak>.add(<item:woodarmor:oak_chestplate>);
<tag:items:woodarmor:wooden_armor_oak>.add(<item:woodarmor:oak_leggings>);
<tag:items:woodarmor:wooden_armor_oak>.add(<item:woodarmor:oak_boots>);
<tag:items:woodarmor:wooden_armor_oak/helmet>.add(<item:woodarmor:oak_helmet>);
<tag:items:woodarmor:wooden_armor_oak/chestplate>.add(<item:woodarmor:oak_chestplate>);
<tag:items:woodarmor:wooden_armor_oak/leggings>.add(<item:woodarmor:oak_leggings>);
<tag:items:woodarmor:wooden_armor_oak/boots>.add(<item:woodarmor:oak_boots>);

// Spruce Armor
<tag:items:woodarmor:wooden_armor_spruce>.add(<item:woodarmor:spruce_helmet>);
<tag:items:woodarmor:wooden_armor_spruce>.add(<item:woodarmor:spruce_chestplate>);
<tag:items:woodarmor:wooden_armor_spruce>.add(<item:woodarmor:spruce_leggings>);
<tag:items:woodarmor:wooden_armor_spruce>.add(<item:woodarmor:spruce_boots>);
<tag:items:woodarmor:wooden_armor_spruce/helmet>.add(<item:woodarmor:spruce_helmet>);
<tag:items:woodarmor:wooden_armor_spruce/chestplate>.add(<item:woodarmor:spruce_chestplate>);
<tag:items:woodarmor:wooden_armor_spruce/leggings>.add(<item:woodarmor:spruce_leggings>);
<tag:items:woodarmor:wooden_armor_spruce/boots>.add(<item:woodarmor:spruce_boots>);

// Warped Armor
<tag:items:woodarmor:wooden_armor_warped>.add(<item:woodarmor:warped_helmet>);
<tag:items:woodarmor:wooden_armor_warped>.add(<item:woodarmor:warped_chestplate>);
<tag:items:woodarmor:wooden_armor_warped>.add(<item:woodarmor:warped_leggings>);
<tag:items:woodarmor:wooden_armor_warped>.add(<item:woodarmor:warped_boots>);
<tag:items:woodarmor:wooden_armor_warped/helmet>.add(<item:woodarmor:warped_helmet>);
<tag:items:woodarmor:wooden_armor_warped/chestplate>.add(<item:woodarmor:warped_chestplate>);
<tag:items:woodarmor:wooden_armor_warped/leggings>.add(<item:woodarmor:warped_leggings>);
<tag:items:woodarmor:wooden_armor_warped/boots>.add(<item:woodarmor:warped_boots>);

Globals.endScript("tag/wood_armor");