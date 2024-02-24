/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Missing Boat.
 */

#priority 996

println("Start script/tag minecaft.");
println("Script Priority 996.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Boat
var addingBoatMinecraft = [
	"quark:azalea_boat",
	"quark:blossom_boat"
];
for tag_boat_minecraft in addingBoatMinecraft{
	<tag:items:minecraft:boats>.add(<item:${tag_boat_minecraft}>);
}

println("End script/tag minecraft.");