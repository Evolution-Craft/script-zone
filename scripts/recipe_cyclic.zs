/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_cyclic");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.addShaped("cyclic_breaker", <item:cyclic:breaker>, [
	[<item:minecraft:tripwire_hook>, <tag:items:forge:nuggets/copper>, <item:minecraft:tripwire_hook>],
	[<item:exlinecopperequipment:copper_shovel>, <item:minecraft:dispenser>, <item:exlinecopperequipment:copper_pick>],
	[<item:minecraft:mossy_cobblestone_slab>, <item:minecraft:mossy_cobblestone_slab>, <item:minecraft:mossy_cobblestone_slab>]
]);
craftingTable.addShaped("cyclic_copper_chain", <item:cyclic:copper_chain>, [
	[<item:minecraft:air>, <tag:items:forge:nuggets/copper>, <item:minecraft:air>],
	[<item:minecraft:air>, <tag:items:forge:ingots/copper>, <item:minecraft:air>],
	[<item:minecraft:air>, <tag:items:forge:nuggets/copper>, <item:minecraft:air>]
]);
craftingTable.addShaped("cyclic_gold_chain", <item:cyclic:gold_chain>, [
	[<item:minecraft:air>, <tag:items:forge:nuggets/gold>, <item:minecraft:air>],
	[<item:minecraft:air>, <tag:items:forge:ingots/gold>, <item:minecraft:air>],
	[<item:minecraft:air>, <tag:items:forge:nuggets/gold>, <item:minecraft:air>]
]);
craftingTable.addShaped("cyclic_rotation_wand", <item:cyclic:rotation_wand>, [
	[<item:minecraft:air>, <item:vinery:loam>, <item:minecraft:stone_hoe>],
	[<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:vinery:loam>],
	[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("cyclic_spikes_curse", <item:cyclic:spikes_curse> * 2, [
	[<item:minecraft:fermented_spider_eye>, <item:minecraft:fermented_spider_eye>, <item:minecraft:fermented_spider_eye>],
	[<item:minecraft:fermented_spider_eye>, <item:cyclic:spikes_diamond>, <item:minecraft:fermented_spider_eye>],
	[<item:minecraft:fermented_spider_eye>, <item:minecraft:fermented_spider_eye>, <item:minecraft:fermented_spider_eye>]
]);
craftingTable.addShaped("cyclic_spikes_diamond", <item:cyclic:spikes_diamond> * 2, [
	[<item:minecraft:air>, <item:thermal:diamond_gear>, <item:minecraft:air>],
	[<item:thermal:diamond_gear>, <item:minecraft:repeater>, <item:thermal:diamond_gear>],
	[<tag:items:forge:storage_blocks/diamond>, <item:miniutilities:diamond_spikes>, <tag:items:forge:storage_blocks/diamond>]
]);
craftingTable.addShaped("cyclic_spikes_fire", <item:cyclic:spikes_fire> * 2, [
	[<item:cyclic:fireball>, <item:cyclic:fireball>, <item:cyclic:fireball>],
	[<item:cyclic:fireball>, <item:cyclic:spikes_diamond>, <item:cyclic:fireball>],
	[<item:cyclic:fireball>, <item:cyclic:fireball>, <item:cyclic:fireball>]
]);
craftingTable.addShaped("cyclic_spikes_iron", <item:cyclic:spikes_iron> * 2, [
	[<item:minecraft:air>, <item:minecraft:iron_bars>, <item:minecraft:air>],
	[<item:minecraft:iron_bars>, <item:minecraft:repeater>, <item:minecraft:iron_bars>],
	[<tag:items:forge:storage_blocks/iron>, <item:miniutilities:iron_spikes>, <tag:items:forge:storage_blocks/iron>]
]);

// Crusher
<recipetype:cyclic:crusher>.addRecipe("cyclic_crusher/chest", <tag:items:forge:chests/wooden>, <item:minecraft:stick> * 16, 20, 100);

// Solidifier
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/apple_chocolate_one", [<item:minecraft:air>, <item:cyclic:apple_honey>, <item:minecraft:air>], <fluid:create:chocolate> * 180, <item:cyclic:apple_chocolate>, 100, 120);
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/apple_chocolate_three", [<item:cyclic:apple_honey>, <item:cyclic:apple_honey>, <item:cyclic:apple_honey>], <fluid:create:chocolate> * 540, <item:cyclic:apple_chocolate> * 3, 2000, 80);
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/apple_chorus", [<item:minecraft:chorus_flower>, <item:cyclic:apple_chocolate>, <item:salt:salt>], <fluid:enlightened_end:ooze_fluid> * 1000, <item:cyclic:apple_chorus>, 100, 120);
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/apple_iron_one", [<item:minecraft:air>, <item:cyclic:apple_honey>, <item:minecraft:air>], <fluid:tconstruct:molten_iron> * 180, <item:cyclic:apple_iron>, 100, 120);
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/apple_iron_three", [<item:cyclic:apple_honey>, <item:cyclic:apple_honey>, <item:cyclic:apple_honey>], <fluid:tconstruct:molten_iron> * 540, <item:cyclic:apple_iron> * 3, 2000, 80);
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/apple_lapis", [<item:minecraft:lapis_lazuli>, <item:cyclic:apple_honey>, <item:minecraft:lapis_lazuli>], "forge:experience", 1000, <item:cyclic:apple_lapis>, 100, 120);
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/apple_sprout_diamond", [<item:minecraft:air>, <item:cyclic:apple_chorus>, <item:minecraft:air>], <fluid:tconstruct:molten_diamond> * 1000, <item:cyclic:apple_sprout_diamond> * 2, 100, 120);
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/apple_sprout_emerald", [<item:minecraft:air>, <item:cyclic:apple_chorus>, <item:minecraft:air>], <fluid:tconstruct:molten_emerald> * 1000, <item:cyclic:apple_sprout_emerald> * 2, 100, 120);
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/fireball", [<item:minecraft:fire_charge>, <item:minecraft:gunpowder>, <item:minecraft:air>], <fluid:cyclic:wax> * 200, <item:cyclic:fireball>, 100, 120);
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/solidifier_apple_enchanted", [<item:cyclic:apple_diamond>, <item:minecraft:netherite_ingot>, <item:cyclic:apple_emerald>], <fluid:tconstruct:molten_queens_slime> * 1000, <item:minecraft:enchanted_golden_apple>, 5500, 200);
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/solidifier_honeyhive", [<tag:items:forge:chests/wooden>, <item:minecraft:honeycomb>, <item:minecraft:stick>], "forge:honey", 100, <item:minecraft:beehive> * 3, 100, 100);
<recipetype:cyclic:solidifier>.addRecipe("cyclic_solidifier/wax_hive", [<item:minecraft:air>, <tag:items:forge:chests/wooden>, <item:minecraft:air>], "forge:wax", 1000, <item:minecraft:beehive>, 2000, 80);

Globals.endScript("recipe_cyclic");