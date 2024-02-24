/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Remove All Trade.
 */

println("Start script villager/gunsmith.");
println("Script Priority Null.");

import crafttweaker.api.villagers.VillagerTrades;

// Tier 1
villagerTrades.removeAllTrades(<profession:immersiveengineering:gunsmith>, 1);

// Tier 2
villagerTrades.removeAllTrades(<profession:immersiveengineering:gunsmith>, 2);

// Tier 3
villagerTrades.removeAllTrades(<profession:immersiveengineering:gunsmith>, 3);

// Tier 4
villagerTrades.removeAllTrades(<profession:immersiveengineering:gunsmith>, 4);

// Tier 5
villagerTrades.removeAllTrades(<profession:immersiveengineering:gunsmith>, 5);

println("End script villager/gunsmith.");