/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 * v0.2 : Rework.
 */

Globals.startScript("jei_info/myrtrees");
Globals.priorityScript("Null");

packJeiDescripton(<item:myrtrees:tree_tap>, "Tap in Rubberwood Log for extrat Latex Liquid.");
packJeiDescripton(<item:myrtrees:wooden_bucket>, "Position in front of Tree Tap for collect the Latex Liquid, tap with Right Click for collect Latex.");
packJeiDescripton(<item:myrtrees:latex>, "Extract from Ruberwood Log using Tree Tap and Wooden Bucket.");
packJeiDescripton(<item:myrtrees:rubberwood_log>, "Rubberwood Tree spawning in Savana.");

Globals.endScript("jei_info/myrtrees");