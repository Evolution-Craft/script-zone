/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Elytra uncategorized.
 */

Globals.startScript("tag/curios");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Back
var addingBackCurios = [
	"alexsmobs:tarantula_hawk_elytra",
	"mekanism:hdpe_elytra",
	"tconstruct:slime_chestplate"
];
for tag_back_curios in addingBackCurios {
	<tag:items:curios:back>.add(<item:${tag_back_curios}>);
}

Globals.endScript("tag/curios");