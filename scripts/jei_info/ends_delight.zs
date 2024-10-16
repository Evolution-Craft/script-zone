/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("jei_info/ends_delight");
Globals.priorityScript("Null");

var addingEndsDelightKnifeInfo = [
	"dragon_egg_shell_knife",
	"dragon_tooth_knife",
	"end_stone_knife",
	"purpur_knife"
];
for ends_delight_knife_add_info in addingEndsDelightKnifeInfo {
	packJeiDescripton(<item:ends_delight:${ends_delight_knife_add_info}>, "Knives are lightweight melee weapon. They can harvest Straw from grasses, and guarantee secondary drops from animals.");
}

Globals.endScript("jei_info/ends_delight");