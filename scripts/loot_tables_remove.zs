/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */
 
Globals.startScript("loot_tables_remove");
Globals.priorityScript("Null");

import crafttweaker.api.loot.modifier.CommonLootModifiers;

CommonLootModifiers.removeAll(
	// Cyclic
	<item:cyclic:copper_axe>,
	<item:cyclic:copper_hoe>,
	<item:cyclic:copper_pickaxe>,
	<item:cyclic:copper_shovel>,
	<item:cyclic:copper_sword>,
	// Galosphere
	<item:galosphere:silver_bomb>,
	// Immersive Engineering
	<item:immersiveengineering:armor_piercing>,
	<item:immersiveengineering:dragons_breath>,
	<item:immersiveengineering:firework>,
	<item:immersiveengineering:homing>,
	<item:immersiveengineering:potion>,
	<item:immersiveengineering:wolfpack>,
	<item:immersiveengineering:shield>,
	<item:immersiveengineering:shader_bag_common>,
	<item:immersiveengineering:shader_bag_uncommon>,
	<item:immersiveengineering:shader_bag_twilight>,
	<item:immersiveengineering:shader_bag_rare>,
	<item:immersiveengineering:shader_bag_epic>,
	<item:immersiveengineering:shader_bag_ie_masterwork>,
	// Infernal Espanscion
	<item:infernalexp:ascus_bomb>,
	// Leathered Boots
	<item:leathered_boots:leathered_chainmail_boots>,
	<item:leathered_boots:leathered_iron_boots>,
	<item:leathered_boots:leathered_gold_boots>,
	<item:leathered_boots:leathered_diamond_boots>,
	<item:leathered_boots:leathered_netherite_boots>,
	// Library Ferret
	<item:libraryferret:diamond_coins_jtl>,
	<item:libraryferret:emerald_coins_jtl>,
	<item:libraryferret:gold_coins_jtl>,
	<item:libraryferret:iron_coins_jtl>,
	<item:libraryferret:netherite_coins_jtl>,
	// Mekanism
	<item:mekanismtools:wood_paxel>,
	// Minecraft
	<item:minecraft:wooden_axe>,
	<item:minecraft:wooden_hoe>,
	<item:minecraft:wooden_sword>,
	<item:minecraft:wooden_shovel>,
	<item:minecraft:wooden_pickaxe>,
	// Pneumatic Craft
	<item:pneumaticcraft:amadron_tablet>,
	<item:pneumaticcraft:gun_ammo_ap>,
	<item:pneumaticcraft:gun_ammo_explosive>,
	<item:pneumaticcraft:gun_ammo_freezing>,
	<item:pneumaticcraft:gun_ammo_incendiary>,
	<item:pneumaticcraft:gun_ammo_weighted>,
	<item:pneumaticcraft:micromissiles>,
	<item:pneumaticcraft:vortex_cannon>,
	// Supplementaries
	<item:supplementaries:bomb>,
	<item:supplementaries:bomb_blue>,
	<item:supplementaries:bomb_spiky>,
	// Therminal Series
	<item:thermal:bronze_coin>,
	<item:thermal:constantan_coin>,
	<item:thermal:copper_coin>,
	<item:thermal:electrum_coin>,
	<item:thermal:enderium_coin>,
	<item:thermal:gold_coin>,
	<item:thermal:invar_coin>,
	<item:thermal:iron_coin>,
	<item:thermal:lead_coin>,
	<item:thermal:lumium_coin>,
	<item:thermal:netherite_coin>,
	<item:thermal:nickel_coin>,
	<item:thermal:rose_gold_coin>,
	<item:thermal:signalum_coin>,
	<item:thermal:silver_coin>,
	<item:thermal:steel_coin>,
	<item:thermal:tin_coin>,
	<item:thermal:earth_grenade>,
	<item:thermal:ender_grenade>,
	<item:thermal:explosive_grenade>,
	<item:thermal:fire_grenade>,
	<item:thermal:glowstone_grenade>,
	<item:thermal:ice_grenade>,
	<item:thermal:lightning_grenade>,
	<item:thermal:phyto_grenade>,
	<item:thermal:redstone_grenade>,
	<item:thermal:slime_grenade>,
	<item:thermal:earth_tnt>,
	<item:thermal:ender_tnt>,
	<item:thermal:fire_tnt>,
	<item:thermal:glowstone_tnt>,
	<item:thermal:ice_tnt>,
	<item:thermal:lightning_tnt>,
	<item:thermal:phyto_tnt>,
	<item:thermal:redstone_tnt>,
	<item:thermal:slime_tnt>,
	<item:thermal_extra:dragonsteel_coin>,
	<item:thermal_extra:shellite_coin>,
	<item:thermal_extra:soul_infused_coin>,
	<item:thermal_extra:twinite_coin>,
	<item:unusualend:void_totem>,
	// The One Probe
	<item:theoneprobe:creativeprobe>,
	<item:theoneprobe:diamond_helmet_probe>,
	<item:theoneprobe:gold_helmet_probe>,
	<item:theoneprobe:iron_helmet_probe>,
	<item:theoneprobe:probe>,
	<item:theoneprobe:probenote>,
	// Unusualend
	<item:unusualend:void_totem>
);

Globals.endScript("loot_tables_remove");