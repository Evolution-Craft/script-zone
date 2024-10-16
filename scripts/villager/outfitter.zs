/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("villager/outfitter");
Globals.priorityScript("Null");

import crafttweaker.api.villagers.VillagerTrades;

// Tier 1
villagerTrades.removeAllTrades(<profession:immersiveengineering:outfitter>, 1);
villagerTrades.addTrade(<profession:immersiveengineering:outfitter>, 1, <item:minecraft:emerald> * 6, <item:minecraft:oxeye_daisy> * 2, <item:minecraft:flower_banner_pattern>, 6, 1, 0.1);
villagerTrades.addTrade(<profession:immersiveengineering:outfitter>, 1, <item:minecraft:emerald> * 6, <item:minecraft:creeper_head> * 2, <item:minecraft:creeper_banner_pattern>, 6, 1, 0.1);
villagerTrades.addTrade(<profession:immersiveengineering:outfitter>, 1, <item:minecraft:emerald> * 6, <item:minecraft:wither_skeleton_skull> * 2, <item:minecraft:skull_banner_pattern>, 6, 1, 0.1);
villagerTrades.addTrade(<profession:immersiveengineering:outfitter>, 1, <item:minecraft:emerald> * 10, <item:immersiveengineering:shader_bag_common>, 24, 2, 0.2);

// Tier 2
villagerTrades.removeAllTrades(<profession:immersiveengineering:outfitter>, 2);
villagerTrades.addTrade(<profession:immersiveengineering:outfitter>, 2, <item:minecraft:emerald> * 12, <item:minecraft:enchanted_golden_apple> * 1, <item:minecraft:mojang_banner_pattern>, 4, 6, 0.1);
villagerTrades.addTrade(<profession:immersiveengineering:outfitter>, 2, <item:minecraft:emerald> * 18, <item:minecraft:paper> * 4, <item:immersiveengineering:shader_bag_uncommon>, 24, 2, 0.2);
villagerTrades.addTrade(<profession:immersiveengineering:outfitter>, 2, <item:minecraft:emerald> * 22, <item:minecraft:paper> * 6, <item:immersiveengineering:shader_bag_twilight>, 24, 2, 0.2);

// Tier 3
villagerTrades.removeAllTrades(<profession:immersiveengineering:outfitter>, 3);
villagerTrades.addTrade(<profession:immersiveengineering:outfitter>, 3, <item:minecraft:emerald> * 42, <item:immersiveengineering:ersatz_leather> * 10, <item:immersiveengineering:blueprint>.withTag({blueprint: "bannerpatterns" as string}), 1, 10, 0.2);
villagerTrades.addTrade(<profession:immersiveengineering:outfitter>, 3, <item:minecraft:emerald> * 26, <item:minecraft:paper> * 8, <item:immersiveengineering:shader_bag_rare>, 12, 6, 0.2);

// Tier 4
villagerTrades.removeAllTrades(<profession:immersiveengineering:outfitter>, 4);
villagerTrades.addTrade(<profession:immersiveengineering:outfitter>, 4, <item:minecraft:emerald> * 64, <item:minecraft:paper> * 32, <item:immersiveengineering:shader_bag_epic>, 12, 8, 0.2);

// Tier 5
villagerTrades.removeAllTrades(<profession:immersiveengineering:outfitter>, 5);
villagerTrades.addTrade(<profession:immersiveengineering:outfitter>, 5, <item:minecraft:emerald_block> * 16, <item:thermal:gold_dust> * 16, <item:immersiveengineering:shader_bag_ie_masterwork>, 6, 8, 0.2);

Globals.endScript("villager/outfitter");