/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("jei_info/sereneseasons");
Globals.priorityScript("Null");

import mods.jei.JEI as JEI;

JEI.addDescription(<item:sereneseasons:calendar>, ("Equipment for ability season calendar on mini map."));
JEI.addDescription(<item:sereneseasons:season_sensor>, ("Emit redstone signal in according to season."));

Globals.endScript("jei_info/sereneseasons");