/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 984

Globals.startScript("tag/elemental_craft");
Globals.priorityScript("984");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Axes
var addingAxesElementalCraft = [
	"ae2:certus_quartz_axe",
	"ae2:fluix_axe",
	"ae2:nether_quartz_axe",
	"cyclic:amethyst_axe",
	"cyclic:crystal_axe",
	"cyclic:emerald_axe",
	"cyclic:netherbrick_axe",
	"cyclic:sandstone_axe",
	"enlightened_end:adamantite_axe",
	"enlightened_end:starsteel_axe",
	"enlightened_end:tenebrium_axe",
	"exlinecopperequipment:copper_axe",
	"immersiveengineering:axe_steel",
	"naturesaura:infused_iron_axe",
	"naturesaura:sky_axe",
	"twilightforest:diamond_minotaur_axe",
	"twilightforest:gold_minotaur_axe",
	"twilightforest:ironwood_axe",
	"twilightforest:knightmetal_axe",
	"twilightforest:steeleaf_axe",
	"undergarden:cloggrum_axe",
	"undergarden:cloggrum_battleaxe",
	"undergarden:forgotten_axe",
	"undergarden:forgotten_battleaxe",
	"undergarden:froststeel_axe",
	"undergarden:utherium_axe"
];
for tag_axes_elemental_craft in addingAxesElementalCraft {
	<tag:items:elementalcraft:infusable/axes>.add(<item:${tag_axes_elemental_craft}>);
	<tag:items:elementalcraft:jewel_socketables>.add(<item:${tag_axes_elemental_craft}>);
}

// Fishing Rods
var addingFishingRodsElementalCraft = [
	"aquaculture:iron_fishing_rod",
	"aquaculture:gold_fishing_rod",
	"aquaculture:diamond_fishing_rod",
	"aquaculture:neptunium_fishing_rod",
	"netherdepthsupgrade:lava_fishing_rod"
];
for tag_fishing_rods_elemental_craft in addingFishingRodsElementalCraft {
	<tag:items:elementalcraft:infusable/fishing_rods>.add(<item:${tag_fishing_rods_elemental_craft}>);
	<tag:items:elementalcraft:jewel_socketables>.add(<item:${tag_fishing_rods_elemental_craft}>);
}

// Helmets
var addingHelmetsElementalCraft = [
	"alexsmobs:spiked_turtle_shell"
];
for tag_helmets_elemental_craft in addingHelmetsElementalCraft {
	<tag:items:elementalcraft:infusable/helmets>.add(<item:${tag_helmets_elemental_craft}>);
	<tag:items:elementalcraft:jewel_socketables>.add(<item:${tag_helmets_elemental_craft}>);
}

// Hoes
var addingHoesElementalCraft = [
	"ae2:certus_quartz_hoe",
	"ae2:nether_quartz_hoe",
	"ae2:fluix_hoe",
	"aquaculture:neptunium_hoe",
	"exlinecopperequipment:copper_hoe",
	"cyclic:amethyst_hoe",
	"cyclic:emerald_hoe",
	"cyclic:crystal_hoe",
	"cyclic:sandstone_hoe",
	"cyclic:netherbrick_hoe",
	"enlightened_end:tenebrium_hoe",
	"enlightened_end:starsteel_hoe",
	"enlightened_end:adamantite_hoe",
	"fiow:flint_hoe",
	"naturesaura:infused_iron_hoe",
	"naturesaura:sky_hoe",
	"twilightforest:ironwood_hoe",
	"twilightforest:steeleaf_hoe",
	"undergarden:cloggrum_hoe",
	"undergarden:froststeel_hoe",
	"undergarden:forgotten_hoe",
	"undergarden:utherium_hoe"
];
for tag_hoes_elemental_craft in addingHoesElementalCraft {
	<tag:items:elementalcraft:infusable/hoes>.add(<item:${tag_hoes_elemental_craft}>);
	<tag:items:elementalcraft:jewel_socketables>.add(<item:${tag_hoes_elemental_craft}>);
}

// Pickaxes
var addingPickaxesElementalCraft = [
	"ae2:certus_quartz_pickaxe",
	"ae2:nether_quartz_pickaxe",
	"ae2:fluix_pickaxe",
	"aquaculture:neptunium_pickaxe",
	"exlinecopperequipment:copper_pick",
	"cyclic:amethyst_pickaxe",
	"cyclic:emerald_pickaxe",
	"cyclic:crystal_pickaxe",
	"cyclic:sandstone_pickaxe",
	"cyclic:netherbrick_pickaxe",
	"enlightened_end:tenebrium_pickaxe",
	"enlightened_end:starsteel_pickaxe",
	"enlightened_end:adamantite_pickaxe",
	"fiow:flint_pickaxe",
	"immersiveengineering:pickaxe_steel",
	"naturesaura:infused_iron_pickaxe",
	"naturesaura:sky_pickaxe",
	"twilightforest:ironwood_pickaxe",
	"twilightforest:fiery_pickaxe",
	"twilightforest:steeleaf_pickaxe",
	"twilightforest:knightmetal_pickaxe",
	"twilightforest:giant_pickaxe",
	"undergarden:cloggrum_pickaxe",
	"undergarden:froststeel_pickaxe",
	"undergarden:utherium_pickaxe",
	"undergarden:forgotten_pickaxe"
];
for tag_pickaxes_elemental_craft in addingPickaxesElementalCraft {
	<tag:items:elementalcraft:infusable/pickaxes>.add(<item:${tag_pickaxes_elemental_craft}>);
	<tag:items:elementalcraft:jewel_socketables>.add(<item:${tag_pickaxes_elemental_craft}>);
}

// Shovels
var addingShovelsElementalCraft = [
	"ae2:certus_quartz_shovel",
	"ae2:nether_quartz_shovel",
	"ae2:fluix_shovel",
	"aquaculture:neptunium_shovel",
	"exlinecopperequipment:copper_shovel",
	"cyclic:amethyst_shovel",
	"cyclic:emerald_shovel",
	"cyclic:crystal_shovel",
	"cyclic:sandstone_shovel",
	"cyclic:netherbrick_shovel",
	"enlightened_end:tenebrium_shovel",
	"enlightened_end:starsteel_shovel",
	"enlightened_end:adamantite_shovel",
	"immersiveengineering:shovel_steel",
	"naturesaura:infused_iron_shovel",
	"naturesaura:sky_shovel",
	"twilightforest:ironwood_shovel",
	"twilightforest:steeleaf_shovel",
	"undergarden:cloggrum_shovel",
	"undergarden:froststeel_shovel",
	"undergarden:utherium_shovel",
	"undergarden:forgotten_shovel"
];
for tag_shovels_elemental_craft in addingShovelsElementalCraft {
	<tag:items:elementalcraft:infusable/hovels>.add(<item:${tag_shovels_elemental_craft}>);
	<tag:items:elementalcraft:jewel_socketables>.add(<item:${tag_shovels_elemental_craft}>);
}

// Swords
var addingSwordsElementalCraft = [
	"ae2:certus_quartz_sword",
	"ae2:nether_quartz_sword",
	"ae2:fluix_sword",
	"aquaculture:neptunium_sword",
	"exlinecopperequipment:copper_sword",
	"cyclic:amethyst_sword",
	"cyclic:emerald_sword",
	"cyclic:crystal_sword",
	"cyclic:sandstone_sword",
	"cyclic:netherbrick_sword",
	"enlightened_end:tenebrium_sword",
	"enlightened_end:starsteel_sword",
	"enlightened_end:adamantite_sword",
	"immersiveengineering:sword_steel",
	"twilightforest:ironwood_sword",
	"twilightforest:fiery_sword",
	"twilightforest:steeleaf_sword",
	"twilightforest:knightmetal_sword",
	"twilightforest:ice_sword",
	"twilightforest:glass_sword",
	"twilightforest:giant_sword",
	"undergarden:cloggrum_sword",
	"undergarden:froststeel_sword",
	"undergarden:utherium_sword",
	"undergarden:forgotten_sword"
];
for tag_swords_elemental_craft in addingSwordsElementalCraft {
	<tag:items:elementalcraft:infusable/swords>.add(<item:${tag_swords_elemental_craft}>);
	<tag:items:elementalcraft:jewel_socketables>.add(<item:${tag_swords_elemental_craft}>);
}

Globals.endScript("tag/elemental_craft");