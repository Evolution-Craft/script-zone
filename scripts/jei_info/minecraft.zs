/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 * v0.2 : Rework.
 */

Globals.startScript("jei_info/minecraft");
Globals.priorityScript("Null");

for minecraft_concrete_dye_add_info in Constant.packColours {
	packJeiDescripton(<item:minecraft:${minecraft_concrete_dye_add_info}_concrete_powder>, "Drop it into water for transforming into concrete.");
}

Globals.endScript("jei_info/minecraft");