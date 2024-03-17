/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

#priority 1500

// TODO : under work

Globals.startScript("Pack Mode Settings...");
Globals.priorityScript("1500");

public class packModeSetting {

	private static val pack_mode_expert_recipe_armor_enable as string = "true";
	private static val pack_mode_expert_recipe_bucket_enable as string = "true";
	private static val pack_mode_expert_recipe_furnace_enable as string = "true";
	private static val pack_mode_expert_recipe_hopper_enable as string = "true";
	private static val pack_mode_expert_recipe_horse_armor_enable as string = "true";
	private static val pack_mode_expert_recipe_log_enable as string = "true";
	private static val pack_mode_expert_recipe_shears_enable as string = "true";
	
	private static val log_to_planks as string = "2";

	public static packModeSettingLogs(packModeSettingLogs as string) as void {
		packModeSettingLogs = pack_mode_expert_recipe_log_enable;
	}

	public static packModeSettingLogsCount(packModeSettingLogsCount as string) as void {
		packModeSettingLogsCount = log_to_planks;
	}
}

Globals.endScript("Pack Mode Settings Loading Completed");