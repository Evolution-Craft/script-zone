/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Isseu.
 */

Globals.startScript("recipe_custom_item");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.BlastFurnaceRecipeManager;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.addShaped("evolution_craft_lapis_iron_compound", <item:contenttweaker:lapis_iron_compound>, [
	[<tag:items:forge:dusts/lapis>, <tag:items:forge:dusts/lapis>, <tag:items:forge:dusts/lapis>],
	[<tag:items:forge:dusts/lapis>, <tag:items:forge:ingots/iron>, <tag:items:forge:dusts/lapis>],
	[<tag:items:forge:dusts/lapis>, <tag:items:forge:dusts/lapis>, <tag:items:forge:dusts/lapis>]
]);
craftingTable.addShaped("evolution_craft_redstone_iron_compound", <item:contenttweaker:redstone_iron_compound>, [
	[<tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>],
	[<tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>],
	[<tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>]
]);
craftingTable.addShaped("evolution_craft_copper_knife", <item:contenttweaker:knife/copper_knife>, [
	[<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("evolution_craft_steel_knife", <item:contenttweaker:knife/steel_knife>, [
	[<item:minecraft:air>, <item:thermal:steel_ingot>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

// Blast Furnace
blastFurnace.addRecipe("evolution_craft_lapis_ingot_alloy", <item:contenttweaker:lapis_ingot_alloy>, <item:contenttweaker:lapis_iron_compound>, 10, 200);
blastFurnace.addRecipe("evolution_craft_redstone_ingot_alloy", <item:contenttweaker:redstone_ingot_alloy>, <item:contenttweaker:redstone_iron_compound>, 10, 200);

Globals.endScript("recipe_custom_item");