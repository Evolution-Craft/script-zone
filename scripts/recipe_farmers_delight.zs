/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_farmers_delight");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

val rbDrinks = <constant:farmersdelight:cooking_pot_recipe_book_tab:drinks>;
val rbMeals = <constant:farmersdelight:cooking_pot_recipe_book_tab:meals>;
val rbMisc = <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>;

// Shapeless
craftingTable.addShapeless("farmersdelight_delight/tconstruct/blood_cake", <item:tconstruct:blood_cake>, [<item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>, <item:contenttweaker:tconstruct/delight/blood_cake_slice>]);
craftingTable.addShapeless("farmersdelight_delight/tconstruct/earth_cake", <item:tconstruct:earth_cake>, [<item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice>]);
craftingTable.addShapeless("farmersdelight_delight/tconstruct/ender_cake", <item:tconstruct:ender_cake>, [<item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice>]);
craftingTable.addShapeless("farmersdelight_delight/tconstruct/magma_cake", <item:tconstruct:magma_cake>, [<item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>, <item:contenttweaker:tconstruct/delight/magma_cake_slice>]);
craftingTable.addShapeless("farmersdelight_delight/tconstruct/sky_cake", <item:tconstruct:sky_cake>, [<item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice>]);
craftingTable.addShapeless("farmersdelight_delight/tconstruct/skyslime_sweets", <item:contenttweaker:tconstruct/delight/skyslime_sweets>, [<item:tconstruct:sky_slime_ball>, <item:minecraft:sugar>]);

// Shaped
craftingTable.addShaped("farmersdelight_delight/cooking_pot", <item:farmersdelight:cooking_pot>, [
	[<item:minecraft:brick>, <item:minecraft:iron_shovel>, <item:minecraft:brick>],
	[<item:minecraft:iron_ingot>, <item:minecraft:water_bucket>, <item:minecraft:iron_ingot>],
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("farmersdelight_delight/melon_popsicle", <item:farmersdelight:melon_popsicle>, [
	[<item:minecraft:air>, <tag:items:forge:melons>, <tag:items:forge:melons>],
	[<item:simplytea:ice_cube>, <tag:items:forge:melons>, <tag:items:forge:melons>],
	[<tag:items:forge:rods/wooden>, <item:simplytea:ice_cube>, <item:minecraft:air>]
]);
craftingTable.addShaped("farmersdelight_delight/tconstruct/delight/ichor_salad", <item:contenttweaker:tconstruct/delight/ichor_salad>, [
	[<item:tconstruct:blazing_bone>, <item:tconstruct:ichor_slime_ball>, <item:minecraft:air>],
	[<item:farmersdelight:cooked_mutton_chops>, <item:minecraft:bowl>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("farmersdelight_delight/tmted/wheat_dough_from_egg", <item:farmersdelight:wheat_dough>, [
	[<tag:items:forge:eggs>, <tag:items:forge:flour>, <item:minecraft:air>],
	[<tag:items:forge:flour>, <tag:items:forge:flour>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("farmersdelight_delight/tmted/wheat_dough_from_water_bucket", <item:farmersdelight:wheat_dough>, [
	[<item:minecraft:water_bucket>, <tag:items:forge:flour>, <item:minecraft:air>],
	[<tag:items:forge:flour>, <tag:items:forge:flour>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

// Cooking Pot
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/corn_delight/cornbread_stuffing", <item:corn_delight:cornbread_stuffing>, [<item:corn_delight:cornbread>, <tag:items:forge:vegetables>, <item:minecraft:baked_potato>, <tag:items:forge:berries>], rbMisc, <item:minecraft:air>, 0.5, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/apricot_jam", <item:croptopia:apricot_jam>, [<tag:items:forge:apricots>, <item:minecraft:sugar>], rbMisc, <item:vinery:cherry_jar>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/beetroot_salad", <item:croptopia:beetroot_salad>, [<item:minecraft:beetroot>, <item:minecraft:beetroot>, <item:minecraft:beetroot>, <tag:items:forge:lemons>, <tag:items:forge:cheeses>,  <tag:items:forge:lettuce>], rbMeals, <item:minecraft:bowl>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/blackberry_jam", <item:croptopia:blackberry_jam>, [<tag:items:forge:blackberries>, <item:minecraft:sugar>], rbMisc, <item:vinery:cherry_jar>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/blueberry_jam", <item:croptopia:blueberry_jam>, [<tag:items:forge:blueberries>, <item:minecraft:sugar>], rbMisc, <item:vinery:cherry_jar>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/borscht", <item:croptopia:borscht>, [<tag:items:forge:tomato_sauces>, <item:minecraft:beetroot>, <tag:items:forge:potatoes>, <item:minecraft:carrot>, <tag:items:forge:cabbage>, <item:croptopia:water_bottle>], rbMisc, <item:minecraft:bowl>, 5, 160);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/butter", <item:croptopia:butter>, [<tag:items:evolution_craft:milk>, <tag:items:forge:salts>], rbMisc, <item:minecraft:air>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/cheese", <item:croptopia:cheese>, [<tag:items:evolution_craft:milk>, <tag:items:evolution_craft:milk>], rbMisc, <item:minecraft:air>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/cherry_jam", <item:croptopia:cherry_jam>, [<tag:items:forge:berries>, <item:minecraft:sugar>], rbMisc, <item:vinery:cherry_jar>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/chicken_and_dumplings", <item:croptopia:chicken_and_dumplings>, [<tag:items:forge:dough>, <tag:items:forge:chile_peppers>, <item:minecraft:chicken>], rbMeals, <item:minecraft:bowl>, 2, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/chicken_and_noodles", <item:croptopia:chicken_and_noodles>, [<item:minecraft:chicken>, <item:croptopia:olive_oil>, <tag:items:forge:chile_peppers>, <tag:items:forge:noodles>], rbMeals, <item:minecraft:bowl>, 2, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/chili_relleno", <item:croptopia:chili_relleno>, [<tag:items:forge:chile_peppers>, <tag:items:forge:flour>, <tag:items:forge:eggs>, <tag:items:forge:salts>, <item:croptopia:olive_oil>], rbMeals, <item:minecraft:air>, 2, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/chimichanga", <item:croptopia:chimichanga>, [<item:croptopia:burrito>, <tag:items:forge:flour>], rbMisc, <item:minecraft:air>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/chocolate", <item:croptopia:chocolate>, [<item:minecraft:cocoa_beans>, <item:croptopia:butter>], rbMisc, <item:minecraft:air>, 1, 260);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/chocolate_ice_cream", <item:croptopia:chocolate_ice_cream>, [<item:croptopia:chocolate>, <tag:items:evolution_craft:milk>, <item:minecraft:sugar>, <tag:items:forge:eggs>, <item:simplytea:ice_cube>], rbMisc, <item:minecraft:bowl>, 4, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/dough", <item:croptopia:dough>, [<item:croptopia:water_bottle>, <tag:items:forge:flour>], rbMisc, <item:minecraft:air>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/elderberry_jam", <item:croptopia:elderberry_jam>, [<tag:items:forge:elderberries>, <item:minecraft:sugar>], rbMisc, <item:vinery:cherry_jar>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/french_fries", <item:croptopia:french_fries>, [<item:croptopia:olive_oil>, <tag:items:forge:salts>, <tag:items:forge:potatoes>], rbMisc, <item:minecraft:air>, 2, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/grape_jam", <item:croptopia:grape_jam>, [<tag:items:forge:crops/grape>, <item:minecraft:sugar>], rbMisc, <item:vinery:cherry_jar>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/lemon_chicken", <item:croptopia:lemon_chicken>, [<tag:items:forge:lemons>, <tag:items:forge:chile_peppers>, <tag:items:forge:tomatoes>, <item:minecraft:chicken>], rbMeals, <item:minecraft:air>, 2, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/mango_ice_cream", <item:croptopia:mango_ice_cream>, [<tag:items:forge:mangos>, <tag:items:evolution_craft:milk>, <item:minecraft:sugar>, <tag:items:forge:eggs>, <item:simplytea:ice_cube>], rbMisc, <item:minecraft:bowl>, 4, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/onion_rings", <item:croptopia:onion_rings>, [<tag:items:forge:flour>, <item:croptopia:olive_oil>, <tag:items:forge:onions>, <tag:items:forge:salts>], rbMisc, <item:minecraft:bowl>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/peach_jam", <item:croptopia:peach_jam>, [<tag:items:forge:peaches>, <item:minecraft:sugar>], rbMisc, <item:vinery:cherry_jar>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/pecan_ice_cream", <item:croptopia:pecan_ice_cream>, [<tag:items:forge:pecans>, <tag:items:evolution_craft:milk>, <item:minecraft:sugar>, <tag:items:forge:eggs>, <item:simplytea:ice_cube>], rbMisc, <item:minecraft:bowl>, 4, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/pumpkin_soup", <item:croptopia:pumpkin_soup>, [<item:farmersdelight:pumpkin_slice>, <tag:items:forge:garlic>, <item:croptopia:pepper>, <tag:items:forge:onions>, <tag:items:forge:salts>], rbMisc, <item:minecraft:bowl>, 3, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/raspberry_jam", <item:croptopia:raspberry_jam>, [<tag:items:forge:raspberries>, <item:minecraft:sugar>], rbMisc, <item:vinery:cherry_jar>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/rum_raisin_ice_cream", <item:croptopia:rum_raisin_ice_cream>, [<item:croptopia:rum>, <item:croptopia:raisins>, <tag:items:evolution_craft:milk>, <item:minecraft:sugar>, <tag:items:forge:eggs>, <item:simplytea:ice_cube>], rbMisc, <item:minecraft:bowl>, 4, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/steamed_crab", <item:croptopia:steamed_crab>, [<item:croptopia:water_bottle>, <tag:items:forge:crabs>], rbMisc, <item:minecraft:air>, 2, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/steamed_rice", <item:croptopia:steamed_rice>, [<tag:items:forge:salts>, <tag:items:forge:rice>, <item:croptopia:water_bottle>], rbMisc, <item:minecraft:bowl>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/strawberry_jam", <item:croptopia:strawberry_jam>, [<tag:items:forge:crops/strawberry>, <item:minecraft:sugar>], rbMisc, <item:vinery:cherry_jar>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/strawberry_ice_cream", <item:croptopia:strawberry_ice_cream>, [<tag:items:forge:strawberries>, <tag:items:evolution_craft:milk>, <item:minecraft:sugar>, <tag:items:forge:eggs>, <item:simplytea:ice_cube>], rbMisc, <item:minecraft:bowl>, 4, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/stuffed_poblanos", <item:croptopia:stuffed_poblanos>, [<tag:items:forge:cheeses>, <tag:items:forge:chile_peppers>, <tag:items:forge:corn>, <item:croptopia:blackbean>, <tag:items:forge:rice>, <tag:items:forge:raw_beef>], rbMeals, <item:minecraft:air>, 5, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/sweet_potato_fries", <item:croptopia:sweet_potato_fries>, [<item:croptopia:olive_oil>, <tag:items:forge:salts>, <item:croptopia:sweetpotato>], rbMisc, <item:minecraft:air>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/tamales", <item:croptopia:tamales>, [<tag:items:forge:onions>, <tag:items:forge:chile_peppers>, <tag:items:forge:flour>, <tag:items:forge:salts>, <item:croptopia:corn_husk>, <item:minecraft:chicken>], rbMeals, <item:minecraft:air>, 2, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/tofu", <item:croptopia:tofu>, [<item:croptopia:water_bottle>, <tag:items:forge:soybeans>], rbMisc, <item:minecraft:air>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/tofu_and_dumplings", <item:croptopia:tofu_and_dumplings>, [<tag:items:forge:doughs>, <tag:items:forge:chile_peppers>, <tag:items:forge:tofu>], rbMisc, <item:minecraft:bowl>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/vanilla_ice_cream", <item:croptopia:vanilla_ice_cream>, [<tag:items:forge:vanilla>, <tag:items:evolution_craft:milk>, <item:minecraft:sugar>, <tag:items:forge:eggs>, <item:simplytea:ice_cube>], rbMisc, <item:minecraft:bowl>, 4, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/croptopia/yam_jam", <item:croptopia:yam_jam>, [<tag:items:forge:yams>, <tag:items:forge:vanilla>, <tag:items:evolution_craft:milk>, <tag:items:evolution_craft:milk>], rbMisc, <item:vinery:cherry_jar>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/simplytea/cup_cocoa", <item:simplytea:cup_cocoa>, [<tag:items:evolution_craft:milk>, <item:minecraft:cocoa_beans>, <item:minecraft:cocoa_beans>], rbDrinks, <item:simplytea:cup>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/simplytea/cup_tea_black", <item:simplytea:cup_tea_black>, [<item:croptopia:water_bottle>, <item:simplytea:black_tea>, <item:simplytea:black_tea>], rbDrinks, <item:simplytea:cup>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/simplytea/cup_tea_chai", <item:simplytea:cup_tea_chai>, [<tag:items:evolution_craft:milk>, <item:simplytea:black_tea>, <item:simplytea:black_tea>, <tag:items:forge:cinnamon>], rbDrinks, <item:simplytea:cup>, 2, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/simplytea/cup_tea_chorus", <item:simplytea:cup_tea_chorus>, [<item:croptopia:water_bottle>, <tag:items:forge:crops/chorus_petal>, <tag:items:forge:crops/chorus_petal>], rbDrinks, <item:simplytea:cup>, 2, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/simplytea/cup_tea_floral", <item:simplytea:cup_tea_floral>, [<item:croptopia:water_bottle>, <item:minecraft:dandelion>, <item:minecraft:dandelion>], rbDrinks, <item:simplytea:cup>, 2, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/simplytea/cup_tea_green", <item:simplytea:cup_tea_green>, [<item:croptopia:water_bottle>, <tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>], rbDrinks, <item:simplytea:cup>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/simplytea/cup_tea_iced", <item:simplytea:cup_tea_iced>, [<item:croptopia:water_bottle>, <tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>, <item:simplytea:ice_cube>, <item:minecraft:apple>], rbDrinks, <item:simplytea:cup>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/tconstruct/crimson_broth", <item:contenttweaker:tconstruct/delight/crimson_broth>, [<item:tconstruct:bloodbone>, <tag:items:farmersdelight:blood_slime>, <item:minecraft:nether_wart>], rbMeals, <item:minecraft:bowl>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/tconstruct/enderslime_pudding", <item:contenttweaker:tconstruct/delight/enderslime_pudding>, [<item:tconstruct:ender_slime_ball>, <item:minecraft:chorus_fruit>, <item:minecraft:sugar>], rbMeals, <item:minecraft:air>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/tconstruct/tinkers_stew", <item:contenttweaker:tconstruct/delight/tinkers_stew>, [<item:farmersdelight:cooked_bacon>, <item:tconstruct:sky_slime_ball>, <item:tconstruct:blood_slime_sapling>, <tag:items:forge:vegetables>], rbMeals, <item:minecraft:bowl>, 1, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/thermal/hearty_stew", <item:thermal:hearty_stew>, [<tag:items:forge:crops/carrot>, <tag:items:forge:crops/potato>, <tag:items:forge:crops/barley>, <tag:items:forge:crops/onion>, <tag:items:forge:crops/radish>, <tag:items:forge:tomato_sauces>], rbMeals, <item:minecraft:bowl>, 3, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/thermal/jelly", <item:thermal:jelly>, [<tag:items:forge:crops/strawberry>, <tag:items:forge:crops/strawberry>, <tag:items:forge:crops/strawberry>, <tag:items:forge:crops/strawberry>, <tag:items:forge:crops/strawberry>, <tag:items:forge:crops/strawberry>], rbMeals, <item:thermal:jar>, 2, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/thermal/peanut_butter", <item:thermal:peanut_butter>, [<tag:items:forge:crops/peanut>, <tag:items:forge:crops/peanut>, <tag:items:forge:crops/peanut>, <tag:items:forge:crops/peanut>, <tag:items:forge:crops/peanut>, <tag:items:forge:crops/peanut>], rbMeals, <item:thermal:jar>, 2, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/thermal/stuffed_pepper", <item:thermal:stuffed_pepper>, [<tag:items:forge:crops/onion>, <tag:items:forge:crops/rice>, <tag:items:forge:foods/meat/raw>, <tag:items:forge:cheeses>], rbMeals, <item:thermal:bell_pepper>, 2, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/thermal/stuffed_pumpkin", <item:thermal:stuffed_pumpkin>, [<tag:items:forge:foods/meat/raw>, <tag:items:forge:crops/bell_pepper>, <tag:items:forge:crops/rice>, <tag:items:forge:crops/onion>, <tag:items:forge:tomato_sauces>], rbMeals, <item:minecraft:carved_pumpkin>, 2, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/thermal/tomato_sauce", <item:thermal:tomato_sauce>, [<tag:items:forge:tomatoes>, <tag:items:forge:tomatoes>, <tag:items:forge:tomatoes>, <tag:items:forge:tomatoes>, <tag:items:forge:tomatoes>, <tag:items:forge:tomatoes>], rbMeals, <item:thermal:jar>, 2, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/thermal/xp_stew", <item:thermal:xp_stew>, [<tag:items:forge:crops/barley>, <tag:items:forge:crops/barley>, <tag:items:forge:crops/eggplant>, <tag:items:forge:crops/spinach>, <tag:items:forge:crops/spinach>, <item:minecraft:experience_bottle>], rbMeals, <item:minecraft:bowl>, 3, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/twilightdelight/fried_insect", <item:twilightdelight:fried_insect>, [<item:twilightdelight:raw_insect>, <tag:items:forge:onions>, <item:minecraft:carrot>], rbMeals, <item:minecraft:bowl>, 0.35, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/twilightdelight/glacier_ice_tea", <item:twilightdelight:glacier_ice_tea>, [<item:twilightforest:ice_bomb>, <item:simplytea:ice_cube>, <item:twilightforest:arctic_fur>, <item:minecraft:sugar>], rbDrinks, <item:minecraft:glass_bottle>, 0.35, 200);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/twilightdelight/grilled_ghast", <item:twilightdelight:grilled_ghast>, [<tag:items:forge:tomatoes>, <item:minecraft:beetroot>, <item:twilightforest:fiery_tears>, <item:twilightforest:experiment_115>, <item:twilightforest:experiment_115>], rbMeals, <item:minecraft:bowl>, 0.35, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/vinery/applesauce", <item:vinery:applesauce>, [<item:minecraft:apple>, <item:minecraft:sugar> * 2], rbMisc, <item:minecraft:bowl>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/vinery/apple_jam", <item:vinery:apple_jam>, [<item:minecraft:apple>, <item:minecraft:sugar> * 3], rbMisc, <item:vinery:cherry_jar>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/vinery/cherry_jam", <item:vinery:cherry_jam>, [<item:vinery:cherry>, <item:minecraft:sugar> * 3], rbMisc, <item:vinery:cherry_jar>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/vinery/grape_jam", <item:vinery:grape_jam>, [<tag:items:forge:crops/grape>, <item:minecraft:sugar> * 3], rbMisc, <item:vinery:cherry_jar>, 1, 400);
<recipetype:farmersdelight:cooking>.addRecipe("farmersdelight_cooking_pot/vinery/sweetberry_jam", <item:vinery:sweetberry_jam>, [<item:minecraft:sweet_berries>, <item:minecraft:sugar> * 3], rbMisc, <item:vinery:cherry_jar>, 1, 400);

// Cutting Board
var addingSeedCuttingFarmersDelight = {
	"artichoke" : "croptopia:artichoke_seed",
	"asparagus" : "croptopia:asparagus_seed",
	"barley" : "croptopia:barley_seed",
	"basil" : "croptopia:basil_seed",
	"bellpepper" : "croptopia:bellpepper_seed",
	"blackbean" : "croptopia:blackbean_seed",
	"blackberry" : "croptopia:blackberry_seed",
	"blueberry" : "croptopia:blueberry_seed",
	"broccoli" : "croptopia:broccoli_seed",
	"cabbage" : "croptopia:cabbage_seed",
	"cantaloupe" : "croptopia:cantaloupe_seed",
	"cauliflower" : "croptopia:cauliflower_seed",
	"celery" : "croptopia:celery_seed",
	"chile_pepper" : "croptopia:chile_pepper_seed",
	"coffee" : "croptopia:coffee_seed",
	"corn" : "croptopia:corn_seed",
	"cranberry" : "croptopia:cranberry_seed",
	"cucumber" : "croptopia:cucumber_seed",
	"currant" : "croptopia:currant_seed",
	"eggplant" : "croptopia:eggplant_seed",
	"elderberry" : "croptopia:elderberry_seed",
	"garlic" : "croptopia:garlic_seed",
	"ginger" : "croptopia:ginger_seed",
	"grape" : "croptopia:grape_seed",
	"greenbean" : "croptopia:greenbean_seed",
	"greenonion" : "croptopia:greenonion_seed",
	"honeydew" : "croptopia:honeydew_seed",
	"hops" : "croptopia:hops_seed",
	"kale" : "croptopia:kale_seed",
	"kiwi" : "croptopia:kiwi_seed",
	"leek" : "croptopia:leek_seed",
	"lettuce" : "croptopia:lettuce_seed",
	"mustard" : "croptopia:mustard_seed",
	"oat" : "croptopia:oat_seed",
	"olive" : "croptopia:olive_seed",
	"onion" : "croptopia:onion_seed",
	"peanut" : "croptopia:peanut_seed",
	"pepper" : "croptopia:pepper_seed",
	"pineapple" : "croptopia:pineapple_seed",
	"radish" : "croptopia:radish_seed",
	"raspberry" : "croptopia:raspberry_seed",
	"rhubarb" : "croptopia:rhubarb_seed",
	"rice" : "croptopia:rice_seed",
	"rutabaga" : "croptopia:rutabaga_seed",
	"saguaro" : "croptopia:saguaro_seed",
	"soybean" : "croptopia:soybean_seed",
	"spinach" : "croptopia:spinach_seed",
	"squash" : "croptopia:squash_seed",
	"strawberry" : "croptopia:strawberry_seed",
	"sweetpotato" : "croptopia:sweetpotato_seed",
	"tea" : "croptopia:tea_seed",
	"tomatillo" : "croptopia:tomatillo_seed",
	"tomato" : "croptopia:tomato_seed",
	"turmeric" : "croptopia:turmeric_seed",
	"turnip" : "croptopia:turnip_seed",
	"vanilla" : "croptopia:vanilla_seeds",
	"yam" : "croptopia:yam_seed",
	"zucchini" : "croptopia:zucchini_seed"
};
for addingSeedCuttingFarmersDelightName, addingSeedCuttingFarmersDelightOut in addingSeedCuttingFarmersDelight {
	if (addingSeedCuttingFarmersDelightName == "barley" || addingSeedCuttingFarmersDelightName == "corn" || addingSeedCuttingFarmersDelightName == "oat") {
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/croptopia/" + addingSeedCuttingFarmersDelightName, {
			"ingredients": [{
				"item": "croptopia:" + addingSeedCuttingFarmersDelightName
			}],
			"tool": {
				"tag": "forge:tools/knives"
			},
			"result": [{
				"item": addingSeedCuttingFarmersDelightOut
			},
			{
				"item": addingSeedCuttingFarmersDelightOut,
				"chance": 0.5
			},
			{
				"item": "create:wheat_flour",
				"chance": 0.3
			}]
		});
	} else if (addingSeedCuttingFarmersDelightName == "chile_pepper") {
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/croptopia/" + addingSeedCuttingFarmersDelightName, {
			"ingredients": [{
				"item": "croptopia:" + addingSeedCuttingFarmersDelightName
			}],
			"tool": {
				"tag": "forge:tools/knives"
			},
			"result": [{
				"item": addingSeedCuttingFarmersDelightOut
			},
			{
				"item": addingSeedCuttingFarmersDelightOut,
				"chance": 0.5
			},
			{
				"item": "croptopia:paprika",
				"chance": 0.3
			}]
		});
	} else {
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/croptopia/" + addingSeedCuttingFarmersDelightName, {
			"ingredients": [{
				"item": "croptopia:" + addingSeedCuttingFarmersDelightName
			}],
			"tool": {
				"tag": "forge:tools/knives"
			},
			"result": [{
				"item": addingSeedCuttingFarmersDelightOut
			},
			{
				"item": addingSeedCuttingFarmersDelightOut,
				"chance": 0.5
			}]
		});
	}
}

var addingLogCuttingFarmersDelight = {
	"botania:dreamwood_log" : "botania:stripped_dreamwood_log",
	"botania:dreamwood" : "botania:stripped_dreamwood",
	"botania:glimmering_dreamwood_log" : "botania:glimmering_stripped_dreamwood_log",
	"botania:glimmering_dreamwood" : "botania:glimmering_stripped_dreamwood",
	"botania:glimmering_livingwood_log" : "botania:glimmering_stripped_livingwood_log",
	"botania:glimmering_livingwood" : "botania:glimmering_stripped_livingwood",
	"botania:livingwood_log" : "botania:stripped_livingwood_log",
	"botania:livingwood" : "botania:stripped_livingwood",
	"ecologics:azalea_log" : "ecologics:stripped_azalea_log",
	"ecologics:azalea_wood" : "ecologics:stripped_azalea_wood",
	"croptopia:cinnamon_log" : "croptopia:stripped_cinnamon_log",
	"croptopia:cinnamon_wood" : "croptopia:stripped_cinnamon_wood",
	"ecologics:coconut_log" : "ecologics:stripped_coconut_log",
	"ecologics:coconut_wood" : "ecologics:stripped_coconut_wood",
	"ecologics:flowering_azalea_log" : "ecologics:stripped_azalea_log",
	"ecologics:flowering_azalea_wood" : "ecologics:stripped_azalea_wood",
	"ecologics:walnut_log" : "ecologics:stripped_walnut_log",
	"ecologics:walnut_wood" : "ecologics:stripped_walnut_wood",
	"enlightened_end:cerulean_log" : "enlightened_end:stripped_cerulean_stalk_block",	
	"enlightened_end:indigo_stem" : "enlightened_end:stripped_indigo_stem",
	"enlightened_end:indigo_hyphae" : "enlightened_end:stripped_indigo_hyphae",	
	"infernalexp:luminous_stem" : "infernalexp:stripped_luminous_stem",
	"infernalexp:luminous_hyphae" : "infernalexp:stripped_luminous_hyphae",
	"integrateddynamics:menril_log" : "integrateddynamics:menril_log_stripped",
	"integrateddynamics:menril_wood" : "integrateddynamics:menril_wood_stripped",
	"tconstruct:bloodshroom_log" : "tconstruct:stripped_bloodshroom_log",
	"tconstruct:bloodshroom_wood" : "tconstruct:stripped_bloodshroom_wood",
	"tconstruct:greenheart_log" : "tconstruct:stripped_greenheart_log",
	"tconstruct:greenheart_wood" : "tconstruct:stripped_greenheart_wood",
	"tconstruct:skyroot_log" : "tconstruct:stripped_skyroot_log",
	"tconstruct:skyroot_wood" : "tconstruct:stripped_skyroot_wood",
	"twilightforest:canopy_log" : "twilightforest:stripped_canopy_log",
	"twilightforest:canopy_wood" : "twilightforest:stripped_canopy_wood",
	"twilightforest:dark_log" : "twilightforest:stripped_dark_log",
	"twilightforest:dark_wood" : "twilightforest:stripped_dark_wood",
	"twilightforest:mangrove_log" : "twilightforest:stripped_mangrove_log",
	"twilightforest:mangrove_wood" : "twilightforest:stripped_mangrove_wood",
	"twilightforest:mining_log" : "twilightforest:stripped_mining_log",
	"twilightforest:mining_wood" : "twilightforest:stripped_mining_wood",
	"twilightforest:sorting_log" : "twilightforest:stripped_sorting_log",
	"twilightforest:sorting_wood" : "twilightforest:stripped_sorting_wood",
	"twilightforest:time_log" : "twilightforest:stripped_time_log",
	"twilightforest:time_wood" : "twilightforest:stripped_time_wood",
	"twilightforest:transformation_log" : "twilightforest:stripped_transformation_log",
	"twilightforest:transformation_wood" : "twilightforest:stripped_transformation_wood",
	"twilightforest:twilight_oak_log" : "twilightforest:stripped_twilight_oak_log",
	"twilightforest:twilight_oak_wood" : "twilightforest:stripped_twilight_oak_wood",
	"vinery:cherry_log" : "vinery:stripped_cherry_log",
	"vinery:cherry_wood" : "vinery:stripped_cherry_wood",
	"vinery:old_cherry_log" : "vinery:stripped_old_cherry_log",
	"vinery:old_cherry_wood" : "vinery:stripped_old_cherry_wood"
};
for addingLogCuttingFarmersDelightIn, addingLogCuttingFarmersDelightOut in addingLogCuttingFarmersDelight {
	<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + <item:${addingLogCuttingFarmersDelightIn}>.registryName.path, {
		"ingredients": [{
			"item": addingLogCuttingFarmersDelightIn
		}],
		"tool": {
			"type": "farmersdelight:tool_action",
			"action": "axe_strip"
		},
		"result": [{
			"item": addingLogCuttingFarmersDelightOut
		},
		{
			"item": "farmersdelight:tree_bark"
		}],
		"sound": "minecraft:item.axe.strip"
	});
}

var addingCuttingFarmersDelight = {
	"azalea" : "ecologics:azalea",
	"bloodshroom" : "tconstruct:bloodshroom",
	"canopy" : "twilightforest:canopy",
	"cerulean" : "enlightened_end:cerulean",
	"cherry" : "vinery:cherry",
	"coconut" : "ecologics:coconut",
	"darkwood" : "twilightforest:dark",
	"flowering_azalea" : "ecologics:flowering_azalea",
	"greenheart" : "tconstruct:greenheart",
	"indigo" : "enlightened_end:indigo",
	"mangrove" : "twilightforest:mangrove",
	"menril" : "integrateddynamics:menril",
	"mining" : "twilightforest:mining",
	"sorting" : "twilightforest:sorting",
	"skyroot" : "tconstruct:skyroot",
	"walnut" : "ecologics:walnut",
	"thorn" : "tflostblocks:thorn_planks",
	"timewood" : "twilightforest:time",
	"towerwood" : "twilightforest:towerwood",
	"transformation" : "twilightforest:transformation",
	"twilight_oak" : "twilightforest:twilight_oak"
};
for addingCuttingFarmersDelightName, addingCuttingFarmersDelightId in addingCuttingFarmersDelight {
	if (addingCuttingFarmersDelightName == "cerulean" || addingCuttingFarmersDelightName == "cherry" || addingCuttingFarmersDelightName == "darkwood" || addingCuttingFarmersDelightName == "indigo") {
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingCuttingFarmersDelightName + "_door", {
			"ingredients": [{
				"item": addingCuttingFarmersDelightId + "_door"
			}],
			"tool": {
				"type": "farmersdelight:tool_action",
				"action": "axe_dig"
			},
			"result": [{
				"item": addingCuttingFarmersDelightId + "_planks"
			}]
		});
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingCuttingFarmersDelightName + "_trapdoor", {
			"ingredients": [{
				"item": addingCuttingFarmersDelightId + "_trapdoor"
			}],
			"tool": {
				"type": "farmersdelight:tool_action",
				"action": "axe_dig"
			},
			"result": [{
				"item": addingCuttingFarmersDelightId + "_planks"
			}]
		});
	} else if (addingCuttingFarmersDelightName == "thorn" || addingCuttingFarmersDelightName == "towerwood") {
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingCuttingFarmersDelightName + "_door", {
			"ingredients": [{
				"item": "tflostblocks:" + addingCuttingFarmersDelightName + "_door"
			}],
			"tool": {
				"type": "farmersdelight:tool_action",
				"action": "axe_dig"
			},
			"result": [{
				"item": addingCuttingFarmersDelightId
			}]
		});
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingCuttingFarmersDelightName + "_trapdoor", {
			"ingredients": [{
				"item": "tflostblocks:" + addingCuttingFarmersDelightName + "_trapdoor"
			}],
			"tool": {
				"type": "farmersdelight:tool_action",
				"action": "axe_dig"
			},
			"result": [{
				"item": addingCuttingFarmersDelightId
			}]
		});
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingCuttingFarmersDelightName + "_sign", {
			"ingredients": [{
				"item": "tflostblocks:" + addingCuttingFarmersDelightName + "_sign"
			}],
			"tool": {
				"type": "farmersdelight:tool_action",
				"action": "axe_dig"
			},
			"result": [{
				"item": addingCuttingFarmersDelightId
			}]
		});
	} else if (addingCuttingFarmersDelightName == "menril") {
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingCuttingFarmersDelightName + "_door", {
			"ingredients": [{
				"item": addingCuttingFarmersDelightId + "_door"
			}],
			"tool": {
				"type": "farmersdelight:tool_action",
				"action": "axe_dig"
			},
			"result": [{
				"item": addingCuttingFarmersDelightId + "_planks"
			}]
		});
	} else {
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingCuttingFarmersDelightName + "_door", {
			"ingredients": [{
				"item": addingCuttingFarmersDelightId + "_door"
			}],
			"tool": {
				"type": "farmersdelight:tool_action",
				"action": "axe_dig"
			},
			"result": [{
				"item": addingCuttingFarmersDelightId + "_planks"
			}]
		});
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingCuttingFarmersDelightName + "_trapdoor", {
			"ingredients": [{
				"item": addingCuttingFarmersDelightId + "_trapdoor"
			}],
			"tool": {
				"type": "farmersdelight:tool_action",
				"action": "axe_dig"
			},
			"result": [{
				"item": addingCuttingFarmersDelightId + "_planks"
			}]
		});
		<recipetype:farmersdelight:cutting>.addJsonRecipe("farmersdelight_cutting/" + addingCuttingFarmersDelightName + "_sign", {
			"ingredients": [{
				"item": addingCuttingFarmersDelightId + "_sign"
			}],
			"tool": {
				"type": "farmersdelight:tool_action",
				"action": "axe_dig"
			},
			"result": [{
				"item": addingCuttingFarmersDelightId + "_planks"
			}]
		});
	}
}

<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/alexsmobs/fish_bones", <item:alexsmobs:fish_bones>, [<item:minecraft:bone_meal> * 4], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculture/fish_bones", <item:aquaculture:fish_bones>, [<item:minecraft:bone_meal> * 4], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculturedelight/fillet_four", <tag:items:aquaculturedelight:fillet_four>, [<item:aquaculture:fish_fillet_raw> * 4, <item:minecraft:bone_meal>, <item:aquaculture:fish_bones> % 5], <tag:items:forge:fillet_knife>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculturedelight/fillet_fourteen", <tag:items:aquaculturedelight:fillet_fourteen>, [<item:aquaculture:fish_fillet_raw> * 14, <item:minecraft:bone_meal>, <item:aquaculture:fish_bones> % 5], <tag:items:forge:fillet_knife>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculturedelight/fillet_one", <tag:items:aquaculturedelight:fillet_one>, [<item:aquaculture:fish_fillet_raw>, <item:minecraft:bone_meal>, <item:aquaculture:fish_bones> % 5], <tag:items:forge:fillet_knife>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculturedelight/fillet_six", <tag:items:aquaculturedelight:fillet_six>, [<item:aquaculture:fish_fillet_raw> * 6, <item:minecraft:bone_meal>, <item:aquaculture:fish_bones> % 5], <tag:items:forge:fillet_knife>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculturedelight/fillet_ten", <tag:items:aquaculturedelight:fillet_ten>, [<item:aquaculture:fish_fillet_raw> * 10, <item:minecraft:bone_meal>, <item:aquaculture:fish_bones> % 5], <tag:items:forge:fillet_knife>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculturedelight/fillet_three", <tag:items:aquaculturedelight:fillet_three>, [<item:aquaculture:fish_fillet_raw> * 3, <item:minecraft:bone_meal>, <item:aquaculture:fish_bones> % 5], <tag:items:forge:fillet_knife>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculturedelight/fillet_twelve", <tag:items:aquaculturedelight:fillet_twelve>, [<item:aquaculture:fish_fillet_raw> * 12, <item:minecraft:bone_meal>, <item:aquaculture:fish_bones> % 5], <tag:items:forge:fillet_knife>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculturedelight/fillet_two", <tag:items:aquaculturedelight:fillet_two>, [<item:aquaculture:fish_fillet_raw> * 2, <item:minecraft:bone_meal>, <item:aquaculture:fish_bones> % 5], <tag:items:forge:fillet_knife>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculturedelight/neptunium_fillet_one", <tag:items:aquaculturedelight:fillet_one>, [<item:aquaculture:fish_fillet_raw> * 2, <item:minecraft:bone_meal>, <item:aquaculture:fish_bones> % 5], <tag:items:aquaculturedelight:neptunium_knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculturedelight/neptunium_fillet_three", <tag:items:aquaculturedelight:fillet_three>, [<item:aquaculture:fish_fillet_raw> * 4, <item:minecraft:bone_meal>, <item:aquaculture:fish_bones> % 5], <tag:items:aquaculturedelight:neptunium_knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/aquaculturedelight/neptunium_fillet_two", <tag:items:aquaculturedelight:fillet_two>, [<item:aquaculture:fish_fillet_raw> * 3, <item:minecraft:bone_meal>, <item:aquaculture:fish_bones> % 5], <tag:items:aquaculturedelight:neptunium_knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/croptopia/noodle", <tag:items:forge:dough>, [<item:croptopia:noodle>], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/minecraft/wheat", <item:minecraft:wheat>, [<item:minecraft:wheat_seeds>, <item:minecraft:wheat_seeds> % 50, <item:create:wheat_flour> % 30], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/netherdepthsupgrade/fish_bones", <item:netherdepthsupgrade:bonefish>, [<item:minecraft:bone_meal> * 4], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/blood_cake_slice", <item:tconstruct:blood_cake>, [<item:contenttweaker:tconstruct/delight/blood_cake_slice> * 7], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/earth_slime_crystal_block", <item:tconstruct:earth_slime_crystal_block>, [<item:tconstruct:earth_slime_crystal> * 4], <toolaction:pickaxe_dig>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/earthslime_cake_slice", <item:tconstruct:earth_cake>, [<item:contenttweaker:tconstruct/delight/earthslime_cake_slice> * 7], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/ender_slime_crystal_block", <item:tconstruct:ender_slime_crystal_block>, [<item:tconstruct:ender_slime_crystal> * 4], <toolaction:pickaxe_dig>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/enderslime_cake_slice", <item:tconstruct:ender_cake>, [<item:contenttweaker:tconstruct/delight/enderslime_cake_slice> * 7], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/ichor_slime_crystal_block", <item:tconstruct:ichor_slime_crystal_block>, [<item:tconstruct:ichor_slime_crystal> * 4], <toolaction:pickaxe_dig>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/magma_cake_slice", <item:tconstruct:magma_cake>, [<item:contenttweaker:tconstruct/delight/magma_cake_slice> * 7], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/scorched_bricks", <item:tconstruct:scorched_bricks>, [<item:tconstruct:scorched_brick> * 4], <toolaction:pickaxe_dig>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/seared_bricks", <item:tconstruct:seared_bricks>, [<item:tconstruct:seared_brick> * 4], <toolaction:pickaxe_dig>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/skyslime_cake_slice", <item:tconstruct:sky_cake>, [<item:contenttweaker:tconstruct/delight/skyslime_cake_slice> * 7], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/tconstruct/sky_slime_crystal_block", <item:tconstruct:sky_slime_crystal_block>, [<item:tconstruct:sky_slime_crystal> * 4], <toolaction:pickaxe_dig>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/thermal/cheese_wheel", <item:thermal:cheese_wheel>, [<item:thermal:cheese_wedge> * 4], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/thermal/frost_melon_slice", <item:thermal:frost_melon>, [<item:thermal:frost_melon_slice> * 9], <tag:items:farmersdelight:tools/knives>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/twilightforest/darkwood_sign", <item:twilightforest:darkwood_sign>, [<item:twilightforest:dark_planks>], <toolaction:axe_dig>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/unusualend/chorus_nest_planks_door", <item:unusualend:chorus_nest_planks_door>, [<item:unusualend:chorus_nest_planks>], <toolaction:axe_dig>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/unusualend/chorus_nest_trapdoor", <item:unusualend:chorus_nest_trapdoor>, [<item:unusualend:chorus_nest_planks>], <toolaction:axe_dig>);
<recipetype:farmersdelight:cutting>.addRecipe("farmersdelight_cutting/vinery/cake_slice", <item:vinery:apple_pie>, [<item:vinery:apple_pie_slice> * 4], <tag:items:farmersdelight:tools/knives>);

Globals.endScript("recipe_farmers_delight");