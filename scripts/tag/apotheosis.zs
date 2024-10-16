/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 980

Globals.startScript("tag/apotheosis");
Globals.priorityScript("980");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Spearfishing Drops
var addingApotheosisSpearfishingDrops = [
	"netherdepthsupgrade:bonefish",
	"netherdepthsupgrade:blazefish",
	"netherdepthsupgrade:eyeball_fish",
	"netherdepthsupgrade:fortress_grouper",
	"netherdepthsupgrade:glowdine",
	"netherdepthsupgrade:lava_pufferfish",
	"netherdepthsupgrade:magmacubefish",
	"netherdepthsupgrade:obsidianfish",
	"netherdepthsupgrade:searing_cod",
	"netherdepthsupgrade:soulsucker",
	"netherdepthsupgrade:wither_bonefish"
];
for tag_apotheosis_spearfishing_drops in addingApotheosisSpearfishingDrops {
	<tag:items:apotheosis:spearfishing_drops>.add(<item:${tag_apotheosis_spearfishing_drops}>);
}

Globals.endScript("tag/apotheosis");