/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 * v0.2 : Add packPotion class.
 * v0.3 : Add packBaseWoods class.
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

	public static val packBaseWoods as string[] = [
		"acacia",
		"birch",
		"crimson",
		"dark_oak",
		"jungle",
		"oak",
		"spruce",
		"warped"
	];
	public static val packBaseWoods_Load as string = "packBaseWoods Load Completed";

	public static val packPotions as string[] = [
		"alexsmobs:bug_pheromones",
		"alexsmobs:clinging",
		"alexsmobs:knockback_resistance",
		"alexsmobs:lava_vision",
		"alexsmobs:long_bug_pheromones",
		"alexsmobs:long_clinging",
		"alexsmobs:long_knockback_resistance",
		"alexsmobs:long_lava_vision",
		"alexsmobs:long_poison_resistance",
		"alexsmobs:long_soulsteal",
		"alexsmobs:poison_resistance",
		"alexsmobs:soulsteal",
		"alexsmobs:strong_knockback_resistance",
		"alexsmobs:strong_soulsteal",
		"alexsmobs:speed_iii",
		"cyclic:antigravity",
		"cyclic:attack_range",
		"cyclic:blind",
		"cyclic:butter",
		"cyclic:flight",
		"cyclic:frost_walker",
		"cyclic:gravity",
		"cyclic:haste",
		"cyclic:hunger",
		"cyclic:levitation",
		"cyclic:magnetic",
		"cyclic:reach_distance",
		"cyclic:resistance",
		"cyclic:snowwalk",
		"cyclic:strong_haste",
		"cyclic:strong_hunger",
		"cyclic:stun",
		"cyclic:swimspeed",
		"cyclic:waterwalk",
		"cyclic:wither",
		"ecologics:long_sliding",
		"ecologics:sliding",
		"enlightened_end:bounncy",
		"enlightened_end:burdened",
		"enlightened_end:frigid",
		"enlightened_end:levitation",
		"enlightened_end:resistance",
		"enlightened_end:rooted",
		"enlightened_end:suffocation",
		"enlightened_end:vitality",
		"goblintraders:absorption",
		"goblintraders:dolphins_grace",
		"goblintraders:extended_fire_resistance",
		"goblintraders:extended_invisibility",
		"goblintraders:extended_night_vision",
		"goblintraders:extended_slow_falling",
		"goblintraders:extended_water_breathing",
		"goblintraders:haste",
		"goblintraders:levitation",
		"goblintraders:luck",
		"goblintraders:powerful_instant_health",
		"goblintraders:powerful_jump_boost",
		"goblintraders:powerful_regeneration",
		"goblintraders:powerful_speed",
		"goblintraders:powerful_strength",
		"infernalexp:infection",
		"infernalexp:long_infection",
		"infernalexp:strong_infection",
		"infernalexp:long_luminous",
		"infernalexp:luminous",
		"infernalexp:strong_luminous",
		"minecraft:awkward",
		"minecraft:fire_resistance",
		"minecraft:harming",
		"minecraft:healing",
		"minecraft:invisibility",
		"minecraft:leaping",
		"minecraft:long_fire_resistance",
		"minecraft:long_invisibility",
		"minecraft:long_leaping",
		"minecraft:long_night_vision",
		"minecraft:long_poison",
		"minecraft:long_regeneration",
		"minecraft:long_slow_falling",
		"minecraft:long_slowness",
		"minecraft:long_strength",
		"minecraft:long_swiftness",
		"minecraft:long_turtle_master",
		"minecraft:long_water_breathing",
		"minecraft:long_weakness",
		"minecraft:luck",
		"minecraft:mundane",
		"minecraft:night_vision",
		"minecraft:poison",
		"minecraft:regeneration",
		"minecraft:slow_falling",
		"minecraft:slowness",
		"minecraft:strength",
		"minecraft:strong_harming",
		"minecraft:strong_healing",
		"minecraft:strong_leaping",
		"minecraft:strong_poison",
		"minecraft:strong_regeneration",
		"minecraft:strong_slowness",
		"minecraft:strong_strength",
		"minecraft:strong_swiftness",
		"minecraft:strong_turtle_master",
		"minecraft:swiftness",
		"minecraft:thick",
		"minecraft:turtle_master",
		"minecraft:water",
		"minecraft:water_breathing",
		"minecraft:weakness",
		"netherdepthsupgrade:lava_vision",
		"netherdepthsupgrade:long_lava_vision",
		"quark:long_resilience",
		"quark:resilience",
		"quark:strong_resilience",
		"tombstone:bait",
		"tombstone:discretion",
		"tombstone:earthly_garden",
		"tombstone:frostbite",
		"toughasnails:ice_resistance",
		"toughasnails:long_ice_resistance",
		"undergarden:brittleness",
		"undergarden:featherweight",
		"undergarden:glowing",
		"undergarden:long_brittleness",
		"undergarden:long_featherweight",
		"undergarden:long_glowing",
		"undergarden:long_virulent_resistance",
		"undergarden:strong_brittleness",
		"undergarden:strong_featherweight",
		"undergarden:virulent_resistance",
		"unusualend:building_potion",
		"unusualend:end_infection",
		"unusualend:health_boost",
		"unusualend:heaviness_potion",
		"unusualend:levitation",
		"unusualend:regeneration",
		"unusualend:regeneration_ii",
		"unusualend:resistance"
	];
	public static val packPotions_Load as string = "packPotions Load Completed";
}

println("          Class Constant Loading...          ");
println("          -> " + Constant.packColours_Load + "          ");
println("          -> " + Constant.packBaseWoods_Load + "          ");
println("          -> " + Constant.packPotions_Load + "          ");
println("          Class Constant Loading Completed          ");
Globals.endScript("class_constant");