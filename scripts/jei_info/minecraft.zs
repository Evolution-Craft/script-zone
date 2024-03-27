/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("jei_info/minecraft");
Globals.priorityScript("Null");

import mods.jei.JEI as JEI;

for minecraft_concrete_dye_add_info in Constant.packColours {
	JEI.addDescription(<item:minecraft:${minecraft_concrete_dye_add_info}_concrete_powder>, ("Drop it into water for transforming into concrete."));
}

Globals.endScript("jei_info/minecraft");