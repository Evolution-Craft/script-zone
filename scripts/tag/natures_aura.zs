/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Missing Logs and Woods.
 */

#priority 995

println("Start script/tag natures_aura.");
println("Script Priority 995.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Ancient Log
var addingAnciantLogsNaturesAura = [
	"naturesaura:ancient_log",
	"naturesaura:ancient_bark"
];
for tag_ancient_logs_natures_aura in addingAnciantLogsNaturesAura{
	<tag:items:naturesaura:ancient_logs>.add(<item:${tag_ancient_logs_natures_aura}>);
}

println("End script/tag natures_aura.");