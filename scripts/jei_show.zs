/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 998

Globals.startScript("jei_show");
Globals.priorityScript("998");

import mods.jei.JEI;

JEI.addIngredient(<item:minecraft:dragon_egg>);
JEI.addIngredient(<item:miniutilities:bat_wing>);

Globals.endScript("jei_show");