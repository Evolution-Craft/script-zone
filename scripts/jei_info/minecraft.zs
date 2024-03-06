/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

println("Start script/jei_info/minecraft.");
println("Script Priority Null.");

import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_minecraft(m_minecraft as IItemStack, s_minecraft as string) as void {
	JEI.addDescription(m_minecraft, [s_minecraft]);	
}

var itemDyeMinecraftInfo = [
	"black",
	"blue",
	"brown",
	"cyan",
	"gray",
	"green",
	"light_blue",
	"light_gray",
	"lime",
	"magenta",
	"orange",
	"pink",
	"purple",
	"red",
	"yellow",
	"white"
];

val s_minecraft_concrete_powder = "Drop it into water for transforming into concrete.";

for minecraft_concrete_dye_add_info in itemDyeMinecraftInfo {
	i_minecraft(<item:minecraft:${minecraft_concrete_dye_add_info}_concrete_powder>, s_minecraft_concrete_powder);
}

println("End script/jei_info/minecraft.");