/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("jei_info/thermal_series");
Globals.priorityScript("Null");

import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_thermal_series(m_thermal_series as IItemStack, s_thermal_series as string) as void {
	JEI.addDescription(m_thermal_series, [s_thermal_series]);	
}

i_thermal_series(<item:thermal:compost>, "Crafting in Batch Composter.");

Globals.endScript("jei_info/thermal_series");