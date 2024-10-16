/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 998

Globals.startScript("jei_show");
Globals.priorityScript("998");

import mods.jei.JEI;

var addJeiIngradient = [
	"minecraft:dragon_egg",
	"miniutilities:bat_wing"
];
for add_jei in addJeiIngradient{
	JEI.addIngredient(<item:${add_jei}>);
}

Globals.endScript("jei_show");