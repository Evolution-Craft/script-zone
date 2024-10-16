/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("villager/electrician");
Globals.priorityScript("Null");

import crafttweaker.api.villagers.VillagerTrades;

// Tier 1

// Tier 2

// Tier 3

// Tier 4
villagerTrades.removeAllTrades(<profession:immersiveengineering:electrician>, 4);
villagerTrades.addTrade(<profession:immersiveengineering:electrician>, 4, <item:minecraft:emerald> * 8, <item:immersiveengineering:fluorescent_tube>, 3, 25, 0.2);

// Tier 5
villagerTrades.removeAllTrades(<profession:immersiveengineering:electrician>, 5);
villagerTrades.addTrade(<profession:immersiveengineering:electrician>, 5, <item:minecraft:emerald> * 32, <item:immersiveengineering:blueprint>.withTag({blueprint: "components" as string}), 3, 30, 0.2);

Globals.endScript("villager/electrician");