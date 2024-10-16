/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 983

Globals.startScript("tag/curios");
Globals.priorityScript("983");

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

// Bundle
var addingBundleCurios = [
	"betterbundles:copper_bundle",
	"betterbundles:iron_bundle",
	"betterbundles:silver_bundle",
	"betterbundles:gold_bundle",
	"betterbundles:diamond_bundle",
	"betterbundles:netherite_bundle"
];
for tag_bundle_curios in addingBundleCurios {
	<tag:items:curios:bundle>.add(<item:${tag_bundle_curios}>);
}

Globals.endScript("tag/curios");