import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_evolution_craft(m_evolution_craft as IItemStack, s_evolution_craft as string) as void {
	JEI.addDescription(m_evolution_craft, [s_evolution_craft]);	
}

i_evolution_craft(<item:contenttweaker:common_part>, "---????---");
i_evolution_craft(<item:contenttweaker:uncommon_part>, "---????---");
i_evolution_craft(<item:contenttweaker:rare_part>, "---????---");
i_evolution_craft(<item:contenttweaker:epic_part>, "---????---");
i_evolution_craft(<item:contenttweaker:leggendary_part>, "---????---");