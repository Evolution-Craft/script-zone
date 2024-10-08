/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 1500

Globals.startScript("advance_evolution_craft_settings");
Globals.priorityScript("1500");

public class packModeSetting {

	private static val pack_mode_expert_recipe_armor_enable as string = true;
	private static val pack_mode_expert_recipe_bucket_enable as string = true;
	private static val pack_mode_expert_recipe_evolution_part_enable as string = true;
	private static val pack_mode_expert_recipe_furnace_enable as string = true;
	private static val pack_mode_expert_recipe_hopper_enable as string = true;
	private static val pack_mode_expert_recipe_horse_armor_enable as string = true;
	private static val pack_mode_expert_recipe_knife_enable as string = true;
	private static val pack_mode_expert_recipe_log_enable as string = true;
	private static val pack_mode_expert_recipe_plate_enable as string = true;
	private static val pack_mode_expert_recipe_shears_enable as string = true;

	private static val pack_mode_expert_recipe_toms_storage_enable as string = true;

	private static val quantity_planks_from_log as int = 2;

	private static val quantity_plate_from_ingradient_in_metal_press as int = 4;
	private static val quantity_plate_from_ingradient_in_multiservo_press as int = 2;
	private static val quantity_plate_from_ingradient_in_casting_basing as int = 810;

	private static val quantity_potion_stack_size as int = 3;
	private static val quantity_splash_potion_stack_size as int = 3;
	private static val quantity_lingering_potion_stack_size as int = 3;

	private static val quantity_totem_of_undying_stack_size as int = 4;

	public static packModeSettingArmors() as string {
		return pack_mode_expert_recipe_armor_enable;
	}
	public static val packModeSettingArmors_Set as string = "packModeSettingArmors Set: " + pack_mode_expert_recipe_armor_enable;
	public static val packModeSettingArmors_Load as string = "packModeSettingArmors Load Completed";

	public static packModeSettingBuckets() as string {
		return pack_mode_expert_recipe_bucket_enable;
	}
	public static val packModeSettingBuckets_Set as string = "packModeSettingBuckets Set: " + pack_mode_expert_recipe_bucket_enable;
	public static val packModeSettingBuckets_Load as string = "packModeSettingBuckets Load Completed";

	public static packModeSettingEvolutionParts() as string {
		return pack_mode_expert_recipe_evolution_part_enable;
	}
	public static val packModeSettingEvolutionParts_Set as string = "packModeSettingEvolutionParts Set: " + pack_mode_expert_recipe_evolution_part_enable;
	public static val packModeSettingEvolutionParts_Load as string = "packModeSettingEvolutionParts Load Completed";

	public static packModeSettingFurnaces() as string {
		return pack_mode_expert_recipe_furnace_enable;
	}
	public static val packModeSettingFurnaces_Set as string = "packModeSettingFurnaces Set: " + pack_mode_expert_recipe_furnace_enable;
	public static val packModeSettingFurnaces_Load as string = "packModeSettingFurnaces Load Completed";

	public static packModeSettingHoppers() as string {
		return pack_mode_expert_recipe_hopper_enable;
	}
	public static val packModeSettingHoppers_Set as string = "packModeSettingHoppers Set: " + pack_mode_expert_recipe_hopper_enable;
	public static val packModeSettingHoppers_Load as string = "packModeSettingHoppers Load Completed";

	public static packModeSettingHorseArmors() as string {
		return pack_mode_expert_recipe_horse_armor_enable;
	}
	public static val packModeSettingHorseArmors_Set as string = "packModeSettingHorseArmors Set: " + pack_mode_expert_recipe_horse_armor_enable;
	public static val packModeSettingHorseArmors_Load as string = "packModeSettingHorseArmors Load Completed";

	public static packModeSettingKnife() as string {
		return pack_mode_expert_recipe_knife_enable;
	}
	public static val packModeSettingKnife_Set as string = "packModeSettingKnife Set: " + pack_mode_expert_recipe_knife_enable;
	public static val packModeSettingKnife_Load as string = "packModeSettingKnife Load Completed";

	public static packModeSettingTomsStorage() as string {
		return pack_mode_expert_recipe_toms_storage_enable;
	}
	public static val packModeSettingTomsStorage_Set as string = "packModeSettingTomsStorage Set: " + pack_mode_expert_recipe_toms_storage_enable;
	public static val packModeSettingTomsStorage_Load as string = "packModeSettingTomsStorage Load Completed";

	public static packModeSettingLogs() as string {
		return pack_mode_expert_recipe_log_enable;
	}
	public static val packModeSettingLogs_Set as string = "packModeSettingLogs Set: " + pack_mode_expert_recipe_log_enable;
	public static val packModeSettingLogs_Load as string = "packModeSettingLogs Load Completed";

	public static packModeSettingPlates() as string {
		return pack_mode_expert_recipe_plate_enable;
	}
	public static val packModeSettingPlates_Set as string = "packModeSettingPlates Set: " + pack_mode_expert_recipe_plate_enable;
	public static val packModeSettingPlates_Load as string = "packModeSettingPlates Load Completed";

	public static packModeSettingShears() as string {
		return pack_mode_expert_recipe_shears_enable;
	}
	public static val packModeSettingShears_Set as string = "packModeSettingShears Set: " + pack_mode_expert_recipe_shears_enable;
	public static val packModeSettingShears_Load as string = "packModeSettingShears Load Completed";

	public static packModeSettingLogsCount() as int {
		return quantity_planks_from_log;
	}
	public static val packModeSettingLogsCount_Set as string = "packModeSettingLogs Quantity: " + quantity_planks_from_log;

	public static packModeSettingPlateMetalPress() as int {
		return quantity_plate_from_ingradient_in_metal_press;
	}
	public static val packModeSettingPlateMetalPressCount_Set as string = "packModeSettingPlates Quantity: " + quantity_plate_from_ingradient_in_metal_press;

	public static packModeSettingPlateMultiPress() as int {
		return quantity_plate_from_ingradient_in_multiservo_press;
	}
	public static val packModeSettingPlateMultiPressCount_Set as string = "packModeSettingPlates Quantity: " + quantity_plate_from_ingradient_in_multiservo_press;

	public static packModeSettingPlateCastingBasing() as int {
		return quantity_plate_from_ingradient_in_casting_basing;
	}
	public static val packModeSettingPlateMultiCastingBasing_Set as string = "packModeSettingPlates Quantity: " + quantity_plate_from_ingradient_in_casting_basing;

	public static packModeSettingPotionStackSize() as int {
		return quantity_potion_stack_size;
	}
	public static val packModeSettingPotionStackSize_Set as string = "packModeSettingPotionStackSize Value: " + quantity_potion_stack_size;

	public static packModeSettingSplashPotionStackSize() as int {
		return quantity_splash_potion_stack_size;
	}
	public static val packModeSettingSplashPotionStackSize_Set as string = "packModeSettingSplashPotionStackSize Value: " + quantity_splash_potion_stack_size;

	public static packModeSettingLingeringPotionStackSize() as int {
		return quantity_lingering_potion_stack_size;
	}
	public static val packModeSettingLingeringPotionStackSize_Set as string = "packModeSettingLingeringPotionStackSize Value: " + quantity_lingering_potion_stack_size;

	public static packModeSettingTotemOfUndyingStackSize() as int {
		return quantity_totem_of_undying_stack_size;
	}
	public static val packModeSettingTotemOfUndyingStackSize_Set as string = "packModeSettingTotemOfUndyingStackSize Value: " + quantity_totem_of_undying_stack_size;
}

println("          Pack Mode Settings...          ");
println("          -> " + packModeSetting.packModeSettingArmors_Set + "          ");
println("          -> " + packModeSetting.packModeSettingArmors_Load + "          ");
println("          -> " + packModeSetting.packModeSettingBuckets_Set + "          ");
println("          -> " + packModeSetting.packModeSettingBuckets_Load + "          ");
println("          -> " + packModeSetting.packModeSettingEvolutionParts_Set + "          ");
println("          -> " + packModeSetting.packModeSettingEvolutionParts_Load + "          ");
println("          -> " + packModeSetting.packModeSettingFurnaces_Set + "          ");
println("          -> " + packModeSetting.packModeSettingFurnaces_Load + "          ");
println("          -> " + packModeSetting.packModeSettingHoppers_Set + "          ");
println("          -> " + packModeSetting.packModeSettingHoppers_Load + "          ");
println("          -> " + packModeSetting.packModeSettingHorseArmors_Set + "          ");
println("          -> " + packModeSetting.packModeSettingHorseArmors_Load + "          ");
println("          -> " + packModeSetting.packModeSettingKnife_Set + "          ");
println("          -> " + packModeSetting.packModeSettingKnife_Load + "          ");
println("          -> " + packModeSetting.packModeSettingTomsStorage_Set + "          ");
println("          -> " + packModeSetting.packModeSettingTomsStorage_Load + "          ");
println("          -> " + packModeSetting.packModeSettingLogs_Set + "          ");
println("          -> " + packModeSetting.packModeSettingLogsCount_Set + "          ");
println("          -> " + packModeSetting.packModeSettingLogs_Load + "          ");
println("          -> " + packModeSetting.packModeSettingPlates_Set + "          ");
println("          -> " + packModeSetting.packModeSettingPlateMetalPressCount_Set + " In Metal Press         ");
println("          -> " + packModeSetting.packModeSettingPlateMultiPressCount_Set + " In Multiservo Press         ");
println("          -> " + packModeSetting.packModeSettingPlateMultiCastingBasing_Set + " In Casting Basing         ");
println("          -> " + packModeSetting.packModeSettingPlates_Load + "          ");
println("          -> " + packModeSetting.packModeSettingShears_Set + "          ");
println("          -> " + packModeSetting.packModeSettingShears_Load + "          ");
println("          -> " + packModeSetting.packModeSettingPotionStackSize_Set + "          ");
println("          -> " + packModeSetting.packModeSettingSplashPotionStackSize_Set + "          ");
println("          -> " + packModeSetting.packModeSettingLingeringPotionStackSize_Set + "          ");
println("          -> " + packModeSetting.packModeSettingTotemOfUndyingStackSize_Set + "          ");
println("          Pack Mode Settings Loading Completed          ");
Globals.endScript("advance_evolution_craft_settings");