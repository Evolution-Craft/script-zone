/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding hopper sequency.
 * v0.2 : Add fluid hopper.
 */

println("Start script recipe_hopper.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

craftingTable.removeByName("brickhopper:brick_hopper");
craftingTable.addShaped("brick_hopper", <item:brickhopper:brick_hopper>, [
	[<item:minecraft:brick>, <item:minecraft:air>, <item:minecraft:brick>],
	[<item:minecraft:brick>, <item:woodenhopper:wooden_hopper>, <item:minecraft:brick>],
	[<item:minecraft:air>, <item:minecraft:brick>]
]);
craftingTable.removeByName("minecraft:hopper");
craftingTable.addShaped("hopper", <item:minecraft:hopper>, [
	[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
	[<item:minecraft:iron_ingot>, <item:brickhopper:brick_hopper>, <item:minecraft:iron_ingot>],
	[<item:minecraft:air>, <item:minecraft:iron_ingot>]
]);
craftingTable.removeByName("cyclic:hopper_fluid");
craftingTable.addShaped("hopper_fluid", <item:cyclic:hopper_fluid>, [
	[<item:minecraft:brick>, <item:minecraft:bucket>, <item:minecraft:brick>],
	[<item:minecraft:brick>, <item:minecraft:hopper>, <item:minecraft:brick>],
	[<item:minecraft:air>, <item:minecraft:brick>]
]);
craftingTable.removeByName("speedyhoppers:speedyhopper_mk1");
craftingTable.addShaped("speedyhopper_mk1", <item:speedyhoppers:speedyhopper_mk1>, [
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
	[<item:minecraft:iron_ingot>, <item:minecraft:hopper>, <item:minecraft:iron_ingot>],
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);
craftingTable.removeByName("speedyhoppers:speedyhopper_mk2");
craftingTable.addShaped("speedyhopper_mk2", <item:speedyhoppers:speedyhopper_mk2>, [
	[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
	[<item:minecraft:gold_ingot>, <item:speedyhoppers:speedyhopper_mk1>, <item:minecraft:gold_ingot>],
	[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]
]);
craftingTable.removeByName("speedyhoppers:speedyhopper_mk3");
craftingTable.addShaped("speedyhopper_mk3", <item:speedyhoppers:speedyhopper_mk3>, [
	[<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
	[<item:minecraft:diamond>, <item:speedyhoppers:speedyhopper_mk2>, <item:minecraft:diamond>],
	[<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>]
]);

println("End script recipe_hopper.");