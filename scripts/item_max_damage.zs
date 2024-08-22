/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Modify Item Max Damage.
 */

Globals.startScript("item_max_damage");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;

var itemSetMaxDamage = {
	"aquaculture:neptunium_fillet_knife" : 1860,
	"aquaculturedelight:neptunium_knife" : 2260,
	"croptopia:cooking_pot" : 128,
	"croptopia:frying_pan" : 128,
	"croptopia:food_press" : 128,
	"croptopia:knife" : 128,
	"croptopia:mortar_and_pestle" : 32,
	"cyclic:shears_flint" : 25,
	"ends_delight:dragon_tooth_knife" : 956,
	"ends_delight:end_stone_knife" : 98,
	"ends_delight:purpur_knife" : 12,
	"exlinecopperequipment:copper_horse_armor" : 420,
	"fiow:flint_knife" : 26,
	"galosphere:sterling_horse_armor" : 360,
	"galosphere_delight:silver_knife" : 185,
	"galosphere_delight:lumiere_knife" : 155,
	"galosphere_delight:allurite_knife" : 165,
	"minecraft:leather_horse_armor" : 150,
	"minecraft:iron_horse_armor" : 450,
	"minecraft:golden_horse_armor" : 210,
	"minecraft:diamond_horse_armor" : 990,
	"nha:netherite_horse_armor" : 1100,
	"woodarmorhorse:oak_horse_armor" : 300,
	"woodarmorhorse:birch_horse_armor" : 300,
	"woodarmorhorse:jungle_horse_armor" : 300,
	"woodarmorhorse:acacia_horse_armor" : 300,
	"woodarmorhorse:bigoak_horse_armor" : 300,
	"woodarmorhorse:spruce_horse_armor" : 300,
	"woodarmorhorse:crimson_horse_armor" : 300,
	"woodarmorhorse:warped_horse_armor" : 300,
	"woodarmorhorse:stone_horse_armor" : 300,
	"undergardendelight:forgotten_knife" : 1561,
	"undergardendelight:frosteel_knife" : 426,
	"undergardendelight:utherium_knife" : 628
};
for itemSetMaxDamageMaterial, itemSetMaxDamageValue in itemSetMaxDamage {
	<item:${itemSetMaxDamageMaterial}>.maxDamage = itemSetMaxDamageValue;
}

Globals.endScript("item_max_damage");