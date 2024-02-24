/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Pure Dasy modded.
 */

println("Start script recipe_botania.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

<recipetype:botania:pure_daisy>.removeByName("botania:pure_daisy/livingrock");
<recipetype:botania:pure_daisy>.addRecipe("botania_pure_daisy/livingrock", <blockstate:botania:livingrock>, <blockstate:minecraft:light_gray_concrete>);
<recipetype:botania:pure_daisy>.removeByName("botania:pure_daisy/livingwood");
<recipetype:botania:pure_daisy>.addRecipe("botania_pure_daisy/livingwood", <blockstate:botania:livingwood_log>, <blockstate:immersiveengineering:treated_wood_horizontal>);

println("End script recipe_botania.");