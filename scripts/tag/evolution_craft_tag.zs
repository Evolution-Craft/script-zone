/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

#priority 991

println("Start script/tag evolution_craft.");
println("Script Priority 991.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

var addingEvolutionCraftPart = [
    "contenttweaker:common_part",
    "contenttweaker:uncommon_part",
    "contenttweaker:rare_part",
    "contenttweaker:epic_part",
    "contenttweaker:leggendary_part"
];
for tag_evolution_craft_part in addingEvolutionCraftPart{
	<tag:items:evolution_craft:parts>.add(<item:${tag_evolution_craft_part}>);
}

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

println("End script/tag evolution_craft.");