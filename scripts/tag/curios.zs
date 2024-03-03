/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Elytra uncategorized.
 */

println("Start script/tag curios.");
println("Script Priority Null.");


import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Back
var addingBackCurios = [
    "alexsmobs:tarantula_hawk_elytra",
	"tconstruct:slime_chestplate",
	"mekanism:hdpe_elytra"
];
for tag_back_curios in addingBackCurios{
	<tag:items:curios:back>.add(<item:${tag_back_curios}>);
}

println("End script/tag curios.");