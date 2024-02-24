import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_thermal_series(m_thermal_series as IItemStack, s_thermal_series as string) as void {
	JEI.addDescription(m_thermal_series, [s_thermal_series]);	
}

i_thermal_series(<item:thermal:compost>, "Crafting in Batch Composter.");