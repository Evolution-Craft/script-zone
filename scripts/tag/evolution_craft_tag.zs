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
for tag_evolution_craft_part in addingEvolutionCraftPart{
	<tag:items:evolution_craft:parts>.add(<item:${tag_evolution_craft_part}>);
}

// Evolution Craft - Ingots
var addingEvolutionCraftIngot = [
	"contenttweaker:lapis_ingot_alloy",
	"contenttweaker:lapis_iron_compound",
	"contenttweaker:redstone_ingot_alloy",
	"contenttweaker:redstone_iron_compound"
];
for tag_evolution_craft_ingot in addingEvolutionCraftIngot{
	<tag:items:evolution_craft:ingors>.add(<item:${tag_evolution_craft_ingot}>);
	<tag:items:forge:ingors>.add(<item:${tag_evolution_craft_ingot}>);
}

Globals.endScript("tag/evolution_craft");