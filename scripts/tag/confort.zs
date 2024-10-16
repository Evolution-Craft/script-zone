/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 988

Globals.startScript("tag/confort");
Globals.priorityScript("988");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Sleeping Bag
for tag_conforts in Constant.packColours {
	<tag:items:comforts:sleeping_bag>.add(<item:comforts:sleeping_bag_${tag_conforts}>);
}

Globals.endScript("tag/confort");