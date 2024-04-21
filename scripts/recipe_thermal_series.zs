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
 * v0.6 : Add Custom Rods.
 * v0.7 : Adding Plate System.
 * v0.8 : Adding Tipped Arrow.
 */

Globals.startScript("recipe_thermal_series");
Globals.priorityScript("Null");

if (packModeSetting.packModeSettingPlates() == true) {
	Globals.packExpertScript("Plate - Active");
}

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

val expert_ingradient_to_plate = packModeSetting.packModeSettingPlateMultiPress();

// Shapeless
craftingTable.addShapeless("thermal_frost_melon_unblock", <item:thermal:frost_melon_slice> * 9, [<item:thermal:frost_melon>]);

// Shaped
craftingTable.addShaped("thermal/press_rod_die", <item:contenttweaker:thermal/press_rod_die>, [
	[<item:minecraft:air>, <tag:items:forge:plates/invar>, <item:minecraft:air>],
	[<tag:items:forge:plates/invar>, <item:contenttweaker:immersiveengineering/diamond_rod>, <tag:items:forge:plates/invar>],
	[<item:minecraft:air>, <tag:items:forge:plates/invar>, <item:minecraft:air>]
]);
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

// Blast Chiller 
<recipetype:thermal:chiller>.addJsonRecipe("thermal_machines/chiller/chiller_diamond_rod", {
	"input": [{
		"fluid": "tconstruct:molten_diamond",
		"amount": 45
	},
	{
		"item": "thermal:chiller_rod_cast"
	}],
	"result": {
		"item": "contenttweaker:immersiveengineering/diamond_rod",
		"count": 1
	},
	"energy": 2400
});
<recipetype:thermal:chiller>.addJsonRecipe("thermal_machines/chiller/chiller_emerald_rod", {
	"input": [{
		"fluid": "tconstruct:molten_emerald",
		"amount": 45
	},
	{
		"item": "thermal:chiller_rod_cast"
	}],
	"result": {
		"item": "contenttweaker:immersiveengineering/emerald_rod",
		"count": 1
	},
	"energy": 2400
});

// Centrifugal Separator
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_certus_quartz", [<item:ae2:certus_quartz_crystal> % 100, <item:ae2:certus_quartz_dust> %25], <fluid:minecraft:empty>, <item:contenttweaker:ae2/crushed_certus_quartz>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_charged_certus_quartz", [<item:ae2:charged_certus_quartz_crystal> % 100, <item:ae2:certus_quartz_dust> %25], <fluid:minecraft:empty>, <item:contenttweaker:ae2/crushed_charged_certus_quartz>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_fluix", [<item:ae2:fluix_crystal> % 100, <item:ae2:fluix_dust> %25], <fluid:minecraft:empty>, <item:contenttweaker:ae2/crushed_fluix>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_quartz", [<item:minecraft:quartz> % 100, <item:thermal:quartz_dust> %25], <fluid:minecraft:empty>, <item:contenttweaker:ae2/crushed_quartz>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_refined_glowstone", [(<item:mekanism:nugget_refined_glowstone> * 9) % 100, <item:minecraft:glowstone> %25], <fluid:minecraft:empty>, <item:contenttweaker:mekanism/crushed_refined_glowstone>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_refined_obsidian", [(<item:mekanism:nugget_refined_obsidian> * 9) % 100, <item:mekanism:dust_refined_obsidian> %25], <fluid:minecraft:empty>, <item:contenttweaker:mekanism/crushed_refined_obsidian>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_steel", [(<item:thermal:steel_nugget> * 9) % 100, <item:thermal:iron_dust> %25], <fluid:minecraft:empty>, <item:contenttweaker:mekanism/crushed_steel>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_cobalt_ore", [(<item:tconstruct:cobalt_nugget> * 9) % 100, <item:thermal:netherite_dust> %25], <fluid:minecraft:empty>, <item:contenttweaker:tconstruct/crushed_cobalt_ore>, 1600);

// Fluid Encapsulator
var bottler_potion_type_name = 1;
for bottler_potion_type in Constant.packPotions {
	<recipetype:thermal:bottler>.addJsonRecipe("thermal_machines/bottler/tipped_arrow_" + bottler_potion_type_name, {
		"ingredients": [{
			"item": "minecraft:arrow"
		},
		{
			"fluid": "create:potion",
			"nbt": {
				"Bottle": "REGULAR",
				"Potion": bottler_potion_type
			},
			"amount": 25
		}],
		"result": [{
			"item": "minecraft:tipped_arrow",
			"nbt": {
				"Potion": bottler_potion_type
			}
		}]
	});
	bottler_potion_type_name++;
}

// Induction Smelter
<recipetype:thermal:smelter>.addRecipe("thermal_compat/create/smelter_create_crushed_certus_quartz", [<item:ae2:certus_quartz_crystal> % 100], [<item:contenttweaker:ae2/crushed_certus_quartz>], 20, 1600);
<recipetype:thermal:smelter>.addRecipe("thermal_compat/create/smelter_create_crushed_charged_certus_quartz", [<item:ae2:charged_certus_quartz_crystal> % 100], [<item:contenttweaker:ae2/crushed_charged_certus_quartz>], 20, 1600);
<recipetype:thermal:smelter>.addRecipe("thermal_compat/create/smelter_create_crushed_fluix", [<item:ae2:fluix_crystal> % 100], [<item:contenttweaker:ae2/crushed_fluix>], 20, 1600);
<recipetype:thermal:smelter>.addRecipe("thermal_compat/create/smelter_create_crushed_quartz", [<item:minecraft:quartz> % 100], [<item:contenttweaker:ae2/crushed_quartz>], 20, 1600);
<recipetype:thermal:smelter>.addRecipe("thermal_compat/create/smelter_create_crushed_refined_glowstone", [<item:mekanism:ingot_refined_glowstone> % 100], [<item:contenttweaker:mekanism/crushed_refined_glowstone>], 20, 1600);
<recipetype:thermal:smelter>.addRecipe("thermal_compat/create/smelter_create_crushed_refined_obsidian", [<item:mekanism:ingot_refined_obsidian> % 100], [<item:contenttweaker:mekanism/crushed_refined_obsidian>], 20, 1600);
<recipetype:thermal:smelter>.addRecipe("thermal_compat/create/smelter_create_crushed_steel", [<item:thermal:steel_ingot> % 100], [<item:contenttweaker:mekanism/crushed_steel>], 20, 1600);
<recipetype:thermal:smelter>.addRecipe("thermal_compat/create/smelter_create_crushed_cobalt_ore", [<item:tconstruct:cobalt_ingot> % 100], [<item:contenttweaker:tconstruct/crushed_cobalt_ore>], 20, 1600);
<recipetype:thermal:smelter>.addRecipe("pack_expert_crafting/thermal_machines/smelter/dust_hop_graphite_from_coke", [<item:immersiveengineering:dust_hop_graphite> % 100], [<item:immersiveengineering:dust_coke> * 4], 20, 6000);
<recipetype:thermal:smelter>.addRecipe("pack_expert_crafting/thermal_machines/smelter/dust_hop_graphite_from_petcoke", [<item:immersiveengineering:dust_hop_graphite> % 100], [<item:immersivepetroleum:petcoke_dust> * 4], 20, 6000);

// Multiservo Press
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_aluminum_to_rod", [<item:immersiveengineering:stick_aluminum>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/aluminum>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_brass_to_rod", [<item:createaddition:brass_rod>], <fluid:minecraft:empty>, [<item:create:brass_ingot>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_compressed_iron_ingot_to_gear", [<item:pneumaticcraft:compressed_iron_gear>], <fluid:minecraft:empty>, [<item:pneumaticcraft:ingot_iron_compressed> * 4, <item:thermal:press_gear_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_constantan_to_rod", [<item:immersiveposts:stick_constantan>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/constantan>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_copper_to_rod", [<item:createaddition:copper_rod>], <fluid:minecraft:empty>, [<item:minecraft:copper_ingot>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_diamond_to_gear", [<item:thermal:diamond_gear>], <fluid:minecraft:empty>, [<item:minecraft:diamond> * 4, <item:thermal:press_gear_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_diamond_to_rod", [<item:contenttweaker:immersiveengineering/diamond_rod>], <fluid:minecraft:empty>, [<item:minecraft:diamond>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_electrum_to_rod", [<item:createaddition:electrum_rod>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/electrum>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_emerald_to_gear", [<item:thermal:emerald_gear>], <fluid:minecraft:empty>, [<item:minecraft:emerald> * 4, <item:thermal:press_gear_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_emerald_to_rod", [<item:contenttweaker:immersiveengineering/emerald_rod>], <fluid:minecraft:empty>, [<item:minecraft:emerald>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_gold_to_rod", [<item:createaddition:gold_rod>], <fluid:minecraft:empty>, [<item:minecraft:gold_ingot>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_iron_to_rod", [<item:immersiveengineering:stick_iron>], <fluid:minecraft:empty>, [<item:minecraft:iron_ingot>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_lapis_to_gear", [<item:thermal:lapis_gear>], <fluid:minecraft:empty>, [<item:minecraft:lapis_lazuli> * 4, <item:thermal:press_gear_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_lead_to_rod", [<item:immersiveposts:stick_lead>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/lead>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_nickel_to_rod", [<item:immersiveposts:stick_nickel>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/nickel>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_quartz_to_gear", [<item:thermal:quartz_gear>], <fluid:minecraft:empty>, [<item:minecraft:quartz> * 4, <item:thermal:press_gear_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_silver_to_rod", [<item:immersiveposts:stick_silver>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/silver>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_steel_to_rod", [<item:immersiveengineering:stick_steel>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/steel>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_uranium_to_rod", [<item:immersiveposts:stick_uranium>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/uranium>, <item:contenttweaker:thermal/press_rod_die>], 2400);
<recipetype:thermal:press>.removeByName("thermal:machines/press/packing3x3/press_sawdust_packing");
<recipetype:thermal:press>.addRecipe("thermal_machines/press/packing3x3/press_sawdust_packing", [<item:thermal:sawdust_block>], <fluid:minecraft:empty>, [<tag:items:forge:dusts/wood> * 9, <item:thermal:press_packing_3x3_die>], 400);
<recipetype:thermal:press>.removeByName("thermal:compat/mekanism/press_mek_salt_packing");
<recipetype:thermal:press>.addRecipe("thermal_machines/press/packing3x3/press_salt_block", [<item:salt:salt_block>], <fluid:minecraft:empty>, [<item:salt:salt> * 9, <item:thermal:press_packing_3x3_die>], 400);
<recipetype:thermal:press>.removeByName("thermal:compat/mekanism/press_mek_salt_unpacking");
<recipetype:thermal:press>.addRecipe("thermal_machines/press/unpacking/press_salt", [<item:salt:salt> * 9], <fluid:minecraft:empty>, [<item:salt:salt_block>, <item:thermal:press_unpacking_die>], 400);

if (packModeSetting.packModeSettingPlates() == true) {

	<recipetype:thermal:press>.removeByName("thermal:compat/immersiveengineering/press_ie_aluminum_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_bronze_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_constantan_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_copper_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("beyond_earth_giselle_addon:compat/thermal/press/press_desh_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal_extra:machine/press/dragonsteel_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_electrum_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_enderium_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_gold_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_invar_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_iron_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_lead_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_lumium_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_netherite_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_nickel_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_rose_gold_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal_extra:machine/press/shellite_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_signalum_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_silver_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal_extra:machine/press/soul_infused_plate");
	<recipetype:thermal:press>.removeByName("thermal:compat/immersiveengineering/press_ie_steel_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal:machines/press/press_tin_ingot_to_plate");
	<recipetype:thermal:press>.removeByName("thermal_extra:machine/press/twinite_plate");
	<recipetype:thermal:press>.removeByName("thermal:compat/immersiveengineering/press_ie_uranium_ingot_to_plate");
	
	var addingPlateMultiservoPress = {
		"immersiveengineering:plate_aluminum" : "forge:ingots/aluminum",
		"create:brass_sheet" : "forge:ingots/brass",
		"thermal:bronze_plate" : "forge:ingots/bronze",
		"contenttweaker:tconstruct/cobalt_sheet" : "forge:ingots/cobalt",
		"thermal:constantan_plate" : "forge:ingots/constantan",
		"thermal:copper_plate" : "forge:ingots/copper",
		"beyond_earth:desh_plate" : "forge:ingots/desh",
		"thermal_extra:dragonsteel_plate" : "forge:ingots/dragonsteel",
		"contenttweaker:thermal/diamond_plate" : "forge:gems/diamond",
		"thermal:electrum_plate" : "forge:ingots/electrum",
		"thermal:enderium_plate" : "forge:ingots/enderium",
		"contenttweaker:thermal/emerald_plate" : "forge:gems/emerald",
		"thermal:gold_plate" : "forge:ingots/gold",
		"contenttweaker:tconstruct/hepatizon_sheet" : "forge:ingots/hepatizon",
		"thermal:invar_plate" : "forge:ingots/invar",
		"thermal:iron_plate" : "forge:ingots/iron",
		"contenttweaker:thermal/lapis_plate" : "forge:gems/lapis",
		"thermal:lead_plate" : "forge:ingots/lead",
		"thermal:lumium_plate" : "forge:ingots/lumium",
		"thermal:netherite_plate" : "forge:ingots/netherite",
		"thermal:nickel_plate" : "forge:ingots/nickel",
		"contenttweaker:tconstruct/pig_iron_sheet" : "forge:ingots/pig_iron",
		"contenttweaker:thermal/quartz_plate" : "forge:gems/quartz",
		"contenttweaker:tconstruct/queens_slime_sheet" : "forge:ingots/queens_slime",
		"thermal:rose_gold_plate" : "forge:ingots/rose_gold",
		"thermal_extra:shellite_plate" : "forge:ingots/shellite",
		"thermal:signalum_plate" : "forge:ingots/signalum",
		"thermal:silver_plate" : "forge:ingots/silver",
		"contenttweaker:tconstruct/slimesteel_sheet" : "forge:ingots/slimesteel",
		"thermal_extra:soul_infused_plate" : "forge:ingots/soul_infused",
		"thermal:steel_plate" : "forge:ingots/steel",
		"thermal:tin_plate" : "forge:ingots/tin",
		"thermal_extra:twinite_plate" : "forge:ingots/twinite",
		"immersiveengineering:plate_uranium" : "forge:ingots/uranium",
		"createaddition:zinc_sheet" : "forge:ingots/zinc"
	};

	for addingPlateMultiservoPressOut, addingPlateMultiservoPressIn in addingPlateMultiservoPress {
		val addingPlateMultiservoPressName = <item:${addingPlateMultiservoPressOut}>;
		<recipetype:thermal:press>.addJsonRecipe("pack_expert_crafting/thermal_machines/press/press_" + addingPlateMultiservoPressName.registryName.path, {
			"ingredients": [{
				"tag": addingPlateMultiservoPressIn,
				"count": expert_ingradient_to_plate
			}],
			"result": [{
				"item": addingPlateMultiservoPressOut
			}]
		});
	}
} else {
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_brass_ingot_to_plate", [<item:create:brass_sheet>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/brass>], 2400);
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_cobalt_ingot_to_plate", [<item:contenttweaker:tconstruct/cobalt_sheet>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/cobalt>], 2400);
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_diamond_to_plate", [<item:contenttweaker:thermal/diamond_plate>], <fluid:minecraft:empty>, [<tag:items:forge:gems/diamond>], 2400);
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_emerald_to_plate", [<item:contenttweaker:thermal/emerald_plate>], <fluid:minecraft:empty>, [<tag:items:forge:gems/emerald>], 2400);
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_hepatizon_ingot_to_plate", [<item:contenttweaker:tconstruct/hepatizon_sheet>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/hepatizon>], 2400);
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_lapis_to_plate", [<item:contenttweaker:thermal/lapis_plate>], <fluid:minecraft:empty>, [<tag:items:forge:gems/lapis>], 2400);
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_pig_iron_ingot_to_plate", [<item:contenttweaker:tconstruct/pig_iron_sheet>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/pig_iron>], 2400);
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_quartz_to_plate", [<item:contenttweaker:thermal/quartz_plate>], <fluid:minecraft:empty>, [<tag:items:forge:gems/quartz>], 2400);
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_queen_slime_ingot_to_plate", [<item:contenttweaker:tconstruct/queens_slime_sheet>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/queens_slime>], 2400);
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_slimesteel_ingot_to_plate", [<item:contenttweaker:tconstruct/slimesteel_sheet>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/slimesteel>], 2400);
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_zinc_ingot_to_plate", [<item:createaddition:zinc_sheet>], <fluid:minecraft:empty>, [<tag:items:forge:ingots/zinc>], 2400);
}

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
<recipetype:thermal:smelter_recycle>.addJsonRecipe("thermal_machines/smelter/smelter_copper_tools", {
	"ingredient": {
		"tag": "forge:tools/copper"
	},
	"result": [{
		"item": "minecraft:copper_ingot",
		"count": 1
	}],
	"experience": 0.3
});

Globals.endScript("recipe_thermal_series");