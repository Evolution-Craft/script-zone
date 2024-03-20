/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("jei_info/evolution_craft");
Globals.priorityScript("Null");

import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_evolution_craft(m_evolution_craft as IItemStack, s_evolution_craft as string) as void {
	JEI.addDescription(m_evolution_craft, [s_evolution_craft]);	
}

i_evolution_craft(<item:contenttweaker:common_part>, "---????---");
i_evolution_craft(<item:contenttweaker:common_part>, "Ingradiant for Evolution Common Part, to be smelt on Constantan for create Common Part");
i_evolution_craft(<item:contenttweaker:uncommon_part>, "---????---");
i_evolution_craft(<item:contenttweaker:rare_part>, "---????---");
i_evolution_craft(<item:contenttweaker:epic_part>, "---????---");
i_evolution_craft(<item:contenttweaker:leggendary_part>, "---????---");
i_evolution_craft(<item:contenttweaker:mythic_part>, "---????---");
i_evolution_craft(<item:contenttweaker:relic_part>, "---????---");
i_evolution_craft(<item:contenttweaker:masterwork_part>, "---????---");
i_evolution_craft(<item:contenttweaker:eternal_part>, "---????---");
i_evolution_craft(<item:contenttweaker:ultimate_part>, "---????---");

Globals.endScript("jei_info/evolution_craft");