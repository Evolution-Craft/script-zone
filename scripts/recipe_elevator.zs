/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("recipe_elevator");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shapeless
craftingTable.addShapeless("elevatorid_elevator_white_using_soap", <item:elevatorid:elevator_white>, [<tag:items:elevatorid:elevators>, <item:supplementaries:soap>]);

// Shaped
for elevatorid_dye_item in Constant.packColours {
	craftingTable.removeByName("elevatorid:elevator_" + elevatorid_dye_item);
	craftingTable.addShaped("pack_expert_crafting_elevator/elevator_" + elevatorid_dye_item, <item:elevatorid:elevator_${elevatorid_dye_item}>, [
		[<item:minecraft:${elevatorid_dye_item}_wool>, <tag:items:forge:ingots/iron>, <item:minecraft:${elevatorid_dye_item}_wool>],
		[<tag:items:forge:ingots/iron>, <item:minecraft:ender_pearl>, <tag:items:forge:ingots/iron>],
		[<item:minecraft:${elevatorid_dye_item}_wool>, <item:minecraft:piston>, <item:minecraft:${elevatorid_dye_item}_wool>]
	]);
}

Globals.endScript("recipe_elevator");