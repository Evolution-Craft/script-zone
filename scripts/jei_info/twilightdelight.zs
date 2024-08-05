/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 * v0.2 : Rework.
 */

Globals.startScript("jei_info/twilightdelight");
Globals.priorityScript("Null");

var addingTwilightDelightKnifeInfo = [
	"fiery_knife",
	"ironwood_knife",
	"knightmetal_knife",
	"steeleaf_knife"
];
for twilightdelight_knife_add_info in addingTwilightDelightKnifeInfo {
	packJeiDescripton(<item:twilightdelight:${twilightdelight_knife_add_info}>, "Knives are lightweight melee weapon. They can harvest Straw from grasses, and guarantee secondary drops from animals.");
}

Globals.endScript("jei_info/twilightdelight");