/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("jei_info/bushier_flowers");
Globals.priorityScript("Null");

var addingBushierFlowersGrownInfo = [
	"grown_allium",
	"grown_azure_bluet",
	"grown_blue_orchid",
	"grown_cornflower",
	"grown_dandelion",	
	"grown_lily",
	"grown_orange_tulip",
	"grown_oxeye_daisy",
	"grown_pink_tulip",
	"grown_poppy",
	"grown_red_tulip",
	"grown_white_tulip",
	"grown_wither_rose"
];
for bushier_flowers_grown_add_info in addingBushierFlowersGrownInfo {
	packJeiDescripton(<item:bushierflowers:${bushier_flowers_grown_add_info}>, "Obtine when right-clicking Vanilla Flowers with Bonemeal. Grown Flowers drop their respective Vanilla Flower when broken or Bonemealed. Grown Flowers can be mined with Silk Touch or Shears to receive a Bouquet, these can be placed in Pots. Grown Flowers can be used to pollinate and breed bees.");
}

Globals.endScript("jei_info/bushier_flowers");