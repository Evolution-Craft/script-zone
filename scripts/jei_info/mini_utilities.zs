/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

println("Start script/jei_info/mini_utilities.");
println("Script Priority Null.");

import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_mini_utilities(m_mini_utilities as IItemStack, s_mini_utilities as string) as void {
	JEI.addDescription(m_mini_utilities, [s_mini_utilities]);	
}

i_mini_utilities(<item:miniutilities:quantum_quarry>, "Using on extra planet, for dropping a specific ore.");
i_mini_utilities(<item:miniutilities:cursed_earth>, "Spawns more hostile mobs, light level of five and above stops spawns.");
i_mini_utilities(<item:miniutilities:blessed_earth>, "Spawns more neutral mobs.");
i_mini_utilities(<item:miniutilities:blursed_earth>, "Spawns more hostile and neutral mobs, light level of five and above stops spawns.");
i_mini_utilities(<item:miniutilities:lapis_lamp>, "Lights up without blocking the spawn.");

println("End script/jei_info/mini_utilities.");