/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 * v0.2 : Add Knife Info.
 * v0.3 : Rework.
 */

Globals.startScript("jei_info/evolution_craft");
Globals.priorityScript("Null");

packJeiDescripton(<item:contenttweaker:common_part>, "Common Part this is ingradient for advance recipe.");
packJeiDescripton(<item:contenttweaker:common_part>, "Ingradiant for Evolution Common Part, to be smelt on Constantan for create Common Part");
packJeiDescripton(<item:contenttweaker:uncommon_part>, "Uncommon Part this is ingradient for advance recipe.");
packJeiDescripton(<item:contenttweaker:rare_part>, "Rare Part this is ingradient for advance recipe.");
packJeiDescripton(<item:contenttweaker:epic_part>, "Epic Part this is ingradient for advance recipe.");
packJeiDescripton(<item:contenttweaker:leggendary_part>, "Leggendary Part this is ingradient for advance recipe.");
packJeiDescripton(<item:contenttweaker:mythic_part>, "Mythic Part this is ingradient for advance recipe.");
packJeiDescripton(<item:contenttweaker:relic_part>, "Relic Part this is ingradient for advance recipe.");
packJeiDescripton(<item:contenttweaker:masterwork_part>, "Masterwork Part this is ingradient for advance recipe.");
packJeiDescripton(<item:contenttweaker:eternal_part>, "Eternal Part this is ingradient for advance recipe.");
packJeiDescripton(<item:contenttweaker:ultimate_part>, "Ultimate Part this is ingradient for advance recipe.");
packJeiDescripton(<item:contenttweaker:coin_common>, "Using for buy quest items.");
packJeiDescripton(<item:contenttweaker:coin_rare>, "Using for buy quest items.");
packJeiDescripton(<item:contenttweaker:coin_legendary>, "Using for buy quest items.");
packJeiDescripton(<item:contenttweaker:coin_mythic>, "Using for buy quest items.");

var addingKnifeInfo = [
	"knife/copper_knife",
	"knife/steel_knife"
];
for knife_add_info in addingKnifeInfo {
	packJeiDescripton(<item:contenttweaker:${knife_add_info}>, "Knives are lightweight melee weapon. They can harvest Straw from grasses, and guarantee secondary drops from animals.");
}

Globals.endScript("jei_info/evolution_craft");