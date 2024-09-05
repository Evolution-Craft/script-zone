/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

#priority 979

Globals.startScript("tag/croptopia");
Globals.priorityScript("979");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Fishes
var addingCroptopiaFishes = [
	//"netherdepthsupgrade:bonefish",
	//"netherdepthsupgrade:blazefish",
	"netherdepthsupgrade:eyeball_fish",
	"netherdepthsupgrade:fortress_grouper",
	//"netherdepthsupgrade:glowdine",
	"netherdepthsupgrade:lava_pufferfish",
	"netherdepthsupgrade:magmacubefish",
	//"netherdepthsupgrade:obsidianfish",
	"netherdepthsupgrade:searing_cod",
	"netherdepthsupgrade:soulsucker",
	//"netherdepthsupgrade:wither_bonefish"
];
for tag_croptopia_fishes in addingCroptopiaFishes {
	<tag:items:croptopia:fishes>.add(<item:${tag_croptopia_fishes}>);
}

Globals.endScript("tag/croptopia");