/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 * v0.2 : Rework.
 */

Globals.startScript("jei_info/baubley_heart_canisters");
Globals.priorityScript("Null");

packJeiDescripton(<item:bhc:red_heart>, "Red Heart, drop from hostile mobs.");
packJeiDescripton(<item:bhc:yellow_heart>, "Yellow Heart, drop from the Wither boss.");
packJeiDescripton(<item:bhc:green_heart>, "Green Heart, drop from the Ender Dragon boss.");
packJeiDescripton(<item:bhc:blue_heart>, "Blue Hearts, drop from the Evokers.");
packJeiDescripton(<item:bhc:wither_bone>, "Wither Bone, drop from Wither Skeleton mobs.");

Globals.endScript("jei_info/baubley_heart_canisters");