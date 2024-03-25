/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

#priority 1499

Globals.startScript("class_constant");
Globals.priorityScript("1499");

public class Constant {

    public static val packColours as string[] = [
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
	public static val packColours_Load as string = "packColours Load Completed";
}

println("          Class Constant Loading...          ");
println("          -> " + Constant.packColours_Load  + "          ");
println("          Class Constant Loading Completed          ");
Globals.endScript("class_constant");