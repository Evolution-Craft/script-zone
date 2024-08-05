/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

#priority 1498

Globals.startScript("class_function");
Globals.priorityScript("1498");

import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

public class Function {

	public function packAddJeiDescription(item_description as IItemStack, text_description as string) as void {
		JEI.addDescription(item_description, [text_description]);	
	}
	public static val packAddJeiDescription_Load as string = "packAddJeiDescription Load Completed";
}

println("          Class Function Loading...          ");
println("          -> " + Function.packAddJeiDescription_Load  + "          ");
println("          Class Function Loading Completed          ");
Globals.endScript("class_function");