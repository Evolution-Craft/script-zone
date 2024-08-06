/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 * v0.2 : Rework.
 */

Globals.startScript("jei_info/undergardendelight");
Globals.priorityScript("Null");

var addingUndergardenDelightKnifeInfo = [
	"cloggrum_knife",
	"forgotten_knife",
	"frosteel_knife",
	"utherium_knife"
];
for undergardendelight_knife_add_info in addingUndergardenDelightKnifeInfo {
	packJeiDescripton(<item:undergardendelight:${undergardendelight_knife_add_info}>, "Knives are lightweight melee weapon. They can harvest Straw from grasses, and guarantee secondary drops from animals.");
}

Globals.endScript("jei_info/undergardendelight");