/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Move wooden_horse_armor tag.
 */

#priority 985

Globals.startScript("tag/wood_armor_horse");
Globals.priorityScript("985");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Horse Armor
var addingHorseArmorWoodenHorseArmor = [
	"acacia_horse_armor",
	"bigoak_horse_armor",
	"birch_horse_armor",
	"crimson_horse_armor",
	"jungle_horse_armor",
	"oak_horse_armor",	
	"spruce_horse_armor",
	"warped_horse_armor"
];
for tag_horse_armor_wooden_horse_armor in addingHorseArmorWoodenHorseArmor {
	<tag:items:woodarmorhorse:wooden_horse_armor>.add(<item:woodarmorhorse:${tag_horse_armor_wooden_horse_armor}>);
}

Globals.endScript("tag/wood_armor_horse");