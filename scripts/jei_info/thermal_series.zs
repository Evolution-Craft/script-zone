/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("jei_info/thermal_series");
Globals.priorityScript("Null");

import mods.jei.JEI as JEI;

JEI.addDescription(<item:thermal:compost>, ("Crafting in Batch Composter."));

Globals.endScript("jei_info/thermal_series");