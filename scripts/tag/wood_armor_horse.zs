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
	"woodarmorhorse:acacia_horse_armor",
	"woodarmorhorse:bigoak_horse_armor",
	"woodarmorhorse:birch_horse_armor",
	"woodarmorhorse:crimson_horse_armor",
	"woodarmorhorse:jungle_horse_armor",
	"woodarmorhorse:oak_horse_armor",	
	"woodarmorhorse:spruce_horse_armor",
	"woodarmorhorse:warped_horse_armor"
];
for tag_horse_armor_wooden_horse_armor in addingHorseArmorWoodenHorseArmor {
	<tag:items:woodarmorhorse:wooden_horse_armor>.add(<item:${tag_horse_armor_wooden_horse_armor}>);
}

Globals.endScript("tag/wood_armor_horse");