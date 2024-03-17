/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Missing Axe.
 */

#priority 990

Globals.startScript("tag/bookshelf");
Globals.priorityScript("990");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Axes
var addingAxesBookshelf = [
	"ae2:certus_quartz_axe",
	"ae2:fluix_axe",
	"ae2:nether_quartz_axe",
	"botania:elementium_axe",
	"botania:manasteel_axe",
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
	"mekanismtools:lapis_lazuli_axe",
	"mekanismtools:osmium_axe",
	"mekanismtools:refined_glowstone_axe",
	"mekanismtools:refined_obsidian_axe",
	"mekanismtools:steel_axe",
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
for tag_axes_bookshelf in addingAxesBookshelf{
	<tag:items:bookshelf:axes>.add(<item:${tag_axes_bookshelf}>);
}

Globals.endScript("tag/bookshelf");