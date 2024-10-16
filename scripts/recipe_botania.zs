/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_botania");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.tag.manager.ITagManager;

// Pure Dasy
<recipetype:botania:pure_daisy>.addRecipe("pack_expert_crafting/botania_pure_daisy/livingrock", <blockstate:botania:livingrock>, <blockstate:minecraft:light_gray_concrete>);
<recipetype:botania:pure_daisy>.addRecipe("pack_expert_crafting/botania_pure_daisy/livingwood", <blockstate:botania:livingwood_log>, <blockstate:immersiveengineering:treated_wood_horizontal>);

Globals.endScript("recipe_botania");