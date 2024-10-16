/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("pack_mod_expert_recipe_bucket");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.tag.manager.ITagManager;

if (packModeSetting.packModeSettingBuckets() == true) {

	Globals.packExpertScript("Bucket - Active");

	// Shaped
	craftingTable.addShaped("pack_expert_crafting_bucket/ceramicbucket_unfired_clay_bucket", <item:ceramicbucket:unfired_clay_bucket>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:clay_ball>, <item:woodenbucket:wooden_bucket>, <item:minecraft:clay_ball>],
		[<item:minecraft:air>, <item:minecraft:clay_ball>, <item:minecraft:air>]
	]);
	craftingTable.addShaped("pack_expert_crafting_bucket/iron_bucket", <item:minecraft:bucket>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<tag:items:forge:plates/iron>, <item:ceramicbucket:ceramic_bucket>, <tag:items:forge:plates/iron>],
		[<item:minecraft:air>, <tag:items:forge:plates/iron>, <item:minecraft:air>]
	]);
}

Globals.endScript("pack_mod_expert_recipe_bucket");