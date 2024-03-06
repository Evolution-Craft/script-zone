/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Chainmail Armor Crafting Recipe.
 * v0.2 : Add Wooden Armor Tags, Stone Armor and Leather Armor Crafting.
 */
 
println("Start script pack_mod_expert_recipe_armor.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

val pack_mode_armor_enable = true;

var logsWoodenArmor = [
	"oak",
	"birch",
	"jungle",
	"acacia",
	"dark_oak",
	"spruce",
	"warped",
	"crimson"
];
for logWoodenArmorName in logsWoodenArmor {
	<tag:items:woodarmor:wooden_armor>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
	<tag:items:woodarmor:wooden_armor>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
	<tag:items:woodarmor:wooden_armor>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
	<tag:items:woodarmor:wooden_armor>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
	<tag:items:woodarmor:wooden_armor/helmet>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
	<tag:items:woodarmor:wooden_armor/chestplate>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
	<tag:items:woodarmor:wooden_armor/leggings>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
	<tag:items:woodarmor:wooden_armor/boots>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
	if (logWoodenArmorName == "oak") {
		<tag:items:woodarmor:wooden_armor_oak>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_oak>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_oak>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_oak>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
		<tag:items:woodarmor:wooden_armor_oak/helmet>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_oak/chestplate>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_oak/leggings>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_oak/boots>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
	} else if (logWoodenArmorName == "birch") {
		<tag:items:woodarmor:wooden_armor_birch>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_birch>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_birch>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_birch>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
		<tag:items:woodarmor:wooden_armor_birch/helmet>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_birch/chestplate>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_birch/leggings>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_birch/boots>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
	} else if (logWoodenArmorName == "jungle") {
		<tag:items:woodarmor:wooden_armor_jungle>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_jungle>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_jungle>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_jungle>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
		<tag:items:woodarmor:wooden_armor_jungle/helmet>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_jungle/chestplate>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_jungle/leggings>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_jungle/boots>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
	} else if (logWoodenArmorName == "acacia") {
		<tag:items:woodarmor:wooden_armor_acacia>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_acacia>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_acacia>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_acacia>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
		<tag:items:woodarmor:wooden_armor_acacia/helmet>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_acacia/chestplate>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_acacia/leggings>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_acacia/boots>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
	} else if (logWoodenArmorName == "dark_oak") {
		<tag:items:woodarmor:wooden_armor_dark_oak>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_dark_oak>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_dark_oak>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_dark_oak>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
		<tag:items:woodarmor:wooden_armor_dark_oak/helmet>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_dark_oak/chestplate>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_dark_oak/leggings>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_dark_oak/boots>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
	} else if (logWoodenArmorName == "spruce") {
		<tag:items:woodarmor:wooden_armor_spruce>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_spruce>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_spruce>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_spruce>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
		<tag:items:woodarmor:wooden_armor_spruce/helmet>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_spruce/chestplate>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_spruce/leggings>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_spruce/boots>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
	} else if (logWoodenArmorName == "warped") {
		<tag:items:woodarmor:wooden_armor_warped>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_warped>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_warped>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_warped>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
		<tag:items:woodarmor:wooden_armor_warped/helmet>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_warped/chestplate>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_warped/leggings>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_warped/boots>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
	} else {
		<tag:items:woodarmor:wooden_armor_crimson>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_crimson>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_crimson>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_crimson>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
		<tag:items:woodarmor:wooden_armor_crimson/helmet>.add(<item:woodarmor:${logWoodenArmorName}_helmet>);
		<tag:items:woodarmor:wooden_armor_crimson/chestplate>.add(<item:woodarmor:${logWoodenArmorName}_chestplate>);
		<tag:items:woodarmor:wooden_armor_crimson/leggings>.add(<item:woodarmor:${logWoodenArmorName}_leggings>);
		<tag:items:woodarmor:wooden_armor_crimson/boots>.add(<item:woodarmor:${logWoodenArmorName}_boots>);
	}
}

var shapedArmorVarFunction as function(usualOut as IItemStack, inputs as IItemStack[][]) as IItemStack = (usualOut as IItemStack, inputs as IItemStack[][]) => {
	var oldDamage = inputs[1][1].damage;
	if oldDamage < 0 {
		oldDamage = 0;
	}
	return usualOut.withDamage(oldDamage);
};

if (pack_mode_armor_enable == true) {
	craftingTable.removeByName("woodarmor:stone_helm_recipe");
	craftingTable.addShaped("pack_expert_crafting_armor/stone_helmet", <item:woodarmor:stone_helmet>, [
		[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
		[<item:minecraft:cobblestone>, <tag:items:woodarmor:wooden_armor/helmet>.asIIngredient().anyDamage(), <item:minecraft:cobblestone>],
		[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]
	], shapedArmorVarFunction);
	craftingTable.removeByName("woodarmor:stone_chest_recipe");
	craftingTable.addShaped("pack_expert_crafting_armor/stone_chestplate", <item:woodarmor:stone_chestplate>, [
		[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
		[<item:minecraft:cobblestone>, <tag:items:woodarmor:wooden_armor/chestplate>.asIIngredient().anyDamage(), <item:minecraft:cobblestone>],
		[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]
	], shapedArmorVarFunction);
		craftingTable.removeByName("woodarmor:stone_leggs_recipe");
	craftingTable.addShaped("pack_expert_crafting_armor/stone_leggings", <item:woodarmor:stone_leggings>, [
		[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
		[<item:minecraft:cobblestone>, <tag:items:woodarmor:wooden_armor/leggings>.asIIngredient().anyDamage(), <item:minecraft:cobblestone>],
		[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]
	], shapedArmorVarFunction);
		craftingTable.removeByName("woodarmor:stone_boots_recipe");
	craftingTable.addShaped("pack_expert_crafting_armor/stone_boots", <item:woodarmor:stone_boots>, [
		[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
		[<item:minecraft:cobblestone>, <tag:items:woodarmor:wooden_armor/boots>.asIIngredient().anyDamage(), <item:minecraft:cobblestone>],
		[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]
	], shapedArmorVarFunction);
	craftingTable.removeByName("minecraft:leather_helmet");
	craftingTable.addShaped("pack_expert_crafting_armor/leather_helmet", <item:minecraft:leather_helmet>, [
		[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
		[<item:minecraft:leather>, <item:woodarmor:stone_helmet>.anyDamage(), <item:minecraft:leather>],
		[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
	], shapedArmorVarFunction);
	craftingTable.removeByName("minecraft:leather_chestplate");
	craftingTable.addShaped("pack_expert_crafting_armor/leather_chestplate", <item:minecraft:leather_chestplate>, [
		[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
		[<item:minecraft:leather>, <item:woodarmor:stone_chestplate>.anyDamage(), <item:minecraft:leather>],
		[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
	], shapedArmorVarFunction);
		craftingTable.removeByName("minecraft:leather_leggings");
	craftingTable.addShaped("pack_expert_crafting_armor/leather_leggings", <item:minecraft:leather_leggings>, [
		[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
		[<item:minecraft:leather>, <item:woodarmor:stone_leggings>.anyDamage(), <item:minecraft:leather>],
		[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
	], shapedArmorVarFunction);
		craftingTable.removeByName("minecraft:leather_boots");
	craftingTable.addShaped("pack_expert_crafting_armor/leather_boots", <item:minecraft:leather_boots>, [
		[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>],
		[<item:minecraft:leather>, <item:woodarmor:stone_boots>.anyDamage(), <item:minecraft:leather>],
		[<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
	], shapedArmorVarFunction);


	craftingTable.addShaped("minecraft_chainmail_helmet", <item:minecraft:chainmail_helmet>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
	]);
	craftingTable.addShaped("minecraft_chainmail_chestplate", <item:minecraft:chainmail_chestplate>, [
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>]
	]);
	craftingTable.addShaped("minecraft_chainmail_leggings", <item:minecraft:chainmail_leggings>, [
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
	]);
	craftingTable.addShaped("minecraft_chainmail_boots", <item:minecraft:chainmail_boots>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
	]);
}

println("End script pack_mod_expert_recipe_armor.");