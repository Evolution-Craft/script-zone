/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Missing Recipe.
 */
 
println("Start script recipe_create");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Item Application
//<recipetype:create:item_application>.addRecipe("croptopia_stripped_cinnamon_log_via_vanilla_stripping", [<item:croptopia:stripped_cinnamon_log> % 100], <item:croptopia:cinnamon_log>, <tag:items:forge:axes>, false);

// Sawing
<recipetype:create:cutting>.addRecipe("stripped_cinnamon_log_from_cinnamon_log", <item:croptopia:stripped_cinnamon_log> % 100, <item:croptopia:cinnamon_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_cinnamon_wood_from_cinnamon_wood", <item:croptopia:stripped_cinnamon_wood> % 100, <item:croptopia:cinnamon_wood>, 50);
<recipetype:create:cutting>.addRecipe("stripped_indigo_stem_from_indigo_stem", <item:enlightened_end:stripped_indigo_stem> % 100, <item:enlightened_end:indigo_stem>, 50);
<recipetype:create:cutting>.addRecipe("stripped_indigo_hyphae_from_indigo_hyphae", <item:enlightened_end:stripped_indigo_hyphae> % 100, <item:enlightened_end:indigo_hyphae>, 50);
<recipetype:create:cutting>.addRecipe("indigo_planks_from_stripped_indigo_stem", (<item:enlightened_end:indigo_planks> * 6) % 100, <item:enlightened_end:stripped_indigo_stem>, 50);
<recipetype:create:cutting>.addRecipe("indigo_planks_from_stripped_indigo_hyphae", (<item:enlightened_end:indigo_planks> * 6) % 100, <item:enlightened_end:stripped_indigo_hyphae>, 50);
<recipetype:create:cutting>.addRecipe("stripped_thorns_from_brown_thorns", <item:tflostblocks:stripped_thorns> % 100, <item:twilightforest:brown_thorns>, 50);
<recipetype:create:cutting>.addRecipe("stripped_thorns_from_green_thorns", <item:tflostblocks:stripped_thorns> % 100, <item:twilightforest:green_thorns>, 50);
<recipetype:create:cutting>.addRecipe("stripped_cerulean_stalk_block_from_cerulean_log", <item:enlightened_end:stripped_cerulean_stalk_block> % 100, <item:enlightened_end:cerulean_log>, 50);
<recipetype:create:cutting>.addRecipe("cerulean_planks_from_stripped_cerulean_stalk_log", (<item:enlightened_end:cerulean_planks> * 6) % 100, <item:enlightened_end:stripped_cerulean_stalk_block>, 50);
<recipetype:create:cutting>.addRecipe("stripped_luminous_hyphae_from_luminous_hyphae", <item:infernalexp:stripped_luminous_hyphae> % 100, <item:infernalexp:luminous_hyphae>, 50);
<recipetype:create:cutting>.addRecipe("stripped_luminous_stem_from_luminous_stem", <item:infernalexp:stripped_luminous_stem> % 100, <item:infernalexp:luminous_stem>, 50);
<recipetype:create:cutting>.addRecipe("stripped_grongle_log_from_grongle_log", <item:undergarden:stripped_grongle_log> % 100, <item:undergarden:grongle_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_grongle_wood_from_grongle_wood", <item:undergarden:stripped_grongle_wood> % 100, <item:undergarden:grongle_wood>, 50);
<recipetype:create:cutting>.addRecipe("grongle_planks_from_stripped_grongle_wood", (<item:undergarden:grongle_planks> * 6) % 100, <item:undergarden:stripped_grongle_wood>, 50);
<recipetype:create:cutting>.addRecipe("grongle_planks_from_stripped_grongle_log", (<item:undergarden:grongle_planks> * 6) % 100, <item:undergarden:stripped_grongle_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_smogstem_log_from_smogstem_log", <item:undergarden:stripped_smogstem_log> % 100, <item:undergarden:smogstem_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_smogstem_wood_from_smogstem_wood", <item:undergarden:stripped_smogstem_wood> % 100, <item:undergarden:smogstem_wood>, 50);
<recipetype:create:cutting>.addRecipe("smogstem_planks_from_stripped_smogstem_wood", (<item:undergarden:smogstem_planks> * 6) % 100, <item:undergarden:stripped_smogstem_wood>, 50);
<recipetype:create:cutting>.addRecipe("smogstem_planks_from_stripped_smogstem_log", (<item:undergarden:smogstem_planks> * 6) % 100, <item:undergarden:stripped_smogstem_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_wigglewood_log_from_wigglewood_log", <item:undergarden:stripped_wigglewood_log> % 100, <item:undergarden:wigglewood_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_wigglewood_wood_from_wigglewood_wood", <item:undergarden:stripped_wigglewood_wood> % 100, <item:undergarden:wigglewood_wood>, 50);
<recipetype:create:cutting>.addRecipe("wigglewood_planks_from_stripped_wigglewood_wood", (<item:undergarden:wigglewood_planks> * 6) % 100, <item:undergarden:stripped_wigglewood_wood>, 50);
<recipetype:create:cutting>.addRecipe("wigglewood_planks_from_stripped_wigglewood_log", (<item:undergarden:wigglewood_planks> * 6) % 100, <item:undergarden:stripped_wigglewood_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_cherry_log_from_cherry_log", <item:vinery:stripped_cherry_log> % 100, <item:vinery:cherry_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_cherry_wood_from_cherry_wood", <item:vinery:stripped_cherry_wood> % 100, <item:vinery:cherry_wood>, 50);
<recipetype:create:cutting>.addRecipe("stripped_old_cherry_log_from_old_cherry_log", <item:vinery:stripped_old_cherry_log> % 100, <item:vinery:old_cherry_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_old_cherry_wood_from_old_cherry_wood", <item:vinery:stripped_old_cherry_wood> % 100, <item:vinery:old_cherry_wood>, 50);
<recipetype:create:cutting>.addRecipe("cherry_planks_from_stripped_cherry_log", (<item:vinery:cherry_planks> * 6) % 100, <item:vinery:stripped_cherry_log>, 50);
<recipetype:create:cutting>.addRecipe("cherry_planks_from_stripped_cherry_wood", (<item:vinery:cherry_planks> * 6) % 100, <item:vinery:stripped_cherry_wood>, 50);
<recipetype:create:cutting>.addRecipe("cherry_planks_from_stripped_old_cherry_log", (<item:vinery:cherry_planks> * 6) % 100, <item:vinery:stripped_old_cherry_log>, 50);
<recipetype:create:cutting>.addRecipe("cherry_planks_from_stripped_old_cherry_wood", (<item:vinery:cherry_planks> * 6) % 100, <item:vinery:stripped_old_cherry_wood>, 50);

println("End script recipe_create.");