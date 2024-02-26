/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add new Trade.
 */

println("Start script villager/wandering_trade.");
println("Script Priority Null.");

import crafttweaker.api.villagers.VillagerTrades;

// Tier 1
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald> * 6, <item:myrtrees:rubberwood_sapling>, 8, 10);
villagerTrades.addWanderingTrade(1, <item:minecraft:emerald> * 6, <item:simplytea:tea_sapling>, 8, 10);

// Tier 2

println("End script villager/wandering_trade.");