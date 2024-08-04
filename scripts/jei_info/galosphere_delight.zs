/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("jei_info/galosphere_delight");
Globals.priorityScript("Null");

import mods.jei.JEI as JEI;

var addingGalosphereDelightKnifeInfo = [
	"allurite_knife",
	"lumiere_knife",
	"silver_knife"
];
for galosphere_delight_knife_add_info in addingGalosphereDelightKnifeInfo {
	JEI.addDescription(<item:galosphere_delight:${galosphere_delight_knife_add_info}>, ("Knives are lightweight melee weapon. They can harvest Straw from grasses, and guarantee secondary drops from animals."));
}

Globals.endScript("jei_info/galosphere_delight");