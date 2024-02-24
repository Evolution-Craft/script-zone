import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_vinery(m_vinery as IItemStack, s_vinery as string) as void {
	JEI.addDescription(m_vinery, [s_vinery]);	
}

i_vinery(<item:vinery:apple_mash>, "Crafting in Apple Press.");