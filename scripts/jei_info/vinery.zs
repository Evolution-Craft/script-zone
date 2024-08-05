/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("jei_info/vinery");
Globals.priorityScript("Null");

/*import mods.jei.JEI as JEI;

JEI.addDescription(<item:vinery:apple_mash>, ("Crafting in Apple Press."));*/
Function.packAddJeiDescription(<item:vinery:apple_mash>, "Crafting in Apple Press.").

Globals.endScript("jei_info/vinery");