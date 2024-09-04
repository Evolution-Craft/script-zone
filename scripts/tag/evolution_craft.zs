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
	"contenttweaker:evolution_craft/book/old_book",
	"contenttweaker:evolution_craft/book/rexs_book"
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
	"contenttweaker:prismarine_ingot_alloy",
	"contenttweaker:redstone_ingot_alloy",
	"contenttweaker:redstone_iron_compound"
];
for tag_evolution_craft_ingot in addingEvolutionCraftIngot {
	<tag:items:evolution_craft:ingors>.add(<item:${tag_evolution_craft_ingot}>);
	<tag:items:forge:ingors>.add(<item:${tag_evolution_craft_ingot}>);
}

// Evolution Craft - Bundles
var addingEvolutionCraftBundles = [
	"bambooeverything:bamboo_bundle",
	"bambooeverything:dry_bamboo_bundle"
];
for tag_evolution_craft_bundles in addingEvolutionCraftBundles {
	<tag:items:evolution_craft:bundles>.add(<item:${tag_evolution_craft_bundles}>);
}

// Evolution Craft - Coral
var addingEvolutionCraftCoralBlue = [
	"minecraft:tube_coral_block",
	"minecraft:tube_coral",
	"minecraft:tube_coral_fan"
];
for tag_tag_evolution_craft_coral_blue in addingEvolutionCraftCoralBlue {
	<tag:items:evolution_craft:coral>.add(<item:${tag_tag_evolution_craft_coral_blue}>);
	<tag:items:evolution_craft:coral/blue>.add(<item:${tag_tag_evolution_craft_coral_blue}>);
}

var addingEvolutionCraftCoralMagenta = [
	"minecraft:bubble_coral_block",
	"minecraft:bubble_coral",
	"minecraft:bubble_coral_fan"
];
for tag_tag_evolution_craft_coral_magenta in addingEvolutionCraftCoralMagenta {
	<tag:items:evolution_craft:coral>.add(<item:${tag_tag_evolution_craft_coral_magenta}>);
	<tag:items:evolution_craft:coral/magenta>.add(<item:${tag_tag_evolution_craft_coral_magenta}>);
}

var addingEvolutionCraftCoralPink = [
	"minecraft:brain_coral_block",
	"minecraft:brain_coral",
	"minecraft:brain_coral_fan"
];
for tag_tag_evolution_craft_coral_pink in addingEvolutionCraftCoralPink {
	<tag:items:evolution_craft:coral>.add(<item:${tag_tag_evolution_craft_coral_pink}>);
	<tag:items:evolution_craft:coral/pink>.add(<item:${tag_tag_evolution_craft_coral_pink}>);
}

var addingEvolutionCraftCoralRed = [
	"minecraft:fire_coral_block",
	"minecraft:fire_coral",
	"minecraft:fire_coral_fan"
];
for tag_tag_evolution_craft_coral_red in addingEvolutionCraftCoralRed {
	<tag:items:evolution_craft:coral>.add(<item:${tag_tag_evolution_craft_coral_red}>);
	<tag:items:evolution_craft:coral/red>.add(<item:${tag_tag_evolution_craft_coral_red}>);
}

var addingEvolutionCraftCoralYellow = [
	"minecraft:horn_coral_block",
	"minecraft:horn_coral",
	"minecraft:horn_coral_fan",
];
for tag_tag_evolution_craft_coral_yellow in addingEvolutionCraftCoralYellow {
	<tag:items:evolution_craft:coral>.add(<item:${tag_tag_evolution_craft_coral_yellow}>);
	<tag:items:evolution_craft:coral/yellow>.add(<item:${tag_tag_evolution_craft_coral_yellow}>);
}

// Evolution Craft - Dead Coral
var addingEvolutionCraftDeadCoral = [
	"minecraft:dead_tube_coral_block",
	"minecraft:dead_tube_coral",
	"minecraft:dead_tube_coral_fan",
	"minecraft:dead_brain_coral_block",
	"minecraft:dead_brain_coral",
	"minecraft:dead_brain_coral_fan",
	"minecraft:dead_bubble_coral_block",
	"minecraft:dead_bubble_coral",
	"minecraft:dead_bubble_coral_fan",
	"minecraft:dead_fire_coral_block",
	"minecraft:dead_fire_coral",
	"minecraft:dead_fire_coral_fan",
	"minecraft:dead_horn_coral_block",
	"minecraft:dead_horn_coral",
	"minecraft:dead_horn_coral_fan"
];
for tag_tag_evolution_craft_dead_coral in addingEvolutionCraftDeadCoral {
	<tag:items:evolution_craft:dead_coral>.add(<item:${tag_tag_evolution_craft_dead_coral}>);
	<tag:items:evolution_craft:coral/gray>.add(<item:${tag_tag_evolution_craft_dead_coral}>);
}

// Evolution Craft - Glow
var addingEvolutionCraftGlow = [
	"minecraft:glowstone_dust",
	"minecraft:glow_lichen",
	"minecraft:glow_berries"
];
for tag_evolution_craft_glow in addingEvolutionCraftGlow {
	<tag:items:evolution_craft:glow>.add(<item:${tag_evolution_craft_glow}>);
}

// Evolution Craft - Milk
var addingEvolutionCraftMilk = [
	"croptopia:milk_bottle",
	"croptopia:soy_milk"
];
for tag_evolution_craft_milk in addingEvolutionCraftMilk {
	<tag:items:evolution_craft:milk>.add(<item:${tag_evolution_craft_milk}>);
}

// Evolution Craft - Podzol
var addingEvolutionCraftPodzol = [
	"minecraft:mycelium",
	"minecraft:podzol"
];
for tag_evolution_craft_podzol in addingEvolutionCraftPodzol {
	<tag:items:evolution_craft:dirt/podzol>.add(<item:${tag_evolution_craft_podzol}>);
}

Globals.endScript("tag/evolution_craft");