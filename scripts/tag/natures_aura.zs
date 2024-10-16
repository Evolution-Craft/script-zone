/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 995

Globals.startScript("tag/natures_aura");
Globals.priorityScript("995");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Ancient Log
var addingAnciantLogsNaturesAura = [
	"naturesaura:ancient_log",
	"naturesaura:ancient_bark"
];
for tag_ancient_logs_natures_aura in addingAnciantLogsNaturesAura {
	<tag:items:naturesaura:ancient_logs>.add(<item:${tag_ancient_logs_natures_aura}>);
}

Globals.endScript("tag/natures_aura");