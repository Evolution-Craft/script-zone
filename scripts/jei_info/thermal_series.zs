/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Issue.
 */

println("Start script/jei_info/thermal_series.");
println("Script Priority Null.");

import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_thermal_series(m_thermal_series as IItemStack, s_thermal_series as string) as void {
	JEI.addDescription(m_thermal_series, [s_thermal_series]);	
}

i_thermal_series(<item:thermal:compost>, "Crafting in Batch Composter.");

println("End script/jei_info/thermal_series.");