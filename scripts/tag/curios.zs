/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Elytra uncategorized.
 */
 
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

// Curio
/*var addingCurioCurios = [
    "tiab:time_in_a_bottle"
];
for tag_curio_curios in addingCurioCurios{
	<tag:items:curios:curio>.add(<item:${tag_curio_curios}>);
}*/