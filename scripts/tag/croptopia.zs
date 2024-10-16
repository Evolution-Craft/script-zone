/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 979

Globals.startScript("tag/croptopia");
Globals.priorityScript("979");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Fishes
var addingCroptopiaFishes = [
	"netherdepthsupgrade:eyeball_fish",
	"netherdepthsupgrade:fortress_grouper",
	"netherdepthsupgrade:lava_pufferfish",
	"netherdepthsupgrade:magmacubefish",
	"netherdepthsupgrade:searing_cod",
	"netherdepthsupgrade:soulsucker"
];
for tag_croptopia_fishes in addingCroptopiaFishes {
	<tag:items:croptopia:fishes>.add(<item:${tag_croptopia_fishes}>);
}

Globals.endScript("tag/croptopia");