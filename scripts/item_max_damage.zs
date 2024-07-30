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
	"aquaculture:neptunium_fillet_knife" : 2860,
	"aquaculturedelight:neptunium_knife" : 2860,
	"croptopia:knife" : 400,
	"cyclic:shears_flint" : 25,
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
	"woodarmorhorse:stone_horse_armor" : 300
};
for itemSetMaxDamageMaterial, itemSetMaxDamageValue in itemSetMaxDamage {
	<item:${itemSetMaxDamageMaterial}>.maxDamage = itemSetMaxDamageValue;
}

Globals.endScript("item_max_damage");