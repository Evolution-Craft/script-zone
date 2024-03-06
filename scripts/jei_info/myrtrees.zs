/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

println("Start script/jei_info/myrtrees.");
println("Script Priority Null.");

import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_myrtrees(m_myrtrees as IItemStack, s_myrtrees as string) as void {
	JEI.addDescription(m_myrtrees, [s_myrtrees]);	
}

i_myrtrees(<item:myrtrees:tree_tap>, "Tap in Rubberwood Log for extrat Latex Liquid.");
i_myrtrees(<item:myrtrees:wooden_bucket>, "Position in front of Tree Tap for collect the Latex Liquid, tap with Right Click for collect Latex.");
i_myrtrees(<item:myrtrees:latex>, "Extract from Ruberwood Log using Tree Tap and Wooden Bucket.");
i_myrtrees(<item:myrtrees:rubberwood_log>, "Rubberwood Tree spawning in Savana.");

println("End script/jei_info/myrtrees.");