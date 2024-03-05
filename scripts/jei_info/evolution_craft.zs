/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Issue.
 */

println("Start script/jei_info/evolution_craft.");
println("Script Priority Null.");

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

println("End script/jei_info/evolution_craft.");