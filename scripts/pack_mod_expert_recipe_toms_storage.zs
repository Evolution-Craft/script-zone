/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("pack_mod_expert_recipe_toms_storage");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

if (packModeSetting.packModeSettingTomsStorage() == true) {

	Globals.packExpertScript("Tom's Storage - Active");

	craftingTable.removeByName("toms_storage:wireless_terminal");
	craftingTable.addShaped("pack_expert_crafting_toms_storage/wireless_terminal", <item:toms_storage:ts.wireless_terminal>, [
		[<item:create:brass_casing>, <item:minecraft:comparator>, <item:create:brass_casing>],
		[<item:minecraft:spyglass>, <item:minecraft:glowstone>, <tag:items:forge:glass>],
		[<item:create:brass_casing>, <tag:items:forge:ender_pearls>, <item:create:brass_casing>]
	]);

}

Globals.endScript("pack_mod_expert_recipe_toms_storage");