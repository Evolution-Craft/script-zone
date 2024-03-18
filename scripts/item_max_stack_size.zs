/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Modify Item Max Stack Size.
 */

Globals.startScript("item_max_stack_size");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;

var itemSetMaxStackSize = {
	"minecraft:egg" : 64,
	"minecraft:ender_pearl" : 64,
	"minecraft:snowball" : 64,
	"quark:egg_parrot_blue" : 64,
	"quark:egg_parrot_green" : 64,
	"quark:egg_parrot_grey" : 64,
	"quark:egg_parrot_red_blue" : 64,
	"quark:egg_parrot_yellow_blue" : 64,
	"powah:charged_snowball" : 64,
	"unusualend:ender_firefly_egg" : 64
};
for itemSetMaxStackSizeMaterial, itemSetMaxStackSizeValue in itemSetMaxStackSize {
	<item:${itemSetMaxStackSizeMaterial}>.setMaxStackSize(itemSetMaxStackSizeValue);
}

Globals.endScript("item_max_stack_size");