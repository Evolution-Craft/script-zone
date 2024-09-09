/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add new Trade.
 */

Globals.startScript("villager/wandering_trade");
Globals.priorityScript("Null");

import crafttweaker.api.villagers.VillagerTrades;

// Tier 1
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald> * 6, <item:myrtrees:rubberwood_sapling>, 8, 10);
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald> * 6, <item:simplytea:tea_sapling>, 8, 10);
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald>, <item:minecraft:honeycomb> * 3, 4, 10);
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald> * 5, <item:minecraft:turtle_egg> * 3, 2, 10);
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald>, <item:minecraft:gunpowder> * 5, 10, 10);
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald>, <item:minecraft:feather> * 5, 10, 10);
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald> * 24, <item:minecraft:totem_of_undying>, 1, 20);
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald> * 2, <item:create:experience_nugget> * 4, 8, 10);
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald> * 5, <item:minecraft:golden_apple>, 4, 15);
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald> * 12, <item:minecraft:enchanted_golden_apple>, 1, 20);

// Tier 2

Globals.endScript("villager/wandering_trade");