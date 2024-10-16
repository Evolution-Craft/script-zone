/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("jei_info/aquaculture");
Globals.priorityScript("Null");

var addingAquacultureFilletKnifeInfo = [
	"diamond_fillet_knife",
	"gold_fillet_knife",
	"iron_fillet_knife",
	"neptunium_fillet_knife",
	"stone_fillet_knife",
	"wooden_fillet_knife"
];
for aquaculture_fillet_knife_add_info in addingAquacultureFilletKnifeInfo {
	packJeiDescripton(<item:aquaculture:${aquaculture_fillet_knife_add_info}>, "Fillet Knives are lightweight melee weapon. They can harvest Straw from grasses, and guarantee secondary drops from animals.");
}

packJeiDescripton(<item:aquaculture:bobber>, "Combine in Tackle Box with Fishing Rods for apply a colored bobber. A dyeable bobber that can be dyed like leather armor. This item has only a cosmetic function.");
packJeiDescripton(<item:aquaculture:diamond_hook>, "Combine in Tackle Box with Fishing Rods for chance to not use durability.");
packJeiDescripton(<item:aquaculture:double_hook>, "Combine in Tackle Box with Fishing Rods for chance to catch two things.");
packJeiDescripton(<item:aquaculture:fishing_line>, "Combine in Tackle Box with Fishing Rods for apply a colored fishing line. A dyeable fishing line that can be dyed like leather armor.. This item has only a cosmetic function.");
packJeiDescripton(<item:aquaculture:gold_hook>, "Combine in Tackle Box with Fishing Rods for increased luck.");
packJeiDescripton(<item:aquaculture:heavy_hook>, "Combine in Tackle Box with Fishing Rods for casts shorter.");
packJeiDescripton(<item:aquaculture:iron_hook>, "Combine in Tackle Box with Fishing Rods for chance to not use durability.");
packJeiDescripton(<item:aquaculture:leech>, "Using in Tackle Box bait to increase your chances of catching a fish.");
packJeiDescripton(<item:aquaculture:light_hook>, "Combine in Tackle Box with Fishing Rods for casts further.");
packJeiDescripton(<item:aquaculture:minnow>, "Using in Tackle Box bait to increase your chances of catching a fish.");
packJeiDescripton(<item:aquaculture:nether_star_hook>, "Combine in Tackle Box with Fishing Rods for chance to not use durability and increased luck.");
packJeiDescripton(<item:aquaculture:note_hook>, "Combine in Tackle Box with Fishing Rods for audible alert when a fish is approaching.");
packJeiDescripton(<item:aquaculture:redstone_hook>, "Combine in Tackle Box with Fishing Rods for longer opportunity to reel in a fish.");
packJeiDescripton(<item:aquaculture:tackle_box>, "In it, you can store all of these items and fish bait. The Tackle Box is also where you can attatch equipment to the fishing rods.");
packJeiDescripton(<item:aquaculture:worm>, "Using in Tackle Box bait to increase your chances of catching a fish.");
packJeiDescripton(<item:aquaculture:worm_farm>, "A worm farm is a block you can craft to obtain worms that can be used as bait for fishing. You can use any of the same items that can be used in the composter. Just right click on the worm farm with an empty hand or a non-compostable item to get the worms out.");

Globals.endScript("jei_info/aquaculture");