/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

#priority 991

Globals.startScript("tag/evolution_craft");
Globals.priorityScript("991");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Evolution Craft - Books
var addingEvolutionCraftBook = [
	"contenttweaker:evolution_craft/book/cursed_book",
	"contenttweaker:evolution_craft/book/grimoire_book",
	"contenttweaker:evolution_craft/book/herobrines_book",
	"contenttweaker:evolution_craft/book/knowledge_book",
	"contenttweaker:evolution_craft/book/monster_book",
	"contenttweaker:evolution_craft/book/necronomicon_book",
	"contenttweaker:evolution_craft/book/notchs_book",
	"contenttweaker:evolution_craft/book/book.old_book",
	"contenttweaker:evolution_craft/book/book.rexs_book"
];
for tag_evolution_craft_book in addingEvolutionCraftBook {
	<tag:items:evolution_craft:books>.add(<item:${tag_evolution_craft_book}>);
}

// Evolution Craft - Coins
var addingEvolutionCraftCoin = [
	"contenttweaker:coin_common",
	"contenttweaker:coin_rare",
	"contenttweaker:coin_legendary",
	"contenttweaker:coin_mythic"
];
for tag_evolution_craft_coin in addingEvolutionCraftCoin {
	<tag:items:evolution_craft:coins>.add(<item:${tag_evolution_craft_coin}>);
}

// Evolution Craft - Fragment
var addingEvolutionCraftFragment = [
	"contenttweaker:evolution_craft/fragment/amethyst_fragment",
	"contenttweaker:evolution_craft/fragment/crystal_fragment",
	"contenttweaker:evolution_craft/fragment/diamond_fragment",
	"contenttweaker:evolution_craft/fragment/emerald_fragment",
	"contenttweaker:evolution_craft/fragment/hematite_fragment",
	"contenttweaker:evolution_craft/fragment/ruby_fragment",
	"contenttweaker:evolution_craft/fragment/sapphire_fragment",
	"contenttweaker:evolution_craft/fragment/topaz_fragment",
	"contenttweaker:evolution_craft/fragment/tourmaline_fragment"
];
for tag_evolution_craft_fragment in addingEvolutionCraftFragment {
	<tag:items:evolution_craft:fragments>.add(<item:${tag_evolution_craft_fragment}>);
}

// Evolution Craft - Parts
var addingEvolutionCraftPart = [
	"contenttweaker:common_part",
	"contenttweaker:uncommon_part",
	"contenttweaker:rare_part",
	"contenttweaker:epic_part",
	"contenttweaker:leggendary_part",
	"contenttweaker:mythic_part",
	"contenttweaker:relic_part",
	"contenttweaker:masterwork_part",
	"contenttweaker:eternal_part",
	"contenttweaker:ultimate_part"
];
for tag_evolution_craft_part in addingEvolutionCraftPart {
	<tag:items:evolution_craft:parts>.add(<item:${tag_evolution_craft_part}>);
}

// Evolution Craft - Parts Middle
var addingEvolutionCraftPartMiddle = [
	"contenttweaker:common_part_middle"
];
for tag_evolution_craft_part_middle in addingEvolutionCraftPartMiddle {
	<tag:items:evolution_craft:parts/middle>.add(<item:${tag_evolution_craft_part_middle}>);
}

// Evolution Craft - Ingots
var addingEvolutionCraftIngot = [
	"contenttweaker:lapis_ingot_alloy",
	"contenttweaker:lapis_iron_compound",
	"contenttweaker:redstone_ingot_alloy",
	"contenttweaker:redstone_iron_compound"
];
for tag_evolution_craft_ingot in addingEvolutionCraftIngot {
	<tag:items:evolution_craft:ingors>.add(<item:${tag_evolution_craft_ingot}>);
	<tag:items:forge:ingors>.add(<item:${tag_evolution_craft_ingot}>);
}

Globals.endScript("tag/evolution_craft");