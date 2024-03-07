/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Diet uncategorized.
 * v0.2 : Add beyond_earth:cheese.
 * v0.3 : Add mythicbotany:dream_cherry and varius update.
 * v0.4 : Add supper for Unusual End, Enlightened and Enders Delight.
 * v0.5 : Alphabet correct sequence.
 * v0.6 : Add missing Aquaculture food.
 */

#priority 993

println("Start script/tag/diet.");
println("Script Priority 993.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.food.FoodData;
import crafttweaker.api.tag.manager.ITagManager;

// Sugar
var addingSugarsDiet = [
	"endersdelight:pearl_pasta_wood",
	"tmted:bottle_of_wodka",
	"tombstone:lollipop",
	"twilightdelight:aurora_ice_cream",
	"vinery:apple_mash",
	"vinery:apple_pie_slice",
	"vinery:cherry_wine",
	"vinery:jungle_grapes_red",
	"vinery:jungle_grapes_white",
	"vinery:magnetic_wine",
	"vinery:noir_wine",
	"vinery:savanna_grapes_red",
	"vinery:savanna_grapes_white",
	"vinery:taiga_grapes_red",
	"vinery:taiga_grapes_white",
	"vinery:white_grape"
];
for tag_sugars_diet in addingSugarsDiet{
	<tag:items:diet:sugars>.add(<item:${tag_sugars_diet}>);
}

// Fruit
var addingFruitsDiet = [
	"cyclic:apple_ender",
	"cyclic:apple_lofty_stature",
	"endersdelight:chorus_stew_wood",
	"endersdelight:pearl_pasta_wood",
	"endersdelight:stuffed_shulker_bowl",
	"ends_delight:chorus_succulent",
	"ends_delight:dragon_leg_with_sauce",
	"ends_delight:dragon_meat_stew",
	"ends_delight:steamed_dragon_egg",
	"enlightened_end:azure_berries",
	"enlightened_end:elevibloom",
	"enlightened_end:frost_fruit",
	"enlightened_end:glow_gourd_slice",
	"mythicbotany:dream_cherry",
	"nethersdelight:nether_skewer",
	"nethersdelight:propelpearl",
	"tconstruct:blood_bottle",
	"vinery:apple_mash",
	"vinery:apple_pie_slice",
	"vinery:cherry",
	"vinery:rotten_cherry"
];
for tag_fruits_diet in addingFruitsDiet{
	<tag:items:diet:fruits>.add(<item:${tag_fruits_diet}>);
}

// Grain
var addingGrainsDiet = [
	"endersdelight:ender_paella_wood",
	"endersdelight:pearl_pasta_wood",
	"miners_delight:noodle_soup_cup",
	"vinery:apple_pie_slice"
];
for tag_grains_diet in addingGrainsDiet{
	<tag:items:diet:grains>.add(<item:${tag_grains_diet}>);
}

// Vegetable
var addingVegetablesDiet = [
	"cyclic:apple_lofty_stature",
	"crabbersdelight:kelp_shake",
	"croptopia:chile_pepper",
	"croptopia:sea_lettuce",
	"endersdelight:stuffed_shulker_bowl",
	"ends_delight:dragon_meat_stew",
	"ends_delight:steamed_dragon_egg",
	"enlightened_end:ancient_root",
	"enlightened_end:chorus_soup",
	"miners_delight:beef_stew_cup",
	"miners_delight:baked_cave_carrot",
	"miners_delight:baked_cod_stew_cup",
	"miners_delight:beetroot_soup_cup",
	"miners_delight:bowl_of_stuffed_squid",
	"miners_delight:cave_carrot",
	"miners_delight:cave_soup_cup",
	"miners_delight:chicken_soup_cup",
	"miners_delight:fish_stew_cup",
	"miners_delight:mushroom_stew_cup",
	"miners_delight:noodle_soup_cup",
	"miners_delight:pumpkin_soup_cup",
	"miners_delight:rabbit_stew_cup",
	"miners_delight:vegetable_soup_cup",
	"nethersdelight:plate_of_stuffed_hoglin_roast",
	"nethersdelight:plate_of_stuffed_hoglin_snout",
	"nethersdelight:plate_of_stuffed_hoglin_ham",
	"oceansdelight:bowl_of_guardian_soup",
	"twilightdelight:glowstew",
	"twilightdelight:thousand_plant_stew",
	"undergarden:rotten_blisterberry",
	"undergardendelight:gloomgourd_slice",
	"unusualend:chorus_petal",
	"unusualend:wandering_stew"
];
for tag_vegetables_diet in addingVegetablesDiet{
	<tag:items:diet:vegetables>.add(<item:${tag_vegetables_diet}>);
}

// Proteine
var addingProteinsDiet = [
	"alexsmobs:cosmic_cod",
	"alexsmobs:rainbow_jelly",
	"aquaculturedelight:cooked_small_turtle_meat",
	"aquaculturedelight:small_turtle_meat",
	"beyond_earth:cheese",
	"crabbersdelight:clawster",
	"crabbersdelight:cooked_clam_meat",
	"crabbersdelight:cooked_clawster",
	"crabbersdelight:cooked_shrimp",
	"crabbersdelight:cooked_crab",
	"crabbersdelight:crab",
	"crabbersdelight:crab_legs",
	"crabbersdelight:raw_clam_meat",
	"crabbersdelight:shrimp",
	"croptopia:fried_frog_legs",
	"croptopia:frog_legs",
	"croptopia:glowing_calamari",
	"endersdelight:ender_paella_wood",
	"endersdelight:endermite_stew_wood",
	"endersdelight:stuffed_shulker_bowl",
	"ends_delight:dragon_leg",
	"ends_delight:dragon_leg_with_sauce",
	"ends_delight:dragon_meat_stew",
	"ends_delight:dried_endermite_meat",
	"ends_delight:grilled_shulker",
	"ends_delight:raw_dragon_meat",
	"ends_delight:raw_dragon_meat_cuts",
	"ends_delight:raw_ender_mite_meat",
	"ends_delight:roasted_dragon_meat",
	"ends_delight:roasted_dragon_meat_cuts",
	"ends_delight:roasted_shulker_meat",
	"ends_delight:roasted_shulker_meat_slice",
	"ends_delight:shulker_meat",
	"ends_delight:shulker_meat_slice",
	"ends_delight:smoked_dragon_leg",
	"ends_delight:steamed_dragon_egg",
	"enlightened_end:bubble_jelly_bottle",
	"enlightened_end:chorus_soup",
	"enlightened_end:cooked_stalker",
	"enlightened_end:raw_stalker",
	"enlightened_end:squished_bouncer",
	"galosphere:golden_lichen_cordyceps",
	"galosphere:lichen_cordyceps",
	"miners_delight:baked_cod_stew_cup",
	"miners_delight:baked_squid",
	"miners_delight:baked_tentacles",
	"miners_delight:bat_wing",
	"miners_delight:beef_stew_cup",
	"miners_delight:bowl_of_stuffed_squid",
	"miners_delight:chicken_soup_cup",
	"miners_delight:fish_stew_cup",
	"miners_delight:glow_squid",
	"miners_delight:noodle_soup_cup",
	"miners_delight:pumpkin_soup_cup",
	"miners_delight:rabbit_stew_cup",
	"miners_delight:silverfish_eggs",
	"miners_delight:smoked_bat_wing",
	"miners_delight:squid",
	"miners_delight:weird_caviar",
	"miners_delight:tentacles",
	"netherdepthsupgrade:blazefish",
	"netherdepthsupgrade:blazefish_slice",
	"netherdepthsupgrade:bonefish",
	"netherdepthsupgrade:cooked_glowdine_slice",
	"netherdepthsupgrade:cooked_lava_pufferfish_slice",
	"netherdepthsupgrade:cooked_magmacubefish_slice",
	"netherdepthsupgrade:cooked_obsidianfish_slice",
	"netherdepthsupgrade:cooked_soulsucker_slice",
	"netherdepthsupgrade:eyeball_fish",
	"netherdepthsupgrade:fortress_grouper",
	"netherdepthsupgrade:glowdine",
	"netherdepthsupgrade:glowdine_slice",
	"netherdepthsupgrade:lava_pufferfish",
	"netherdepthsupgrade:lava_pufferfish_slice",
	"netherdepthsupgrade:magmacubefish",
	"netherdepthsupgrade:magmacubefish_slice",
	"netherdepthsupgrade:obsidianfish",
	"netherdepthsupgrade:obsidianfish_slice",
	"netherdepthsupgrade:searing_cod",
	"netherdepthsupgrade:searing_cod_slice",
	"netherdepthsupgrade:soulsucker_slice",
	"netherdepthsupgrade:wither_bonefish",
	"nethersdelight:ground_strider",
	"nethersdelight:hoglin_ear",
	"nethersdelight:hoglin_loin",
	"nethersdelight:hoglin_sirloin",
	"nethersdelight:nether_skewer",
	"nethersdelight:plate_of_stuffed_hoglin_ham",
	"nethersdelight:plate_of_stuffed_hoglin_snout",
	"nethersdelight:plate_of_stuffed_hoglin_roast",
	"nethersdelight:strider_slice",
	"oceansdelight:baked_tentacle_on_a_stick",
	"oceansdelight:bowl_of_guardian_soup",
	"oceansdelight:cooked_elder_guardian_slice",
	"oceansdelight:cooked_guardian_tail",
	"oceansdelight:cut_tentacles",
	"oceansdelight:elder_guardian_slab",
	"oceansdelight:elder_guardian_slice",
	"oceansdelight:guardian_tail",
	"oceansdelight:tentacles",
	"oceansdelight:tentacle_on_a_stick",
	"tconstruct:blood_bottle",
	"twilightdelight:cooked_insect",
	"twilightdelight:raw_insect",
	"unusualend:end_blob",
	"unusualend:end_blob_jelly",
	"unusualend:wandering_stew"
];
for tag_proteins_diet in addingProteinsDiet{
	<tag:items:diet:proteins>.add(<item:${tag_proteins_diet}>);
}

println("End script/tag/diet.");