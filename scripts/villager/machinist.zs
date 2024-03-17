/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Remove Trade.
 */

Globals.startScript("villager/machinist");
Globals.priorityScript("Null");

import crafttweaker.api.villagers.VillagerTrades;

// Tier 1

// Tier 2

// Tier 3

// Tier 4
villagerTrades.removeAllTrades(<profession:immersiveengineering:machinist>, 4);
villagerTrades.addTrade(<profession:immersiveengineering:machinist>, 4, <item:minecraft:emerald> * 6, <item:immersiveengineering:earmuffs>, 3, 20, 0.2);

// Tier 5
villagerTrades.removeAllTrades(<profession:immersiveengineering:machinist>, 5);
villagerTrades.addTrade(<profession:immersiveengineering:machinist>, 5, <item:minecraft:emerald> * 32, <item:immersiveengineering:blueprint>.withTag({blueprint: "electrode" as string}), 3, 30, 0.2);

Globals.endScript("villager/machinist");