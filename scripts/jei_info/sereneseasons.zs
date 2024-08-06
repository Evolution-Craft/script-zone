/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 * v0.2 : Rework.
 */

Globals.startScript("jei_info/sereneseasons");
Globals.priorityScript("Null");

packJeiDescripton(<item:sereneseasons:calendar>, "Equipment for ability season calendar on mini map.");
packJeiDescripton(<item:sereneseasons:season_sensor>, "Emit redstone signal in according to season.");

Globals.endScript("jei_info/sereneseasons");