/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Blueprint.
 */

Globals.startScript("villager/engineer");
Globals.priorityScript("Null");

import crafttweaker.api.villagers.VillagerTrades;

// Tier 1

// Tier 2

// Tier 3

// Tier 4

// Tier 5
villagerTrades.removeAllTrades(<profession:immersiveengineering:engineer>, 5);
villagerTrades.addTrade(<profession:immersiveengineering:engineer>, 5, <item:minecraft:emerald> * 32, <item:immersiveengineering:blueprint>.withTag({blueprint: "molds" as string}), 3, 30, 0.2);

Globals.endScript("villager/engineer");