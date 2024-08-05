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

public function packJeiDescripton(item_description as crafttweaker.api.item.IItemStack, text_description as string) as void {
	mods.jei.JEI.addDescription(item_description, [text_description]);	
}
val packJeiDescripton_Load as string = "packJeiDescripton Load Completed";

println("          Class Function Loading...          ");
println("          -> " + packJeiDescripton_Load + "          ");
println("          Class Function Loading Completed          ");
Globals.endScript("class_function");