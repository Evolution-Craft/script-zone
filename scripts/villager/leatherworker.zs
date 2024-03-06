/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Full Rework.
 */

println("Start script villager/leatherworker.");
println("Script Priority Null.");

import crafttweaker.api.villagers.VillagerTrades;

// Tier 1
villagerTrades.removeAllTrades(<profession:minecraft:leatherworker>, 1);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 1, <item:minecraft:leather> * 6, <item:minecraft:emerald>, 16, 2, 0.05);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 1, <item:minecraft:emerald> * 3, <item:minecraft:leather_leggings>, 12, 1, 0.2);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 1, <item:minecraft:emerald> * 7, <item:minecraft:leather_chestplate>, 12, 1, 0.2);

// Tier 2
villagerTrades.removeAllTrades(<profession:minecraft:leatherworker>, 2);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 2, <item:minecraft:flint> * 26, <item:minecraft:emerald>, 12, 10, 0.05);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 2, <item:minecraft:emerald> * 5, <item:minecraft:leather_helmet>, 12, 5, 0.2);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 2, <item:minecraft:emerald> * 4, <item:minecraft:leather_boots>, 12, 5, 0.2);

// Tier 3
villagerTrades.removeAllTrades(<profession:minecraft:leatherworker>, 3);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 3, <item:minecraft:rabbit_hide> * 9, <item:minecraft:emerald>, 12, 20, 0.05);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 3, <item:minecraft:emerald> * 7, <item:archarsenal:bow_leather>, 12, 10, 0.2);

// Tier 4
villagerTrades.removeAllTrades(<profession:minecraft:leatherworker>, 4);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 4, <item:minecraft:scute> * 4, <item:minecraft:emerald>, 12, 30, 0.05);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 4, <item:minecraft:emerald> * 6, <item:minecraft:leather_horse_armor>, 12, 15, 0.2);

// Tier 5
villagerTrades.removeAllTrades(<profession:minecraft:leatherworker>, 5);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 5, <item:minecraft:emerald> * 6, <item:minecraft:saddle>, 12, 30, 0.2);
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 5, <item:minecraft:emerald> * 32, <item:minecraft:enchanted_book>.setEnchantments({<enchantment:leatheredboots:soft_step> : 1 as int?}), 1, 30, 0.5);

println("End script villager/leatherworker.");