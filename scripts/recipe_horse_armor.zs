/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Created armor crafting sequence for horse not present in Vanilla.
 * v0.2 : Adding Wood and Stone horse armor.
 * v0.3 : Adding missing Tags.
 * v0.4 : Fix crafting using anyDamage.
 * v0.5 : Compatting code.
 * v0.6 : Adding function "shapedHorseArmorVarFunction" for trasport armor damage.
 * v0.7 : Adding Galospehere horse armor.
 * v0.8 : Adding maxDamage for all armor.
 */

println("Start script recipe_horse_armor.");
println("Script Priority Null.");

import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.tag.manager.ITagManager;

var TypeWoodenArmorHorse = [
	"oak_horse_armor",
	"birch_horse_armor",
	"jungle_horse_armor",
	"acacia_horse_armor",
	"bigoak_horse_armor",
	"spruce_horse_armor"
];
for propeties_woodarmorhorse in TypeWoodenArmorHorse{
	<item:woodarmorhorse:${propeties_woodarmorhorse}>.maxDamage = 300;
}
<item:woodarmorhorse:crimson_horse_armor>.maxDamage = 300;
<item:woodarmorhorse:warped_horse_armor>.maxDamage = 300;
<item:woodarmorhorse:stone_horse_armor>.maxDamage = 300;
<item:minecraft:leather_horse_armor>.maxDamage = 150;
<item:galosphere:sterling_horse_armor>.maxDamage = 360;
<item:minecraft:iron_horse_armor>.maxDamage = 450;
<item:minecraft:golden_horse_armor>.maxDamage = 210;
<item:minecraft:diamond_horse_armor>.maxDamage = 990;
<item:nha:netherite_horse_armor>.maxDamage = 1100;

var shapedHorseArmorVarFunction as function(usualOut as IItemStack, inputs as IItemStack[][]) as IItemStack = (usualOut as IItemStack, inputs as IItemStack[][]) => {

	var oldDamage = inputs[1][1].damage;
	if oldDamage < 0 {
		oldDamage = 0;
	}
	return usualOut.withDamage(oldDamage);
	//TODO: decidere se craftare con durabilità al 50%
};

craftingTable.removeByModid("woodarmorhorse");
var logsHO = {
	"oak" : "oak",
	"birch" : "birch",
	"jungle" : "jungle",
	"acacia" : "acacia",
	"dark_oak" : "bigoak",
	"spruce" : "spruce"
};
for logId, logName in logsHO {
	craftingTable.addShaped(logName + "_horse_armor", <item:woodarmorhorse:${logName}_horse_armor>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:woodarmor:${logId}_helmet>],
		[<item:minecraft:${logId}_planks>, <item:minecraft:${logId}_log>, <item:minecraft:${logId}_planks>],
		[<item:woodarmor:${logId}_leggings>, <item:minecraft:air>, <item:woodarmor:${logId}_leggings>]
	]);
}

var logsHN = {
	"warped" : "warped",
	"crimson" : "crimson"
};
for logId, logName in logsHN {
	craftingTable.addShaped(logName + "_horse_armor", <item:woodarmorhorse:${logName}_horse_armor>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:woodarmor:${logId}_helmet>],
		[<item:minecraft:${logId}_planks>, <item:minecraft:${logId}_stem>, <item:minecraft:${logId}_planks>],
		[<item:woodarmor:${logId}_leggings>, <item:minecraft:air>, <item:woodarmor:${logId}_leggings>]
	]);
}

var addingWoodenArmorHorse = [
	"oak_horse_armor",
	"birch_horse_armor",
	"warped_horse_armor",
	"jungle_horse_armor",
	"acacia_horse_armor",
	"bigoak_horse_armor",
	"spruce_horse_armor",
	"crimson_horse_armor"
];
for tag_woodarmorhorse in addingWoodenArmorHorse{
	<tag:items:woodarmorhorse:wooden_horse_armor>.add(<item:woodarmorhorse:${tag_woodarmorhorse}>);
}
craftingTable.addShaped("stone_horse_armor", <item:woodarmorhorse:stone_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:woodarmor:stone_helmet>],
	[<item:minecraft:cobblestone>, <tag:items:woodarmorhorse:wooden_horse_armor>.asIIngredient().anyDamage(), <item:minecraft:cobblestone>],
	[<item:woodarmor:stone_leggings>, <item:minecraft:air>, <item:woodarmor:stone_leggings>]
], shapedHorseArmorVarFunction);

craftingTable.removeByName("minecraft:leather_horse_armor");
craftingTable.addShaped("leather_horse_armor", <item:minecraft:leather_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:leather_helmet>],
	[<item:minecraft:leather>, <item:woodarmorhorse:stone_horse_armor>.anyDamage(), <item:minecraft:leather>],
	[<item:minecraft:leather_leggings>, <item:minecraft:air>, <item:minecraft:leather_leggings>]
], shapedHorseArmorVarFunction);

smithing.removeByName("galosphere:sterling_horse_armor_smithing");
craftingTable.addShaped("sterling_horse_armor", <item:galosphere:sterling_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:galosphere:sterling_helmet>],
	[<tag:items:forge:ingots/silver>, <item:minecraft:leather_horse_armor>.anyDamage(), <tag:items:forge:ingots/silver>],
	[<item:galosphere:sterling_leggings>, <item:minecraft:air>, <item:galosphere:sterling_leggings>]
], shapedHorseArmorVarFunction);

craftingTable.addShaped("iron_horse_armor", <item:minecraft:iron_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:iron_helmet>],
	[<item:minecraft:iron_ingot>, <item:galosphere:sterling_horse_armor>.anyDamage(), <item:minecraft:iron_ingot>],
	[<item:minecraft:iron_leggings>, <item:minecraft:air>, <item:minecraft:iron_leggings>]
], shapedHorseArmorVarFunction);

craftingTable.addShaped("golden_horse_armor", <item:minecraft:golden_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:golden_helmet>],
	[<item:minecraft:gold_ingot>, <item:minecraft:iron_horse_armor>.anyDamage(), <item:minecraft:gold_ingot>],
	[<item:minecraft:golden_leggings>, <item:minecraft:air>, <item:minecraft:golden_leggings>]
], shapedHorseArmorVarFunction);

craftingTable.addShaped("diamond_horse_armor", <item:minecraft:diamond_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:diamond_helmet>],
	[<item:minecraft:diamond>, <item:minecraft:golden_horse_armor>.anyDamage(), <item:minecraft:diamond>],
	[<item:minecraft:diamond_leggings>, <item:minecraft:air>, <item:minecraft:diamond_leggings>]
], shapedHorseArmorVarFunction);

println("End script recipe_horse_armor.");