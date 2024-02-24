/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First add jei ingradient.
 */

#priority 998

println("Start script jei_show.");
println("Script Priority 998.");

import mods.jei.JEI;

JEI.addIngredient(<item:minecraft:dragon_egg>);

println("End script jei_show_remove.");