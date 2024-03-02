/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Modify Item Max Damage.
 */

println("Start script item_max_damage.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;

var itemSetMaxDamage = {
	"woodarmorhorse:oak_horse_armor" : 300,
	"woodarmorhorse:birch_horse_armor" : 300,
	"woodarmorhorse:jungle_horse_armor" : 300,
	"woodarmorhorse:acacia_horse_armor" : 300,
	"woodarmorhorse:bigoak_horse_armor" : 300,
	"woodarmorhorse:spruce_horse_armor" : 300,
	"woodarmorhorse:crimson_horse_armor" : 300,
	"woodarmorhorse:warped_horse_armor" : 300,
	"woodarmorhorse:stone_horse_armor" : 300,
	"minecraft:leather_horse_armor" : 150,
	"galosphere:sterling_horse_armor" : 360,
	"minecraft:iron_horse_armor" : 450,
	"minecraft:golden_horse_armor" : 210,
	"minecraft:diamond_horse_armor" : 990,
	"nha:netherite_horse_armor" : 1100

};
for itemSetMaxDamageMaterial, itemSetMaxDamageValue in itemSetMaxDamage {
	<item:${itemSetMaxDamageMaterial}>.maxDamage = itemSetMaxDamageValue;
}

println("End script item_max_damage.");