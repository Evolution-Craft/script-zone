/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("villager/winemaker");
Globals.priorityScript("Null");

import crafttweaker.api.villagers.VillagerTrades;

// Tier 1
villagerTrades.removeAllTrades(<profession:vinery:winemaker>, 1);
villagerTrades.addTrade(<profession:vinery:winemaker>, 1, <item:minecraft:emerald> * 2, <item:vinery:red_grape_seeds>, 12, 5, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 1, <item:minecraft:emerald> * 2, <item:vinery:white_grape_seeds>, 12, 5, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 1, <item:vinery:red_grape> * 5, <item:minecraft:emerald>, 6, 5, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 1, <item:vinery:white_grape> * 5, <item:minecraft:emerald>, 6, 5, 0.05);

// Tier 2
villagerTrades.removeAllTrades(<profession:vinery:winemaker>, 2);
villagerTrades.addTrade(<profession:vinery:winemaker>, 2, <item:minecraft:emerald> * 2, <item:vinery:savanna_grape_seeds_red>, 12, 7, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 2, <item:minecraft:emerald> * 2, <item:vinery:savanna_grape_seeds_white>, 12, 7, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 2, <item:vinery:savanna_grapes_red> * 5, <item:minecraft:emerald> * 2, 6, 7, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 2, <item:vinery:savanna_grapes_white> * 5, <item:minecraft:emerald> * 2, 6, 7, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 2, <item:minecraft:emerald>, <item:vinery:wine_bottle> * 2, 12, 7, 0.05);

// Tier 3
villagerTrades.removeAllTrades(<profession:vinery:winemaker>, 3);
villagerTrades.addTrade(<profession:vinery:winemaker>, 3, <item:minecraft:emerald> * 4, <item:vinery:taiga_grape_seeds_red>, 12, 10, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 3, <item:minecraft:emerald> * 4, <item:vinery:taiga_grape_seeds_white>, 12, 10, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 3, <item:vinery:taiga_grapes_red> * 8, <item:minecraft:emerald> * 3, 6, 10, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 3, <item:vinery:taiga_grapes_white> * 8, <item:minecraft:emerald> * 3, 6, 10, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 3, <item:minecraft:emerald> * 6, <item:vinery:grapevine_lattice>, 2, 14, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 3, <item:minecraft:emerald> * 10, <item:vinery:wine_box>, 2, 14, 0.05);

// Tier 4
villagerTrades.removeAllTrades(<profession:vinery:winemaker>, 4);
villagerTrades.addTrade(<profession:vinery:winemaker>, 4, <item:minecraft:emerald> * 4, <item:vinery:jungle_grape_seeds_red>, 12, 14, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 4, <item:minecraft:emerald> * 4, <item:vinery:jungle_grape_seeds_white>, 12, 14, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 4, <item:vinery:jungle_grapes_red> * 8, <item:minecraft:emerald> * 3, 6, 14, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 4, <item:vinery:jungle_grapes_white> * 8, <item:minecraft:emerald> * 3, 6, 14, 0.05);
villagerTrades.addTrade(<profession:vinery:winemaker>, 4, <item:minecraft:emerald> * 36, <item:vinery:gloves>, 1, 20, 0.1);

// Tier 5
villagerTrades.removeAllTrades(<profession:vinery:winemaker>, 5);
villagerTrades.addTrade(<profession:vinery:winemaker>, 5, <item:minecraft:emerald> * 24, <item:vinery:cherry_sapling>, 2, 24, 0.1);
villagerTrades.addTrade(<profession:vinery:winemaker>, 5, <item:minecraft:emerald> * 24, <item:vinery:old_cherry_sapling>, 2, 24, 0.1);
villagerTrades.addTrade(<profession:vinery:winemaker>, 5, <item:vinery:cherry_crate> * 1, <item:minecraft:emerald> * 4, 12, 16, 0.05);

Globals.endScript("villager/winemaker");