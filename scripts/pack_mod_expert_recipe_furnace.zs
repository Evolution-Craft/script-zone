/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Created crafting sequence for Furnaces.
 */

Globals.startScript("pack_mod_expert_recipe_furnace");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

if (packModeSetting.packModeSettingFurnaces() == true) {

	Globals.packExpertScript("Furnace - Active");

	craftingTable.removeByName("quark:building/crafting/furnaces/cobblestone_furnace");
	craftingTable.addShaped("pack_expert_crafting_furnaces/cobblestone_furnace", <item:minecraft:furnace>, [
		[<item:cyclic:compressed_cobblestone>, <item:cyclic:compressed_cobblestone>, <item:cyclic:compressed_cobblestone>],
		[<item:cyclic:compressed_cobblestone>, <item:minecraft:air>, <item:cyclic:compressed_cobblestone>],
		[<item:cyclic:compressed_cobblestone>, <item:cyclic:compressed_cobblestone>, <item:cyclic:compressed_cobblestone>]
	]);

	craftingTable.removeByName("quark:building/crafting/furnaces/deepslate_furnace");
	craftingTable.addShaped("pack_expert_crafting_furnaces/deepslate_furnace", <item:quark:deepslate_furnace>, [
		[<item:minecraft:cobbled_deepslate>, <item:minecraft:cobbled_deepslate>, <item:minecraft:cobbled_deepslate>],
		[<item:minecraft:cobbled_deepslate>, <item:minecraft:furnace>, <item:minecraft:cobbled_deepslate>],
		[<item:minecraft:cobbled_deepslate>, <item:minecraft:cobbled_deepslate>, <item:minecraft:cobbled_deepslate>]
	]);

	craftingTable.removeByName("quark:building/crafting/furnaces/blackstone_furnace");
	craftingTable.addShaped("pack_expert_crafting_furnaces/blackstone_furnace", <item:quark:blackstone_furnace>, [
		[<item:minecraft:blackstone>, <item:minecraft:blackstone>, <item:minecraft:blackstone>],
		[<item:minecraft:blackstone>, <item:minecraft:furnace>, <item:minecraft:blackstone>],
		[<item:minecraft:blackstone>, <item:minecraft:blackstone>, <item:minecraft:blackstone>]
	]);

	craftingTable.removeByName("brickfurnace:brick_furnace");
	craftingTable.addShaped("pack_expert_crafting_furnaces/brick_furnace", <item:brickfurnace:brick_furnace>, [
		[<item:supplementaries:ash_bricks>, <item:minecraft:bricks>, <item:supplementaries:ash_bricks>],
		[<item:minecraft:bricks>, <tag:items:forge:furnaces>, <item:minecraft:bricks>],
		[<item:supplementaries:ash_bricks>, <item:minecraft:bricks>, <item:supplementaries:ash_bricks>]
	]);

	craftingTable.removeByName("minecraft:blast_furnace");
	craftingTable.removeByName("quark:building/crafting/furnaces/deepslate_blast_furnace");
	craftingTable.removeByName("quark:building/crafting/furnaces/blackstone_blast_furnace");
	craftingTable.removeByName("tconstruct:common/basalt_blast_furnace");
	craftingTable.addShaped("pack_expert_crafting_furnaces/blast_furnace", <item:minecraft:blast_furnace>, [
		[<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>],
		[<item:minecraft:iron_block>, <tag:items:forge:furnaces>, <item:minecraft:iron_block>],
		[<item:decoration_delight:stone_tiles>, <item:decoration_delight:stone_tiles>, <item:decoration_delight:stone_tiles>]
	]);

	craftingTable.removeByName("brickfurnace:brick_blast_furnace");
	craftingTable.addShaped("pack_expert_crafting_furnaces/brick_blast_furnace", <item:brickfurnace:brick_blast_furnace>, [
		[<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>],
		[<item:minecraft:iron_block>, <item:brickfurnace:brick_furnace>, <item:minecraft:iron_block>],
		[<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>]
	]);

	craftingTable.removeByName("minecraft:smoker");
	craftingTable.removeByName("quark:building/crafting/furnaces/deepslate_smoker");
	craftingTable.removeByName("quark:building/crafting/furnaces/blackstone_smoker");
	craftingTable.addShaped("pack_expert_crafting_furnaces/smoker", <item:minecraft:smoker>, [
		[<tag:items:minecraft:logs>, <item:mcwroofs:gutter_middle>, <tag:items:minecraft:logs>],
		[<tag:items:minecraft:logs>, <tag:items:forge:furnaces>, <tag:items:minecraft:logs>],
		[<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
	]);

	craftingTable.removeByName("brickfurnace:brick_smoker");
	craftingTable.addShaped("pack_expert_crafting_furnaces/brick_smoker", <item:brickfurnace:brick_smoker>, [
		[<item:minecraft:bricks>, <item:mcwroofs:gutter_middle>, <item:minecraft:bricks>],
		[<item:supplementaries:ash_bricks>, <item:brickfurnace:brick_furnace>, <item:supplementaries:ash_bricks>],
		[<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>]
	]);
}

Globals.endScript("pack_mod_expert_recipe_bucket");