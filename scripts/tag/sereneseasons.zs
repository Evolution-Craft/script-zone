/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix uncategorized.
 * v0.2 : Adding Quark, Twilight Forest and Undergarden Sapling.
 */

#priority 994

Globals.startScript("tag/sereneseasons");
Globals.priorityScript("994");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.food.FoodData;
import crafttweaker.api.tag.manager.ITagManager;

// Spring
var addingSpringSereneSeasons = [
	"ecologics:walnut_sapling",
	"naturesaura:ancient_sapling",
	"quark:lavender_blossom_sapling",
	"quark:pink_blossom_sapling",
	"simplytea:tea_sapling",
	"tconstruct:earth_slime_sapling",
	"tconstruct:ender_slime_sapling",
	"tconstruct:sky_slime_sapling",
	"vinery:cherry_sapling",
	"vinery:old_cherry_sapling",
	"vinery:jungle_grape_seeds_red",
	"vinery:jungle_grape_seeds_white",
	"vinery:red_grape_seeds",
	"vinery:savanna_grape_seeds_red",
	"vinery:savanna_grape_seeds_white",
	"vinery:taiga_grape_seeds_red",
	"vinery:taiga_grape_seeds_white",
	"vinery:white_grape_seeds"
];
for tag_spring_sereneseasons in addingSpringSereneSeasons{
	<tag:items:sereneseasons:spring_crops>.add(<item:${tag_spring_sereneseasons}>);
}

// Summer
var addingSummerSereneSeasons = [
	"croptopia:cinnamon_sapling",
	"myrtrees:rubberwood_sapling",
	"naturesaura:ancient_sapling",
	"quark:orange_blossom_sapling",
	"quark:pink_blossom_sapling",
	"quark:yellow_blossom_sapling",
	"simplytea:tea_sapling",
	"vinery:cherry_sapling",
	"vinery:old_cherry_sapling",
	"vinery:jungle_grape_seeds_red",
	"vinery:jungle_grape_seeds_white",
	"vinery:red_grape_seeds",
	"vinery:savanna_grape_seeds_red",
	"vinery:savanna_grape_seeds_white",
	"vinery:taiga_grape_seeds_red",
	"vinery:taiga_grape_seeds_white",
	"vinery:white_grape_seeds"
];
for tag_summer_sereneseasons in addingSummerSereneSeasons{
	<tag:items:sereneseasons:summer_crops>.add(<item:${tag_summer_sereneseasons}>);
}

// Autumn
var addingAutumnSereneSeasons = [
	"myrtrees:rubberwood_sapling",
	"naturesaura:ancient_sapling",
	"quark:red_blossom_sapling",
	"twilightforest:canopy_sapling",
	"twilightforest:darkwood_sapling",
	"twilightforest:hollow_oak_sapling",
	"twilightforest:mangrove_sapling",
	"twilightforest:mining_sapling",
	"twilightforest:rainbow_oak_sapling",
	"twilightforest:sorting_sapling",
	"twilightforest:time_sapling",
	"twilightforest:transformation_sapling",
	"twilightforest:twilight_oak_sapling",
	"undergarden:grongle_sapling",
	"undergarden:smogstem_sapling",
	"undergarden:wigglewood_sapling",
	"vinery:cherry_sapling",
	"vinery:old_cherry_sapling"
];
for tag_autumn_sereneseasons in addingAutumnSereneSeasons{
	<tag:items:sereneseasons:autumn_crops>.add(<item:${tag_autumn_sereneseasons}>);
}

// Winter
var addingWinterSereneSeasons = [
	"integrateddynamics:menril_sapling",
	"naturesaura:ancient_sapling",
	"quark:blue_blossom_sapling",
	"undergarden:grongle_sapling",
	"undergarden:smogstem_sapling",
	"undergarden:wigglewood_sapling",
	"vinery:cherry_sapling",
	"vinery:old_cherry_sapling"
];
for tag_winter_sereneseasons in addingWinterSereneSeasons{
	<tag:items:sereneseasons:winter_crops>.add(<item:${tag_winter_sereneseasons}>);
}

Globals.endScript("tag/sereneseasons");