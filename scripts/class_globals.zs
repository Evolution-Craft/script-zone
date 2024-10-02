/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 2000

println("===============================================================");
println("          Starting Script: class_global          ");
println("===============================================================");
println("          Script Priority: 2000         ");
println("===============================================================");
println("          Class Globals Loading...          ");

public class Globals {

	private static val Equals_Separator as string = "===============================================================";

	public static startScript(scriptName as string) as void {
		println(Equals_Separator);
		println("          Starting Script: " + scriptName + "          ");
		println(Equals_Separator);
	}
	public static val startScript_Load as string = "startScript Load Completed";

	public static endScript(scriptName as string) as void {
		println(Equals_Separator);
		println("          Ending Script: " + scriptName  + "          ");
		println(Equals_Separator);
	}
	public static val endScript_Load as string = "endScript Load Completed";

	public static priorityScript(scriptName as string) as void {
		println("          Script Priority: " + scriptName  + "          ");
		println(Equals_Separator);
	}
	public static val priorityScript_Load as string = "priorityScript Load Completed";

	public static packExpertScript(scriptName as string) as void {
		println("          Pack Mode Expert Recipe: " + scriptName  + "          ");
		println(Equals_Separator);
	}
	public static val packExpertScript_Load as string = "packExpertScript Load Completed";
}

println("          -> " + Globals.startScript_Load + "          ");
println("          -> " + Globals.endScript_Load + "          ");
println("          -> " + Globals.priorityScript_Load + "          ");
println("          -> " + Globals.packExpertScript_Load + "          ");
println("          Class Globals Loading Completed          ");
println("===============================================================");
println("          Ending Script: class_global          ");
println("===============================================================");