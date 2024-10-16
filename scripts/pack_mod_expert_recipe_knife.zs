/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("pack_mod_expert_recipe_knife");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.tag.manager.ITagManager;

craftingTable.addShaped("pack_expert_crafting_knife/copper_knife", <item:contenttweaker:evolution_craft/knife/copper_knife>, [
	[<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
	[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("pack_expert_crafting_knife/steel_knife", <item:contenttweaker:evolution_craft/knife/steel_knife>, [
	[<item:minecraft:air>, <item:thermal:steel_ingot>, <item:minecraft:air>],
	[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("pack_expert_crafting_knife/stone_knife", <item:contenttweaker:evolution_craft/knife/stone_knife>, [
	[<item:minecraft:air>, <tag:items:forge:cobblestone>, <item:minecraft:air>],
	[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("pack_expert_crafting_knife/wooden_knife", <item:contenttweaker:evolution_craft/knife/wooden_knife>, [
	[<item:minecraft:air>, <tag:items:minecraft:planks>, <item:minecraft:air>],
	[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

if (packModeSetting.packModeSettingKnife() == true) {

	Globals.packExpertScript("Knife - Active");

	craftingTable.removeByName("aquaculturedelight:neptunium_knife");
	craftingTable.addShaped("pack_expert_crafting_knife/neptunium_knife", <item:aquaculturedelight:neptunium_knife>, [
		[<item:minecraft:air>, <item:aquaculture:neptunium_ingot>, <item:minecraft:air>],
		[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);

	craftingTable.removeByName("croptopia:knife");
	craftingTable.addShaped("pack_expert_crafting_knife/knife", <item:croptopia:knife>, [
		[<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
		[<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
		[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
	]);

	craftingTable.removeByName("ends_delight:purpur_knife");
	craftingTable.addShaped("pack_expert_crafting_knife/purpur_knife", <item:ends_delight:purpur_knife>, [
		[<item:minecraft:air>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:air>],
		[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);

	craftingTable.removeByName("ends_delight:end_stone_knife");
	craftingTable.addShaped("pack_expert_crafting_knife/end_stone_knife", <item:ends_delight:end_stone_knife>, [
		[<item:minecraft:air>, <item:minecraft:end_stone>, <item:minecraft:air>],
		[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);

	craftingTable.removeByName("ends_delight:dragon_egg_knife");
	smithing.addRecipe("pack_expert_crafting_knife/dragon_egg_shell_knife", <item:ends_delight:dragon_egg_shell_knife>, <item:farmersdelight:netherite_knife>, <item:ends_delight:dragon_egg_shell>);

	craftingTable.removeByName("ends_delight:dragon_tooth_knife");
	smithing.addRecipe("pack_expert_crafting_knife/dragon_tooth_knife", <item:ends_delight:dragon_tooth_knife>, <item:farmersdelight:netherite_knife>, <item:ends_delight:dragon_tooth>);

	smithing.removeByName("famersdelight:adamantite_knife_smithing");
	smithing.addRecipe("pack_expert_crafting_knife/adamantite_knife", <item:enlightened_end:adamantite_knife>, <item:farmersdelight:netherite_knife>, <item:enlightened_end:adamantite_ingot>);
}

Globals.endScript("pack_mod_expert_recipe_knife");