/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("jei_info/ends_delight");
Globals.priorityScript("Null");

import mods.jei.JEI as JEI;

var addingEndsDelightKnifeInfo = [
	"dragon_egg_shell_knife",
	"dragon_tooth_knife",
	"end_stone_knife",
	"purpur_knife"
];
for ends_delight_knife_add_info in addingEndsDelightKnifeInfo {
	JEI.addDescription(<item:ends_delight:${ends_delight_knife_add_info}>, ("Knives are lightweight melee weapon. They can harvest Straw from grasses, and guarantee secondary drops from animals."));
}

Globals.endScript("jei_info/ends_delight");