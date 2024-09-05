/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Recipe rework.
 */

Globals.startScript("recipe_croptopia");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Shapeless
craftingTable.removeByName("croptopia:paprika");
craftingTable.addShapeless("croptopia/paprika", <item:croptopia:paprika>, [<item:croptopia:chile_pepper>, <item:croptopia:mortar_and_pestle>.anyDamage().transformDamage()]);
craftingTable.addShapeless("croptopia/tuna_sandwich", <item:croptopia:tuna_sandwich>, [<tag:items:forge:bread>, <item:croptopia:cooked_tuna>]);

// Shaped
craftingTable.removeByName("croptopia:apple_juice");
craftingTable.addShaped("croptopia/apple_juice", <item:croptopia:apple_juice>, [
	[<tag:items:forge:apples>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:apple_pie");
craftingTable.addShaped("croptopia/apple_pie", <item:croptopia:apple_pie>, [
	[<tag:items:forge:apples>, <item:minecraft:sugar>, <tag:items:forge:eggs>],
	[<tag:items:forge:flour>, <tag:items:forge:doughs>, <item:croptopia:frying_pan>.anyDamage().transformDamage()],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:apricot_jam");
craftingTable.addShaped("croptopia/apricot_jam", <item:croptopia:apricot_jam>, [
	[<tag:items:forge:apricots>, <item:minecraft:sugar>, <item:minecraft:air>],
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:banana_cream_pie");
craftingTable.addShaped("croptopia/banana_cream_pie", <item:croptopia:banana_cream_pie>, [
	[<tag:items:forge:bananas>, <tag:items:forge:vanilla>, <item:minecraft:sugar>],
	[<tag:items:forge:eggs>, <tag:items:evolution_craft:milk>, <item:croptopia:frying_pan>.anyDamage().transformDamage()],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:baked_crepes");
craftingTable.addShaped("croptopia/baked_crepes", <item:croptopia:baked_crepes>, [
	[<tag:items:forge:eggs>, <tag:items:forge:flour>, <tag:items:forge:eggs>],
	[<tag:items:evolution_craft:milk>, <tag:items:forge:spinach>, <tag:items:forge:cheeses>],
	[<item:minecraft:air>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:blackberry_jam");
craftingTable.addShaped("croptopia/blackberry_jam", <item:croptopia:blackberry_jam>, [
	[<tag:items:forge:blackberries>, <item:minecraft:sugar>, <item:minecraft:air>],
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:blt");
craftingTable.addShaped("croptopia/blt", <item:croptopia:blt>, [
	[<tag:items:forge:bread>, <item:croptopia:cooked_bacon>, <item:minecraft:air>],
	[<tag:items:forge:lettuce>, <tag:items:forge:tomatoes>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:banana_smoothie");
craftingTable.addShaped("croptopia/banana_smoothie", <item:croptopia:banana_smoothie>, [
	[<tag:items:forge:fruits/banana>, <item:simplytea:ice_cube>, <item:minecraft:air>],
	[<tag:items:evolution_craft:milk>, <item:minecraft:glass_bottle>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:beetroot_salad");
craftingTable.addShaped("croptopia/beetroot_salad", <item:croptopia:beetroot_salad>, [
	[<item:minecraft:beetroot>, <item:minecraft:beetroot>, <item:minecraft:beetroot>],
	[<item:croptopia:lettuce>, <tag:items:forge:cheeses>, <tag:items:forge:lemons>],
	[<item:minecraft:air>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:borscht");
craftingTable.addShaped("croptopia/borscht", <item:croptopia:borscht> * 2, [
	[<item:minecraft:carrot>, <tag:items:forge:potatoes>, <item:minecraft:beetroot>],
	[<tag:items:forge:onions>, <tag:items:forge:tomatoes>, <item:croptopia:water_bottle>],
	[<tag:items:forge:cabbage>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <tag:items:forge:garlic>]
]);

craftingTable.removeByName("croptopia:butter");
craftingTable.addShaped("croptopia/butter", <item:croptopia:butter>, [
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<tag:items:evolution_craft:milk>, <tag:items:forge:salts>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:cherry_jam");
craftingTable.addShaped("croptopia/cherry_jam", <item:croptopia:cherry_jam>, [
	[<tag:items:forge:cherries>, <item:minecraft:sugar>, <item:minecraft:air>],
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:cherry_pie");
craftingTable.addShaped("croptopia/cherry_pie", <item:croptopia:cherry_pie>, [
	[<tag:items:forge:cherries>, <item:minecraft:sugar>, <tag:items:forge:eggs>],
	[<tag:items:forge:flour>, <tag:items:forge:doughs>, <item:croptopia:frying_pan>.anyDamage().transformDamage()],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:cheese");
craftingTable.addShaped("croptopia/cheese", <item:croptopia:cheese>, [
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <tag:items:evolution_craft:milk>, <item:minecraft:air>],
	[<tag:items:forge:salts>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:chicken_and_noodles");
craftingTable.addShaped("croptopia/chicken_and_noodles", <item:croptopia:chicken_and_noodles>, [
	[<item:croptopia:noodle>, <item:croptopia:chile_pepper>, <item:croptopia:olive_oil>],
	[<item:minecraft:chicken>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:chili_relleno");
craftingTable.addShaped("croptopia/chili_relleno", <item:croptopia:chili_relleno>, [
	[<tag:items:forge:eggs>, <item:croptopia:chile_pepper>, <item:croptopia:olive_oil>],
	[<tag:items:forge:flour>, <tag:items:forge:salts>, <item:croptopia:cooking_pot>.anyDamage().transformDamage()],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:chimichanga");
craftingTable.addShaped("croptopia/chimichanga", <item:croptopia:chimichanga>, [
	[<item:croptopia:burrito>, <tag:items:forge:flour>, <item:minecraft:air>],
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:chocolate");
craftingTable.addShaped("croptopia/chocolate", <item:croptopia:chocolate> * 4, [
	[<item:minecraft:cocoa_beans>, <tag:items:forge:butters>, <item:minecraft:air>],
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:cinnamon_roll");
craftingTable.addShaped("croptopia/cinnamon_roll", <item:croptopia:cinnamon_roll> * 3, [
	[<tag:items:evolution_craft:milk>, <tag:items:forge:doughs>, <tag:items:forge:eggs>],
	[<tag:items:forge:butters>, <tag:items:forge:salts>, <item:minecraft:sugar>],
	[<tag:items:forge:cinnamon>, <item:croptopia:whipping_cream>, <item:croptopia:frying_pan>.anyDamage().transformDamage()]
]);

craftingTable.removeByName("croptopia:cranberry_juice");
craftingTable.addShaped("croptopia/cranberry_juice", <item:croptopia:cranberry_juice>, [
	[<tag:items:forge:cranberries>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:croque_monsieur");
craftingTable.addShaped("croptopia/croque_monsieur", <item:croptopia:croque_monsieur>, [
	[<item:minecraft:air>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:bread>, <tag:items:forge:flour>],
	[<tag:items:croptopia:pork_replacements>, <tag:items:forge:cheeses>, <tag:items:forge:butters>]
]);

craftingTable.removeByName("croptopia:croque_madame");
craftingTable.addShaped("croptopia/croque_madame", <item:croptopia:croque_madame>, [
	[<item:minecraft:air>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<tag:items:forge:eggs>, <item:minecraft:bread>, <tag:items:forge:flour>],
	[<tag:items:croptopia:pork_replacements>, <tag:items:forge:cheeses>, <tag:items:forge:butters>]
]);

craftingTable.removeByName("croptopia:coffee");
craftingTable.addShaped("croptopia/coffee", <item:croptopia:coffee>, [
	[<tag:items:forge:coffee_beans>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:dough");
craftingTable.addShaped("croptopia/dough", <item:croptopia:dough>, [
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:croptopia:water_bottle>, <item:minecraft:air>],
	[<tag:items:forge:flour>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:grape_juice");
craftingTable.addShaped("croptopia/grape_juice", <item:croptopia:grape_juice>, [
	[<tag:items:forge:fruits/grape>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:french_fries");
craftingTable.addShaped("croptopia/french_fries", <item:croptopia:french_fries>, [
	[<tag:items:forge:potatoes>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<tag:items:forge:salts>, <item:croptopia:olive_oil>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShaped("croptopia/fried_frog_legs", <item:croptopia:fried_frog_legs>, [
	[<tag:items:forge:frog_legs>, <tag:items:forge:flour>, <item:minecraft:air>],
	[<item:croptopia:olive_oil>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:ground_pork");
craftingTable.addShaped("croptopia/ground_pork", <item:croptopia:ground_pork>, [
	[<item:minecraft:air>, <item:minecraft:porkchop>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:hashed_brown");
craftingTable.addShaped("croptopia/hashed_brown", <item:croptopia:hashed_brown> * 4, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<tag:items:forge:potatoes>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:croptopia:olive_oil>],
	[<item:minecraft:air>, <item:croptopia:knife>.anyDamage().transformDamage(), <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:hamburger");
craftingTable.addShaped("croptopia/hamburger", <item:croptopia:hamburger>, [
	[<tag:items:forge:bread>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:beef>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:lemonade");
craftingTable.addShaped("croptopia/lemonade", <item:croptopia:lemonade>, [
	[<tag:items:forge:lemons>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:limeade");
craftingTable.addShaped("croptopia/limeade", <item:croptopia:limeade>, [
	[<tag:items:forge:lemons>, <tag:items:forge:limes>, <item:minecraft:air>],
	[<item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:glass_bottle>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:macaron");
craftingTable.addShaped("croptopia/macaron", <item:croptopia:macaron> * 2, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<tag:items:forge:eggs>, <item:minecraft:sugar>, <item:minecraft:sugar>],
	[<tag:items:forge:almonds>, <item:croptopia:food_press>.anyDamage().transformDamage(), <tag:items:forge:almonds>]
]);

craftingTable.removeByName("croptopia:mango_ice_cream");
craftingTable.addShaped("croptopia/mango_ice_cream", <item:croptopia:mango_ice_cream>, [
	[<tag:items:forge:mangos>, <item:minecraft:sugar>, <tag:items:forge:eggs>],
	[<tag:items:evolution_craft:milk>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:simplytea:ice_cube>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:mashed_potatoes");
craftingTable.addShaped("croptopia/mashed_potatoes", <item:croptopia:mashed_potatoes>, [
	[<tag:items:forge:potatoes>, <item:minecraft:air>, <item:minecraft:air>],
	[<tag:items:forge:salts>, <tag:items:evolution_craft:milk>, <item:minecraft:air>],
	[<item:croptopia:mortar_and_pestle>.anyDamage().transformDamage(), <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:melon_juice");
craftingTable.addShaped("croptopia/melon_juice", <item:croptopia:melon_juice>, [
	[<tag:items:forge:melons>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:meringue");
craftingTable.addShaped("croptopia/meringue", <item:croptopia:meringue> * 2, [
	[<tag:items:forge:salts>, <tag:items:forge:vanilla>, <item:minecraft:sugar>],
	[<tag:items:forge:eggs>, <tag:items:forge:eggs>, <tag:items:forge:eggs>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:noodle");
craftingTable.addShaped("croptopia/noodle", <item:croptopia:noodle>, [
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:croptopia:water_bottle>, <item:minecraft:air>],
	[<tag:items:forge:salts>, <tag:items:forge:flour>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:olive_oil");
craftingTable.addShaped("croptopia/olive_oil", <item:croptopia:olive_oil>, [
	[<item:croptopia:olive>, <item:croptopia:olive>, <item:minecraft:air>],
	[<item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:glass_bottle>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:orange_juice");
craftingTable.addShaped("croptopia/orange_juice", <item:croptopia:orange_juice>, [
	[<tag:items:forge:oranges>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:onion_rings");
craftingTable.addShaped("croptopia/onion_rings", <item:croptopia:onion_rings>, [
	[<tag:items:forge:onions>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <tag:items:forge:salts>],
	[<item:croptopia:olive_oil>, <tag:items:forge:flour>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:peach_jam");
craftingTable.addShaped("croptopia/peach_jam", <item:croptopia:peach_jam>, [
	[<tag:items:forge:peaches>, <item:minecraft:sugar>, <item:minecraft:air>],
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:pecan_ice_cream");
craftingTable.addShaped("croptopia/pecan_ice_cream", <item:croptopia:pecan_ice_cream>, [
	[<tag:items:forge:pecans>, <item:minecraft:sugar>, <tag:items:forge:eggs>],
	[<tag:items:evolution_craft:milk>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:simplytea:ice_cube>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:pineapple_juice");
craftingTable.addShaped("croptopia/pineapple_juice", <item:croptopia:pineapple_juice>, [
	[<tag:items:forge:pineapples>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:pumpkin_bars");
craftingTable.addShaped("croptopia/pumpkin_bars", <item:croptopia:pumpkin_bars> * 3, [
	[<tag:items:forge:cinnamon>, <tag:items:forge:vanilla>, <tag:items:forge:salts>],
	[<tag:items:forge:eggs>, <item:minecraft:sugar>, <tag:items:forge:flour>],
	[<item:minecraft:pumpkin>, <tag:items:forge:butters>, <item:minecraft:pumpkin>]
]);

craftingTable.removeByName("croptopia:quiche");
craftingTable.addShaped("croptopia/quiche", <item:croptopia:quiche>, [
	[<item:minecraft:air>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<tag:items:evolution_craft:milk>, <tag:items:forge:eggs>, <tag:items:forge:spinach>],
	[<tag:items:forge:flour>, <item:minecraft:air>, <tag:items:forge:onions>]
]);

craftingTable.removeByName("croptopia:raspberry_jam");
craftingTable.addShaped("croptopia/raspberry_jam", <item:croptopia:raspberry_jam>, [
	[<tag:items:forge:raspberries>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:rum_raisin_ice_cream");
craftingTable.addShaped("croptopia/rum_raisin_ice_cream", <item:croptopia:rum_raisin_ice_cream>, [
	[<item:minecraft:sugar>, <item:croptopia:raisins>, <item:croptopia:rum>],
	[<tag:items:evolution_craft:milk>, <tag:items:forge:eggs>, <item:croptopia:cooking_pot>],
	[<item:minecraft:air>, <item:simplytea:ice_cube>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:saguaro_juice");
craftingTable.addShaped("croptopia/saguaro_juice", <item:croptopia:saguaro_juice>, [
	[<tag:items:forge:saguaros>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_bacon");
craftingTable.addShaped("croptopia/bacon", <item:croptopia:bacon>, [
	[<item:minecraft:air>, <item:minecraft:porkchop>, <item:minecraft:air>],
	[<item:croptopia:knife>.anyDamage().transformDamage(), <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_beef_wellington");
craftingTable.addShaped("croptopia/beef_wellington", <item:croptopia:beef_wellington>, [
	[<tag:items:forge:flour>, <tag:items:forge:onions>, <item:minecraft:air>],
	[<tag:items:forge:mustard>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:croptopia:pepper>],
	[<tag:items:forge:eggs>, <item:minecraft:beef>, <item:minecraft:brown_mushroom>]
]);

craftingTable.removeByName("croptopia:shaped_chocolate_ice_cream");
craftingTable.addShaped("croptopia/chocolate_ice_cream", <item:croptopia:chocolate_ice_cream>, [
	[<item:minecraft:air>, <tag:items:forge:eggs>, <item:simplytea:ice_cube>],
	[<tag:items:evolution_craft:milk>, <item:croptopia:chocolate>, <item:minecraft:sugar>],
	[<item:minecraft:air>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_eggplant_parmesan");
craftingTable.addShaped("croptopia/eggplant_parmesan", <item:croptopia:eggplant_parmesan>, [
	[<tag:items:forge:basil>, <tag:items:forge:eggs>, <item:minecraft:air>],
	[<item:croptopia:olive_oil>, <tag:items:forge:eggplants>, <item:croptopia:pepper>],
	[<item:minecraft:air>, <tag:items:forge:cheeses>, <item:minecraft:bread>]
]);

craftingTable.removeByName("croptopia:shaped_eton_mess");
craftingTable.addShaped("croptopia/eton_mess", <item:croptopia:eton_mess>, [
	[<tag:items:forge:strawberries>, <item:croptopia:whipping_cream>, <tag:items:forge:strawberries>],
	[<tag:items:forge:eggs>, <item:minecraft:sugar>, <tag:items:forge:eggs>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_figgy_pudding");
craftingTable.addShaped("croptopia/figgy_pudding", <item:croptopia:figgy_pudding>, [
	[<tag:items:forge:dates>, <tag:items:forge:figs>, <item:minecraft:sugar>],
	[<tag:items:forge:eggs>, <item:croptopia:water_bottle>, <item:croptopia:whipping_cream>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_fish_and_chips");
craftingTable.addShaped("croptopia/fish_and_chips", <item:croptopia:fish_and_chips>, [
	[<item:minecraft:air>, <tag:items:forge:flour>, <item:minecraft:air>],
	[<tag:items:forge:salts>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:croptopia:pepper>],
	[<tag:items:alexsmobs:shoebill_foodstuffs>, <tag:items:forge:potatoes>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_fruit_cake");
craftingTable.addShaped("croptopia/fruit_cake", <item:croptopia:fruit_cake> * 3, [
	[<tag:items:forge:salts>, <tag:items:forge:fruits>, <item:minecraft:air>],
	[<tag:items:forge:lemons>, <item:minecraft:sugar>, <tag:items:forge:pecans>],
	[<tag:items:forge:eggs>, <tag:items:forge:cinnamon>, <tag:items:forge:nutmegs>]
]);

craftingTable.removeByName("croptopia:shaped_lemon_coconut_bar");
craftingTable.addShaped("croptopia/lemon_coconut_bar", <item:croptopia:lemon_coconut_bar> * 2, [
	[<item:minecraft:sugar>, <tag:items:forge:lemons>, <tag:items:forge:eggs>],
	[<tag:items:forge:butters>, <tag:items:forge:coconuts>, <tag:items:forge:flour>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_milk_bottle");
craftingTable.addShaped("croptopia/milk_bottle", <item:croptopia:milk_bottle> * 3, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:glass>, <item:minecraft:milk_bucket>, <item:minecraft:glass>],
	[<item:minecraft:air>, <item:minecraft:glass>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_peanut_butter");
craftingTable.addShaped("croptopia/peanut_butter", <item:croptopia:peanut_butter>, [
	[<tag:items:forge:peanuts>, <tag:items:forge:peanuts>, <item:minecraft:air>],
	[<item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:glass_bottle>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_scones");
craftingTable.addShaped("croptopia/scones", <item:croptopia:scones> * 2, [
	[<tag:items:forge:eggs>, <tag:items:forge:vanilla>, <tag:items:forge:blueberries>],
	[<tag:items:forge:flour>, <tag:items:forge:salts>, <item:minecraft:sugar>],
	[<item:minecraft:air>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_sticky_toffee_pudding");
craftingTable.addShaped("croptopia/sticky_toffee_pudding", <item:croptopia:sticky_toffee_pudding>, [
	[<tag:items:forge:dates>, <item:minecraft:air>, <tag:items:forge:salts>],
	[<item:croptopia:whipping_cream>, <item:minecraft:sugar>, <tag:items:forge:butters>],
	[<tag:items:forge:eggs>, <item:croptopia:water_bottle>, <tag:items:forge:vanilla>]
]);

craftingTable.removeByName("croptopia:shaped_stuffed_artichoke");
craftingTable.addShaped("croptopia/stuffed_artichoke", <item:croptopia:stuffed_artichoke>, [
	[<tag:items:forge:bread>, <tag:items:forge:cheeses>, <item:croptopia:olive_oil>],
	[<tag:items:forge:artichokes>, <item:croptopia:pepper>, <tag:items:forge:lemons>],
	[<tag:items:forge:salts>, <item:minecraft:air>, <item:croptopia:frying_pan>.anyDamage().transformDamage()]
]);

craftingTable.removeByName("croptopia:shaped_toast_sandwich");
craftingTable.addShaped("croptopia/toast_sandwich", <item:croptopia:toast_sandwich> * 2, [
	[<tag:items:forge:bread>, <item:croptopia:buttered_toast>, <tag:items:forge:bread>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_treacle_tart");
craftingTable.addShaped("croptopia/treacle_tart", <item:croptopia:treacle_tart> * 3, [
	[<item:minecraft:honey_bottle>, <tag:items:forge:lemons>, <item:croptopia:whipping_cream>],
	[<tag:items:forge:bread>, <tag:items:forge:bread>, <tag:items:forge:bread>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:shaped_trifle");
craftingTable.addShaped("croptopia/trifle", <item:croptopia:trifle>, [
	[<item:minecraft:air>, <tag:items:forge:strawberries>, <item:minecraft:air>],
	[<item:minecraft:bread>, <tag:items:forge:wines>, <tag:items:forge:butters>],
	[<tag:items:forge:eggs>, <tag:items:evolution_craft:milk>, <tag:items:forge:vanilla>]
]);

craftingTable.removeByName("croptopia:shaped_water_bottle");
craftingTable.addShaped("croptopia/water_bottle", <item:croptopia:water_bottle> * 3, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:glass>, <item:minecraft:water_bucket>, <item:minecraft:glass>],
	[<item:minecraft:air>, <item:minecraft:glass>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:soy_sauce");
craftingTable.addShaped("croptopia/soy_sauce", <item:croptopia:soy_sauce>, [
	[<item:croptopia:soybean>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:croptopia:water_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:soy_milk");
craftingTable.addShaped("croptopia/soy_milk", <item:croptopia:soy_milk>, [
	[<tag:items:forge:soybeans>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:steamed_crab");
craftingTable.addShaped("croptopia/steamed_crab", <item:croptopia:steamed_crab>, [
	[<item:minecraft:air>, <tag:items:forge:crabs>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:croptopia:water_bottle>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:steamed_rice");
craftingTable.addShaped("croptopia/steamed_rice", <item:croptopia:steamed_rice>, [
	[<tag:items:forge:rice>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<tag:items:forge:salts>, <item:croptopia:water_bottle>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:strawberry_ice_cream");
craftingTable.addShaped("croptopia/strawberry_ice_cream", <item:croptopia:strawberry_ice_cream>, [
	[<tag:items:forge:strawberries>, <item:minecraft:sugar>, <tag:items:forge:eggs>],
	[<tag:items:evolution_craft:milk>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:simplytea:ice_cube>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:strawberry_smoothie");
craftingTable.addShaped("croptopia/strawberry_smoothie", <item:croptopia:strawberry_smoothie>, [
	[<tag:items:forge:strawberries>, <item:simplytea:ice_cube>, <item:minecraft:air>],
	[<tag:items:evolution_craft:milk>, <item:minecraft:glass_bottle>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:strawberry_jam");
craftingTable.addShaped("croptopia/strawberry_jam", <item:croptopia:strawberry_jam>, [
	[<tag:items:forge:strawberries>, <item:minecraft:sugar>, <item:minecraft:air>],
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:stuffed_poblanos");
craftingTable.addShaped("croptopia/stuffed_poblanos", <item:croptopia:stuffed_poblanos>, [
	[<item:minecraft:beef>, <item:croptopia:chile_pepper>, <item:croptopia:blackbean>],
	[<tag:items:forge:corn>, <tag:items:forge:cheeses>, <tag:items:forge:rice>],
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:sunny_side_eggs");
craftingTable.addShaped("croptopia/sunny_side_eggs", <item:croptopia:sunny_side_eggs> * 2, [
	[<tag:items:forge:eggs>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <tag:items:forge:eggs>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:sweet_potato_fries");
craftingTable.addShaped("croptopia/sweet_potato_fries", <item:croptopia:sweet_potato_fries>, [
	[<item:croptopia:sweetpotato>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<tag:items:forge:salts>, <item:croptopia:olive_oil>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:sweet_crepes");
craftingTable.addShaped("croptopia/sweet_crepes", <item:croptopia:sweet_crepes>, [
	[<tag:items:forge:flour>, <tag:items:forge:eggs>, <tag:items:evolution_craft:milk>],
	[<tag:items:forge:jams>, <item:minecraft:air>, <item:minecraft:sugar>],
	[<item:minecraft:air>, <item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:tamales");
craftingTable.addShaped("croptopia/tamales", <item:croptopia:tamales>, [
	[<item:minecraft:chicken>, <tag:items:forge:onions>, <item:croptopia:corn_husk>],
	[<tag:items:forge:flour>, <tag:items:forge:salts>, <item:croptopia:chile_pepper>],
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:the_big_breakfast");
craftingTable.addShaped("croptopia/the_big_breakfast", <item:croptopia:the_big_breakfast>, [
	[<tag:items:forge:eggs>, <item:croptopia:bacon>, <item:croptopia:hashed_brown>],
	[<item:croptopia:frying_pan>.anyDamage().transformDamage(), <item:croptopia:hashed_brown>, <item:croptopia:toast>],
	[<item:minecraft:air>, <item:croptopia:baked_beans>, <tag:items:forge:sausages>]
]);

craftingTable.removeByName("croptopia:tomato_juice");
craftingTable.addShaped("croptopia/tomato_juice", <item:croptopia:tomato_juice>, [
	[<tag:items:forge:tomatoes>, <item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:glass_bottle>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:tofu_and_dumplings");
craftingTable.addShaped("croptopia/tofu_and_dumplings", <item:croptopia:tofu_and_dumplings>, [
	[<tag:items:forge:doughs>, <item:croptopia:chile_pepper>, <item:minecraft:air>],
	[<item:croptopia:tofu>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:tofu");
craftingTable.addShaped("croptopia/tofu", <item:croptopia:tofu>, [
	[<item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:croptopia:water_bottle>, <item:minecraft:air>],
	[<item:croptopia:soybean>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:tres_leche_cake");
craftingTable.addShaped("croptopia/tres_leche_cake", <item:croptopia:tres_leche_cake> * 2, [
	[<tag:items:forge:eggs>, <item:minecraft:sugar>, <tag:items:evolution_craft:milk>],
	[<tag:items:forge:flour>, <tag:items:forge:vanilla>, <item:croptopia:rum>],
	[<item:croptopia:whipping_cream>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:vanilla_ice_cream");
craftingTable.addShaped("croptopia/vanilla_ice_cream", <item:croptopia:vanilla_ice_cream>, [
	[<item:croptopia:vanilla>, <item:minecraft:sugar>, <tag:items:forge:eggs>],
	[<tag:items:evolution_craft:milk>, <item:croptopia:cooking_pot>.anyDamage().transformDamage(), <item:simplytea:ice_cube>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.removeByName("croptopia:wine");
craftingTable.addShaped("croptopia/wine", <item:croptopia:wine>, [
	[<tag:items:forge:fruits/grape>, <tag:items:forge:fruits/grape>, <item:minecraft:air>],
	[<item:croptopia:food_press>.anyDamage().transformDamage(), <item:minecraft:glass_bottle>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

Globals.endScript("recipe_croptopia");