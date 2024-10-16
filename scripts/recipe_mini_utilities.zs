/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_mini_utilities");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;

// Shaped
craftingTable.addShaped("pack_expert_crafting/miniutilities/quantum_quarry", <item:miniutilities:quantum_quarry>, [
	[<item:miniutilities:the_final_opinium_core>, <item:thermal_extra:dragonsteel_glass>, <item:miniutilities:the_final_opinium_core>],
	[<item:nuclearscience:lifthf4uf4>, <item:rftoolsbuilder:builder>, <item:nuclearscience:lifthf4uf4>],
	[<item:miniutilities:unstable_block>, <item:ae2:singularity>, <item:miniutilities:unstable_block>]
]);

Globals.endScript("recipe_mini_utilities");