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

// Evolution Craft - Books
var addingBookInfo = [
	"evolution_craft/book/cursed_book",
	"evolution_craft/book/grimoire_book",
	"evolution_craft/book/herobrines_book",
	"evolution_craft/book/knowledge_book",
	"evolution_craft/book/monster_book",
	"evolution_craft/book/necronomicon_book",
	"evolution_craft/book/notchs_book",
	"evolution_craft/book/old_book",
	"evolution_craft/book/rexs_book"
];
for book_add_info in addingBookInfo {
	packJeiDescripton(<item:contenttweaker:${book_add_info}>, "This is a part of Book Set, random Leggendary drop in Abandoned Mineshaft, Bastion, Jungle Temple, Pillager Outpost, Shipwreck Treasure, Stronghold Library, Woodland Mansion, World Treasure ");
}

// Evolution Craft - Coins
var addingCoinInfo = [
	"coin_common",
	"coin_rare",
	"coin_legendary",
	"coin_mythic"
];
for coin_add_info in addingCoinInfo {
	packJeiDescripton(<item:contenttweaker:${coin_add_info}>, "Using for buy quest items.");
}

// Evolution Craft - Knife
var addingKnifeInfo = [
	"evolution_craft/knife/copper_knife",
	"evolution_craft/knife/steel_knife",
	"evolution_craft/knife/stone_knife",
	"evolution_craft/knife/wooden_knife"
];
for knife_add_info in addingKnifeInfo {
	packJeiDescripton(<item:contenttweaker:${knife_add_info}>, "Knives are lightweight melee weapon. They can harvest Straw from grasses, and guarantee secondary drops from animals.");
}

Globals.endScript("jei_info/evolution_craft");