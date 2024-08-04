/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Chainmail Armor Crafting Recipe.
 * v0.2 : Add Wooden Armor Tags, Stone Armor and Leather Armor Crafting.
 */

Globals.startScript("pack_mod_expert_recipe_armor");
Globals.priorityScript("Null");

if (packModeSetting.packModeSettingArmors() == true) {
	Globals.packExpertScript("Armor - Active");
}

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.tag.manager.ITagManager;

var shapedArmorVarFunction as function(usualOut as IItemStack, inputs as IItemStack[][]) as IItemStack = (usualOut as IItemStack, inputs as IItemStack[][]) => {
	var oldDamage = inputs[1][1].damage;
	if oldDamage < 0 {
		oldDamage = 0;
	}
	return usualOut.withDamage(oldDamage);
};

if (packModeSetting.packModeSettingArmors() == true) {
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

	craftingTable.removeByName("tconstruct:armor/building/travelers_goggles");
	craftingTable.removeByName("tconstruct:armor/building/travelers_chestplate");
	craftingTable.removeByName("tconstruct:armor/building/travelers_pants");
	craftingTable.removeByName("tconstruct:armor/building/travelers_boots");
	var armorTravelersCastTconstructAdd = {
		"leather_helmet" : "travelers_helmet",
		"leather_chestplate" : "travelers_chestplate",
		"leather_leggings" : "travelers_leggings",
		"leather_boots" : "travelers_boots"
	};
	for armorTravelersCastTconstructAddCast, armorTravelersCastTconstructAddResult in armorTravelersCastTconstructAdd {
		<recipetype:tconstruct:casting_table>.addJsonRecipe("pack_expert_crafting_armor/tconstruct_casting_table/" + armorTravelersCastTconstructAddResult, {
			"cast": {
				"item": "minecraft:" + armorTravelersCastTconstructAddCast
			},
			"cast_consumed": true,
			"fluid": {
				"tag": "forge:molten_copper",
				"amount": 540
			},
			"result": {
				"item": "tconstruct:" + armorTravelersCastTconstructAddResult
			},
			"cooling_time": 160
		});
	}

	smithing.removeByName("galosphere:sterling_helmet_smithing");
	craftingTable.addShaped("pack_expert_crafting_armor/silver_helmet", <item:galosphere:sterling_helmet>, [
		[<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>],
		[<tag:items:forge:ingots/silver>, <item:minecraft:leather_helmet>.anyDamage(), <tag:items:forge:ingots/silver>],
		[<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>]
	], shapedArmorVarFunction);

	smithing.removeByName("galosphere:sterling_chestplate_smithing");
	craftingTable.addShaped("pack_expert_crafting_armor/silver_chestplate", <item:galosphere:sterling_chestplate>, [
		[<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>],
		[<tag:items:forge:ingots/silver>, <item:minecraft:leather_chestplate>.anyDamage(), <tag:items:forge:ingots/silver>],
		[<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>]
	], shapedArmorVarFunction);

	smithing.removeByName("galosphere:sterling_leggings_smithing");
	craftingTable.addShaped("pack_expert_crafting_armor/silver_leggings", <item:galosphere:sterling_leggings>, [
		[<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>],
		[<tag:items:forge:ingots/silver>, <item:minecraft:leather_leggings>.anyDamage(), <tag:items:forge:ingots/silver>],
		[<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>]
	], shapedArmorVarFunction);

	smithing.removeByName("galosphere:sterling_boots_smithing");
	craftingTable.addShaped("pack_expert_crafting_armor/silver_boots", <item:galosphere:sterling_boots>, [
		[<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>],
		[<tag:items:forge:ingots/silver>, <item:minecraft:leather_boots>.anyDamage(), <tag:items:forge:ingots/silver>],
		[<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>]
	], shapedArmorVarFunction);

	craftingTable.removeByName("exlinecopperequipment:copper_helmet_recipe");
	craftingTable.removeByName("exlinecopperequipment:copper_chestplate_recipe");
	craftingTable.removeByName("exlinecopperequipment:copper_leggings_recipe");
	craftingTable.removeByName("exlinecopperequipment:copper_boots_recipe");
	var armorCastTconstructAdd = {
		"sterling_helmet" : "copper_helmet",
		"sterling_chestplate" : "copper_chestplate",
		"sterling_leggings" : "copper_leggings",
		"sterling_boots" : "copper_boots"
	};
	for armorCastTconstructAddCast, armorCastTconstructAddResult in armorCastTconstructAdd {
		<recipetype:tconstruct:casting_table>.addJsonRecipe("pack_expert_crafting_armor/tconstruct_casting_table/" + armorCastTconstructAddResult, {
			"cast": {
				"item": "galosphere:" + armorCastTconstructAddCast
			},
			"cast_consumed": true,
			"fluid": {
				"tag": "forge:molten_copper",
				"amount": 810
			},
			"result": {
				"item": "exlinecopperequipment:" + armorCastTconstructAddResult
			},
			"cooling_time": 240
		});
	}

	craftingTable.removeByName("create:crafting/appliances/copper_diving_helmet");
	craftingTable.addShaped("pack_expert_crafting_armor/copper_diving_helmet", <item:create:copper_diving_helmet>, [
		[<tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>],
		[<tag:items:forge:ingots/copper>, <item:exlinecopperequipment:copper_helmet>.anyDamage(), <tag:items:forge:ingots/copper>],
		[<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>]
	], shapedArmorVarFunction);

	craftingTable.removeByName("create:crafting/appliances/copper_diving_boots");
	craftingTable.addShaped("pack_expert_crafting_armor/copper_diving_boots", <item:create:copper_diving_boots>, [
		[<tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>],
		[<tag:items:forge:ingots/copper>, <item:exlinecopperequipment:copper_boots>.anyDamage(), <tag:items:forge:ingots/copper>],
		[<item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:create:andesite_alloy>]
	], shapedArmorVarFunction);

	craftingTable.removeByName("mekanismtools:lapis_lazuli/armor/helmet");
	craftingTable.addShaped("pack_expert_crafting_armor/lapis_lazuli_helmet", <item:mekanismtools:lapis_lazuli_helmet>, [
		[<item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>],
		[<item:contenttweaker:thermal/lapis_plate>, <item:exlinecopperequipment:copper_helmet>.anyDamage(), <item:contenttweaker:thermal/lapis_plate>],
		[<item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>]
	], shapedArmorVarFunction);

	craftingTable.removeByName("mekanismtools:lapis_lazuli/armor/chestplate");
	craftingTable.addShaped("pack_expert_crafting_armor/lapis_lazuli_chestplate", <item:mekanismtools:lapis_lazuli_chestplate>, [
		[<item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>],
		[<item:contenttweaker:thermal/lapis_plate>, <item:exlinecopperequipment:copper_chestplate>.anyDamage(), <item:contenttweaker:thermal/lapis_plate>],
		[<item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>]
	], shapedArmorVarFunction);

	craftingTable.removeByName("mekanismtools:lapis_lazuli/armor/leggings");
	craftingTable.addShaped("pack_expert_crafting_armor/lapis_lazuli_leggings", <item:mekanismtools:lapis_lazuli_leggings>, [
		[<item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>],
		[<item:contenttweaker:thermal/lapis_plate>, <item:exlinecopperequipment:copper_leggings>.anyDamage(), <item:contenttweaker:thermal/lapis_plate>],
		[<item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>]
	], shapedArmorVarFunction);

	craftingTable.removeByName("mekanismtools:lapis_lazuli/armor/boots");
	craftingTable.addShaped("pack_expert_crafting_armor/lapis_lazuli_boots", <item:mekanismtools:lapis_lazuli_boots>, [
		[<item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>],
		[<item:contenttweaker:thermal/lapis_plate>, <item:exlinecopperequipment:copper_boots>.anyDamage(), <item:contenttweaker:thermal/lapis_plate>],
		[<item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>, <item:contenttweaker:thermal/lapis_plate>]
	], shapedArmorVarFunction);

/********************************************************************************************************************************/

	craftingTable.removeByName("minecraft:chainmail_helmet");
	craftingTable.addShaped("pack_expert_crafting_armor/chainmail_helmet", <item:minecraft:chainmail_helmet>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
	]);
	craftingTable.removeByName("minecraft:chainmail_chestplate");
	craftingTable.addShaped("pack_expert_crafting_armor/chainmail_chestplate", <item:minecraft:chainmail_chestplate>, [
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>]
	]);
	craftingTable.removeByName("minecraft:chainmail_leggings");
	craftingTable.addShaped("pack_expert_crafting_armor/chainmail_leggings", <item:minecraft:chainmail_leggings>, [
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
	]);
	craftingTable.removeByName("minecraft:chainmail_boots");
	craftingTable.addShaped("pack_expert_crafting_armor/chainmail_boots", <item:minecraft:chainmail_boots>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
	]);
}

Globals.endScript("pack_mod_expert_recipe_armor");