/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Missing Gear.
 * v0.2 : Adding Missing Rod.
 * v0.3 : Remove Rod for Fix Bug fluid quantiti in Blast Chiller, convert recipe in .json in KubeJS.
 * v0.4 : Adding Missing Sapling.
 * v0.5 : Adding HOP Graphite dust.
 */

println("Start script recipe_thermal_series.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shapeless
craftingTable.addShapeless("thermal_frost_melon_unblock", <item:thermal:frost_melon_slice> * 9, [<item:thermal:frost_melon>]);

// Shaped
craftingTable.removeByName("thermal:storage/sawdust_block");
craftingTable.addShaped("thermal_storage/sawdust_block", <item:thermal:sawdust_block>, [
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>],
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>],
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>]
]);
craftingTable.removeByName("thermal:storage/tea_block");
craftingTable.addShaped("thermal_storage/tea_block", <item:thermal:tea_block>, [
	[<tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>],
	[<tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>],
	[<tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>]
]);

// Induction Smelter
<recipetype:thermal:smelter>.addRecipe("thermal_machines/smelter/dust_hop_graphite_from_coke", [<item:immersiveengineering:dust_hop_graphite> % 100], [<item:immersiveengineering:dust_coke> * 4], 20, 6000);
<recipetype:thermal:smelter>.addRecipe("thermal_machines/smelter/dust_hop_graphite_from_petcoke", [<item:immersiveengineering:dust_hop_graphite> % 100], [<item:immersivepetroleum:petcoke_dust> * 4], 20, 6000);

// Multiservo Press
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_diamond_to_gear", [<item:thermal:diamond_gear>], <fluid:minecraft:empty>, [<item:minecraft:diamond> * 4, <item:thermal:press_gear_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_emerald_to_gear", [<item:thermal:emerald_gear>], <fluid:minecraft:empty>, [<item:minecraft:emerald> * 4, <item:thermal:press_gear_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_lapis_to_gear", [<item:thermal:lapis_gear>], <fluid:minecraft:empty>, [<item:minecraft:lapis_lazuli> * 4, <item:thermal:press_gear_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_quartz_to_gear", [<item:thermal:quartz_gear>], <fluid:minecraft:empty>, [<item:minecraft:quartz> * 4, <item:thermal:press_gear_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_compressed_iron_ingot_to_gear", [<item:pneumaticcraft:compressed_iron_gear>], <fluid:minecraft:empty>, [<item:pneumaticcraft:ingot_iron_compressed> * 4, <item:thermal:press_gear_die>], 2400);
<recipetype:thermal:press>.removeByName("thermal:machines/press/packing3x3/press_sawdust_packing");
<recipetype:thermal:press>.addRecipe("thermal_machines/press/packing3x3/press_sawdust_packing", [<item:thermal:sawdust_block>], <fluid:minecraft:empty>, [<tag:items:forge:dusts/wood> * 9, <item:thermal:press_packing_3x3_die>], 400);
<recipetype:thermal:press>.removeByName("thermal:compat/mekanism/press_mek_salt_packing");
<recipetype:thermal:press>.addRecipe("thermal_machines/press/packing3x3/press_salt_block", [<item:salt:salt_block>], <fluid:minecraft:empty>, [<item:salt:salt> * 9, <item:thermal:press_packing_3x3_die>], 400);
<recipetype:thermal:press>.removeByName("thermal:compat/mekanism/press_mek_salt_unpacking");
<recipetype:thermal:press>.addRecipe("thermal_machines/press/unpacking/press_salt", [<item:salt:salt> * 9], <fluid:minecraft:empty>, [<item:salt:salt_block>, <item:thermal:press_unpacking_die>], 400);

// Phytogenic Insolator
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_almond_sapling", [(<item:minecraft:dark_oak_log> * 6) % 100, <item:croptopia:almond_sapling> % 10, <item:croptopia:almond> % 50], <item:croptopia:almond_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_apple_sapling", [(<item:minecraft:oak_log> * 6) % 100, <item:croptopia:apple_sapling> % 10, <item:minecraft:apple> % 50], <item:croptopia:apple_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_apricot_sapling", [(<item:minecraft:oak_log> * 6) % 100, <item:croptopia:apricot_sapling> % 10, <item:croptopia:apricot> % 50], <item:croptopia:apricot_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_avocado_sapling", [(<item:minecraft:spruce_log> * 6) % 100, <item:croptopia:avocado_sapling> % 10, <item:croptopia:avocado> % 50], <item:croptopia:almond_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_banana_sapling", [(<item:minecraft:jungle_log> * 6) % 100, <item:croptopia:banana_sapling> % 10, <item:croptopia:banana> % 50], <item:croptopia:banana_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_cashew_sapling", [(<item:minecraft:dark_oak_log> * 6) % 100, <item:croptopia:cashew_sapling> % 10, <item:croptopia:cashew> % 50], <item:croptopia:cashew_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_cherry_sapling", [(<item:minecraft:oak_log> * 6) % 100, <item:croptopia:cherry_sapling> % 10, <item:croptopia:cherry> % 50], <item:croptopia:cherry_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_coconut_sapling", [(<item:minecraft:jungle_log> * 6) % 100, <item:croptopia:coconut_sapling> % 10, <item:croptopia:coconut> % 50], <item:croptopia:coconut_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_date_sapling", [(<item:minecraft:jungle_log> * 6) % 100, <item:croptopia:date_sapling> % 10, <item:croptopia:date> % 50], <item:croptopia:date_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_dragonfruit_sapling", [(<item:minecraft:jungle_log> * 6) % 100, <item:croptopia:dragonfruit_sapling> % 10, <item:croptopia:dragonfruit> % 50], <item:croptopia:dragonfruit_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_fig_sapling", [(<item:minecraft:jungle_log> * 6) % 100, <item:croptopia:fig_sapling> % 10, <item:croptopia:fig> % 50], <item:croptopia:fig_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_grapefruit_sapling", [(<item:minecraft:jungle_log> * 6) % 100, <item:croptopia:grapefruit_sapling> % 10, <item:croptopia:grapefruit> % 50], <item:croptopia:grapefruit_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_kumquat_sapling", [(<item:minecraft:jungle_log> * 6) % 100, <item:croptopia:kumquat_sapling> % 10, <item:croptopia:kumquat> % 50], <item:croptopia:kumquat_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_lemon_sapling", [(<item:minecraft:oak_log> * 6) % 100, <item:croptopia:lemon_sapling> % 10, <item:croptopia:lemon> % 50], <item:croptopia:lemon_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_lime_sapling", [(<item:minecraft:oak_log> * 6) % 100, <item:croptopia:lime_sapling> % 10, <item:croptopia:lime> % 50], <item:croptopia:lime_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_mango_sapling", [(<item:minecraft:jungle_log> * 6) % 100, <item:croptopia:mango_sapling> % 10, <item:croptopia:mango> % 50], <item:croptopia:mango_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_nectarine_sapling", [(<item:minecraft:oak_log> * 6) % 100, <item:croptopia:nectarine_sapling> % 10, <item:croptopia:nectarine> % 50], <item:croptopia:nectarine_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_nutmeg_sapling", [(<item:minecraft:jungle_log> * 6) % 100, <item:croptopia:nutmeg_sapling> % 10, <item:croptopia:nutmeg> % 50], <item:croptopia:nutmeg_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_orange_sapling", [(<item:minecraft:oak_log> * 6) % 100, <item:croptopia:orange_sapling> % 10, <item:croptopia:orange> % 50], <item:croptopia:orange_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_peach_sapling", [(<item:minecraft:oak_log> * 6) % 100, <item:croptopia:peach_sapling> % 10, <item:croptopia:peach> % 50], <item:croptopia:peach_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_pear_sapling", [(<item:minecraft:oak_log> * 6) % 100, <item:croptopia:pear_sapling> % 10, <item:croptopia:pear> % 50], <item:croptopia:pear_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_pecan_sapling", [(<item:minecraft:dark_oak_log> * 6) % 100, <item:croptopia:pecan_sapling> % 10, <item:croptopia:pecan> % 50], <item:croptopia:pecan_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_persimmon_sapling", [(<item:minecraft:jungle_log> * 6) % 100, <item:croptopia:persimmon_sapling> % 10, <item:croptopia:persimmon> % 50], <item:croptopia:persimmon_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_plum_sapling", [(<item:minecraft:jungle_log> * 6) % 100, <item:croptopia:plum_sapling> % 10, <item:croptopia:plum> % 50], <item:croptopia:plum_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_starfruit_sapling", [(<item:minecraft:oak_log> * 6) % 100, <item:croptopia:starfruit_sapling> % 10, <item:croptopia:starfruit> % 50], <item:croptopia:starfruit_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_walnut_sapling", [(<item:minecraft:dark_oak_log> * 6) % 100, <item:croptopia:walnut_sapling> % 10, <item:croptopia:walnut> % 50], <item:croptopia:walnut_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_cinnamon_sapling", [(<item:croptopia:cinnamon_log> * 6) % 100, <item:croptopia:cinnamon_sapling> % 10, <item:croptopia:cinnamon> % 50], <item:croptopia:cinnamon_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_ecologics_walnut_sapling", [(<item:ecologics:walnut_log> * 6) % 100, <item:ecologics:walnut_sapling> % 10, <item:ecologics:walnut> % 50], <item:ecologics:walnut_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_ecologics_coconut_seedling", [(<item:ecologics:coconut_log> * 6) % 100, <item:ecologics:coconut_seedling> % 10, <item:ecologics:coconut_slice> % 50], <item:ecologics:coconut_seedling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_ecologics_azalea", [(<item:ecologics:azalea_log> * 6) % 100, <item:minecraft:azalea> % 10, <item:minecraft:hanging_roots> % 25], <item:minecraft:azalea>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_ecologics_flowering_azalea", [(<item:ecologics:flowering_azalea_log> * 6) % 100, <item:minecraft:flowering_azalea> % 10, <item:ecologics:azalea_flower> % 50, <item:minecraft:hanging_roots> % 25], <item:minecraft:flowering_azalea>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_menril_sapling", [(<item:integrateddynamics:menril_log> * 6) % 100, <item:integrateddynamics:menril_sapling> % 10, <item:integrateddynamics:menril_berries> % 50], <item:integrateddynamics:menril_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_rubberwood_sapling", [(<item:myrtrees:rubberwood_log> * 6) % 100, <item:myrtrees:rubberwood_sapling> % 10, <item:minecraft:apple> % 50, <item:myrtrees:latex> % 25], <item:myrtrees:rubberwood_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_ancient_sapling", [(<item:naturesaura:ancient_log> * 6) % 100, <item:naturesaura:ancient_sapling> % 10], <item:naturesaura:ancient_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.removeByName("thermal:compat/quark/insolator_quark_azalea_bush");
<recipetype:thermal:insolator>.removeByName("thermal:compat/quark/insolator_quark_flowering_azalea_bush");
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_quark_azalea_flower", [(<item:quark:azalea_log> * 6) % 100, <item:ecologics:azalea_flower> % 10, <item:minecraft:hanging_roots> % 25], <item:ecologics:azalea_flower>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_simply_tea_sapling", [(<item:simplytea:tea_leaf> * 4) % 100, <item:simplytea:tea_sapling> % 10, <item:simplytea:tea_stick> % 25], <item:simplytea:tea_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_twilight_oak_sapling", [(<item:twilightforest:twilight_oak_log> * 6) % 100, <item:twilightforest:twilight_oak_sapling> % 10, <item:twilightforest:hollow_oak_sapling> % 0.05], <item:twilightforest:twilight_oak_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_canopy_sapling", [(<item:twilightforest:canopy_log> * 6) % 100, <item:twilightforest:canopy_sapling> % 10], <item:twilightforest:canopy_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_mangrove_sapling", [(<item:twilightforest:mangrove_log> * 6) % 100, <item:twilightforest:mangrove_sapling> % 10], <item:twilightforest:mangrove_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_darkwood_sapling", [(<item:twilightforest:dark_log> * 6) % 100, <item:twilightforest:darkwood_sapling> % 10], <item:twilightforest:darkwood_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_time_sapling", [(<item:twilightforest:time_log> * 6) % 100, <item:twilightforest:time_sapling> % 10, <item:twilightforest:time_log_core> % 5], <item:twilightforest:time_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_transformation_sapling", [(<item:twilightforest:transformation_log> * 6) % 100, <item:twilightforest:transformation_sapling> % 10, <item:twilightforest:transformation_log_core> % 5], <item:twilightforest:transformation_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_mining_sapling", [(<item:twilightforest:mining_log> * 6) % 100, <item:twilightforest:mining_sapling> % 10, <item:twilightforest:mining_log_core> % 5], <item:twilightforest:mining_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_sorting_sapling", [(<item:twilightforest:sorting_log> * 6) % 100, <item:twilightforest:sorting_sapling> % 10, <item:twilightforest:sorting_log_core> % 5], <item:twilightforest:sorting_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_rainbow_oak_sapling", [(<item:minecraft:oak_log> * 6) % 100, <item:twilightforest:rainbow_oak_sapling> % 10], <item:twilightforest:rainbow_oak_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_grongle_sapling", [(<item:undergarden:grongle_log> * 6) % 100, <item:undergarden:grongle_sapling> % 10], <item:undergarden:grongle_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_smogstem_sapling", [(<item:undergarden:smogstem_log> * 6) % 100, <item:undergarden:smogstem_sapling> % 10], <item:undergarden:smogstem_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_wigglewood_sapling", [(<item:undergarden:wigglewood_log> * 6) % 100, <item:undergarden:wigglewood_sapling> % 10], <item:undergarden:wigglewood_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_vinery_cherry_sapling", [(<item:vinery:cherry_log> * 6) % 100, <item:vinery:cherry_sapling> % 10, <item:vinery:cherry> % 50], <item:vinery:cherry_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_vinery_old_cherry_sapling", [(<item:vinery:cherry_log> * 6) % 100, <item:vinery:old_cherry_sapling> % 10, <item:vinery:cherry> % 50], <item:vinery:old_cherry_sapling>, 1000, 60000);
<recipetype:thermal:insolator>.removeByName("thermal:machines/insolator/insolator_cactus");
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_cactus", [(<item:minecraft:cactus> * 2) % 100, <item:ecologics:prickly_pear> % 50], <item:minecraft:cactus>, 1000, 30000);

// Phytogenic Insolator Catalyst
<recipetype:thermal:insolator_catalyst>.addCatalyst("insolator_catalyst_immersiveengineering_fertilizer", <item:immersiveengineering:fertilizer>, 1.25, 1.25, 0.6, 0.1, 0.5);
<recipetype:thermal:insolator_catalyst>.addCatalyst("insolator_catalyst_indutrialforegoing_fertilizer", <item:industrialforegoing:fertilizer>, 1.25, 1.25, 0.6, 0.1, 0.5);
<recipetype:thermal:insolator_catalyst>.addCatalyst("insolator_catalyst_waterstrainer_fertilizer", <item:waterstrainer:fertilizer>, 1.5, 1.5, 0.8, 0.1, 0.5);

// Smelter Recycle
<recipetype:thermal:smelter_recycle>.addJsonRecipe("thermal_machines/smelter/smelter_silver_armor", {
	"ingredient": {
		"tag": "forge:armor/silver"
	},
	"result": [{
		"item": "thermal:silver_ingot",
		"count": 3
	}],
	"experience": 0.9
});
<recipetype:thermal:smelter_recycle>.addJsonRecipe("thermal_machines/smelter/smelter_copper_armor", {
	"ingredient": {
		"tag": "forge:armor/copper"
	},
	"result": [{
		"item": "minecraft:copper_ingot",
		"count": 3
	}],
	"experience": 0.9
});

println("End script recipe_thermal_series.");