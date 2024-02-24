/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Cooking Pot.
 * v0.2 : Add Vinery Mod Support.
 */

println("Start script recipe_farmers_delight.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Cooking Pot
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_applesauce", <item:vinery:applesauce>, [<item:minecraft:apple>, <item:minecraft:sugar> * 2], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:minecraft:bowl>, 100, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_apple_jam", <item:vinery:apple_jam>, [<item:minecraft:apple>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 100, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_cherry_jam", <item:vinery:cherry_jam>, [<item:vinery:cherry>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 100, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_grape_jam", <item:vinery:grape_jam>, [<tag:items:forge:crops/grape>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 100, 400);
<recipetype:farmersdelight:cooking>.addRecipe("cooking_pot_vinery_sweetberry_jam", <item:vinery:sweetberry_jam>, [<item:minecraft:sweet_berries>, <item:minecraft:sugar> * 3], <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, <item:vinery:cherry_jar>, 100, 400);

// Cutting Board
<recipetype:farmersdelight:cutting>.addRecipe("vinery_cutting_board_cake_slice", <item:vinery:apple_pie>, [<item:vinery:apple_pie_slice> * 4], <tag:items:farmersdelight:tools/knives>, "minecraft:block.wool.break");

// Shaped
craftingTable.removeByName("farmersdelight:cooking_pot");
craftingTable.addShaped("farmersdelight_delight_cooking_pot", <item:farmersdelight:cooking_pot>, [
	[<item:minecraft:brick>, <item:minecraft:iron_shovel>, <item:minecraft:brick>],
	[<item:minecraft:iron_ingot>, <item:minecraft:water_bucket>, <item:minecraft:iron_ingot>],
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);

println("End script recipe_farmers_delight.");