import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

var addingEvolutionCraft = [
    "contenttweaker:common_part",
    "contenttweaker:uncommon_part",
    "contenttweaker:rare_part",
    "contenttweaker:epic_part",
    "contenttweaker:leggendary_part",
];
for tag_evolution_craft in addingEvolutionCraft{
	<tag:items:evolution_craft:part>.add(<item:${tag_evolution_craft}>);
}