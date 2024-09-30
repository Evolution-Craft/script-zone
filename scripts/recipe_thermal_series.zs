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

val mpGear = <item:thermal:press_gear_die>;
val mpPacking2x2 = <item:thermal:press_packing_2x2_die>;
val mpPacking3x3 = <item:thermal:press_packing_3x3_die>;
val mpRod = <item:contenttweaker:thermal/press_rod_die>;
val mpUnpacking = <item:thermal:press_unpacking_die>;
val mpWire = <item:immersiveengineering:mold_wire>; // Temporary Using

val expert_ingradient_to_plate = packModeSetting.packModeSettingPlateMultiPress();

// Shaped
craftingTable.addShaped("thermal/press_rod_die", <item:contenttweaker:thermal/press_rod_die>, [
	[<item:minecraft:air>, <tag:items:forge:plates/invar>, <item:minecraft:air>],
	[<tag:items:forge:plates/invar>, <item:contenttweaker:immersiveengineering/diamond_rod>, <tag:items:forge:plates/invar>],
	[<item:minecraft:air>, <tag:items:forge:plates/invar>, <item:minecraft:air>]
]);
craftingTable.addShaped("thermal_storage/sawdust_block", <item:thermal:sawdust_block>, [
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>],
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>],
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>]
]);
craftingTable.addShaped("thermal_storage/tea_block", <item:thermal:tea_block>, [
	[<tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>],
	[<tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>],
	[<tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>]
]);

// Blast Chiller
var addingRodBlastChiller = {
	"tconstruct:molten_brass" : "createaddition:brass_rod",
	"tconstruct:molten_constantan" : "immersiveposts:stick_constantan",
	"tconstruct:molten_copper" : "createaddition:copper_rod",
	"tconstruct:molten_diamond" : "contenttweaker:immersiveengineering/diamond_rod",
	"tconstruct:molten_electrum" : "createaddition:electrum_rod",
	"tconstruct:molten_emerald" : "contenttweaker:immersiveengineering/emerald_rod",
	"tconstruct:molten_gold" : "createaddition:gold_rod",
	"tconstruct:molten_lead" : "immersiveposts:stick_lead",
	"tconstruct:molten_nickel" : "immersiveposts:stick_nickel",
	"tconstruct:molten_silver" : "immersiveposts:stick_silver",
	"tconstruct:molten_uranium" : "immersiveposts:stick_uranium"
};
for addingRodBlastChillerFuild, addingRodBlastChillerOut in addingRodBlastChiller {
	<recipetype:thermal:chiller>.addJsonRecipe("thermal_machines/chiller/chiller_" + <item:${addingRodBlastChillerOut}>.registryName.path, {
		"input": [{
			"fluid": addingRodBlastChillerFuild,
			"amount": 45
		},
		{
			"item": "thermal:chiller_rod_cast"
		}],
		"result": {
			"item": addingRodBlastChillerOut,
			"count": 1
		},
		"energy": 2400
	});
}

// Centrifugal Separator
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_certus_quartz", [<item:ae2:certus_quartz_crystal> % 100, <item:ae2:certus_quartz_dust> % 25], <fluid:minecraft:empty>, <item:contenttweaker:ae2/crushed_certus_quartz>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_charged_certus_quartz", [<item:ae2:charged_certus_quartz_crystal> % 100, <item:ae2:certus_quartz_dust> % 25], <fluid:minecraft:empty>, <item:contenttweaker:ae2/crushed_charged_certus_quartz>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_fluix", [<item:ae2:fluix_crystal> % 100, <item:ae2:fluix_dust> % 25], <fluid:minecraft:empty>, <item:contenttweaker:ae2/crushed_fluix>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_quartz", [<item:minecraft:quartz> % 100, <item:thermal:quartz_dust> % 25], <fluid:minecraft:empty>, <item:contenttweaker:ae2/crushed_quartz>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_refined_glowstone", [(<item:mekanism:nugget_refined_glowstone> * 9) % 100, <item:minecraft:glowstone> % 25], <fluid:minecraft:empty>, <item:contenttweaker:mekanism/crushed_refined_glowstone>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_refined_obsidian", [(<item:mekanism:nugget_refined_obsidian> * 9) % 100, <item:mekanism:dust_refined_obsidian> % 25], <fluid:minecraft:empty>, <item:contenttweaker:mekanism/crushed_refined_obsidian>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_steel", [(<item:thermal:steel_nugget> * 9) % 100, <item:thermal:iron_dust> % 25], <fluid:minecraft:empty>, <item:contenttweaker:mekanism/crushed_steel>, 1600);
<recipetype:thermal:centrifuge>.addRecipe("thermal_compat/create/centrifuge_create_crushed_cobalt_ore", [(<item:tconstruct:cobalt_nugget> * 9) % 100, <item:thermal:netherite_dust> % 25], <fluid:minecraft:empty>, <item:contenttweaker:tconstruct/crushed_cobalt_ore>, 1600);

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
<recipetype:thermal:bottler>.addJsonRecipe("thermal_machines/bottler/nahuatl_planks", {
	"ingredients": [{
		"tag": "minecraft:planks"
	},
	{
		"fluid": "tconstruct:molten_obsidian",
		"amount": 1000
	}],
	"result": {
		"item": "tconstruct:nahuatl"
	},
	"energy": 5000
});

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
var addingRodMultiservoPress = {
	"createaddition:brass_rod" : <tag:items:forge:ingots/brass>,
	"createaddition:copper_rod" : <tag:items:forge:ingots/copper>,
	"createaddition:electrum_rod" : <tag:items:forge:ingots/electrum>,
	"createaddition:gold_rod" : <tag:items:forge:ingots/gold>,
	"contenttweaker:immersiveengineering/diamond_rod" : <tag:items:forge:gems/diamond>,
	"contenttweaker:immersiveengineering/emerald_rod" : <tag:items:forge:gems/emerald>,
	"contenttweaker:create/prismarine_rod" : <tag:items:forge:ingot/prismarine>,
	"immersiveengineering:stick_aluminum" : <tag:items:forge:ingots/aluminum>,
	"immersiveposts:stick_constantan" : <tag:items:forge:ingots/constantan>,
	"immersiveengineering:stick_iron" : <tag:items:forge:ingots/iron>,
	"immersiveposts:stick_lead" : <tag:items:forge:ingots/lead>,
	"immersiveposts:stick_nickel" : <tag:items:forge:ingots/nickel>,
	"immersiveposts:stick_silver" : <tag:items:forge:ingots/silver>,
	"immersiveengineering:stick_steel" : <tag:items:forge:ingots/steel>,
	"immersiveposts:stick_uranium" : <tag:items:forge:ingots/uranium>
};
for addingRodMultiservoPressOut, addingRodMultiservoPressIn in addingRodMultiservoPress {
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_" + <item:${addingRodMultiservoPressOut}>.registryName.path, [<item:${addingRodMultiservoPressOut}>], <fluid:minecraft:empty>, [addingRodMultiservoPressIn, mpRod], 2400);
}

var addingGearMultiservoPress = {
	"pneumaticcraft:compressed_iron_gear" : <tag:items:forge:ingots/compressed_iron>,
	"thermal:diamond_gear" : <tag:items:forge:gems/diamond>,
	"thermal:emerald_gear" : <tag:items:forge:gems/emerald>,
	"thermal:lapis_gear" : <tag:items:forge:gems/lapis>,
	"thermal:quartz_gear" : <tag:items:forge:gems/quartz>
};
for addingGearMultiservoPressOut, addingGearMultiservoPressIn in addingGearMultiservoPress {
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/press_" + <item:${addingGearMultiservoPressOut}>.registryName.path, [<item:${addingGearMultiservoPressOut}>], <fluid:minecraft:empty>, [addingGearMultiservoPressIn * 4, mpGear], 2400);
}

var addingPackingMultiservoPress = {
	"corn_delight:corn_crate" : <item:corn_delight:corn>,
	"eggcrate:cratedmushroombrown" : <item:minecraft:brown_mushroom>,
	"eggcrate:cratedmushroombrown" : <item:minecraft:brown_mushroom>,
	"eggcrate:eggcrate" : <item:minecraft:egg>,
	"endersdelight:chorus_crate" : <item:minecraft:chorus_plant>,
	"ends_delight:chorus_fruit_crate" : <item:minecraft:chorus_fruit>,
	"farmersdelight:beetroot_crate" : <item:minecraft:beetroot>,
	"farmersdelight:cabbage_crate" : <item:farmersdelight:cabbage>,
	"farmersdelight:carrot_crate" : <item:minecraft:carrot>,
	"farmersdelight:potato_crate" : <item:minecraft:potato>,
	"farmersdelight:rice_bag" : <item:farmersdelight:rice>,
	"farmersdelight:onion_crate" : <item:farmersdelight:onion>,
	"farmersdelight:tomato_crate" : <item:farmersdelight:tomato>,
	"galosphere_delight:golden_lichen_crate" : <item:galosphere:golden_lichen_cordyceps>,
	"galosphere_delight:lichen_crate" : <item:galosphere:lichen_cordyceps>,
	"miners_delight:cave_carrot_crate" : <item:miners_delight:cave_carrot>,
	"salt:salt_block" : <tag:items:forge:salts>,
	"thermal:sawdust_block" : <tag:items:forge:dusts/wood>
};
for addingPackingMultiservoPressOut, addingPackingMultiservoPressIn in addingPackingMultiservoPress {
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/packing/press_" + <item:${addingPackingMultiservoPressOut}>.registryName.path, [<item:${addingPackingMultiservoPressOut}>], <fluid:minecraft:empty>, [addingPackingMultiservoPressIn * 9, mpPacking3x3], 400);
}

var addingUnpackingMultiservoPress = {
	"corn_delight:corn" : "corn_delight:corn_crate",
	"galosphere:golden_lichen_cordyceps" : "galosphere_delight:golden_lichen_crate",
	"galosphere:lichen_cordyceps" : "galosphere_delight:lichen_crate",
	"farmersdelight:cabbage" : "farmersdelight:cabbage_crate",
	"farmersdelight:onion" : "farmersdelight:onion_crate",
	"farmersdelight:rice" : "farmersdelight:rice_bag",
	"farmersdelight:tomato" : "farmersdelight:tomato_crate",
	"minecraft:beetroot" : "farmersdelight:beetroot_crate",
	"minecraft:brown_mushroom" : "eggcrate:cratedmushroombrown",
	"minecraft:carrot" : "farmersdelight:carrot_crate",
	"minecraft:chorus_fruit" : "ends_delight:chorus_fruit_crate",
	"minecraft:chorus_plant" : "endersdelight:chorus_crate",
	"minecraft:egg" : "eggcrate:eggcrate",
	"minecraft:potato" : "farmersdelight:potato_crate",
	"minecraft:red_mushroom" : "eggcrate:cratedmushroomsred",
	"miners_delight:cave_carrot" : "miners_delight:cave_carrot_crate",
	"salt:salt" : "salt:salt_block"
};
for addingUnpackingMultiservoPressOut, addingUnpackingMultiservoPressIn in addingUnpackingMultiservoPress {
	<recipetype:thermal:press>.addRecipe("thermal_machines/press/unpacking/press_" + <item:${addingUnpackingMultiservoPressOut}>.registryName.path, [<item:${addingUnpackingMultiservoPressOut}> * 9], <fluid:minecraft:empty>, [<item:${addingUnpackingMultiservoPressIn}>, mpUnpacking], 400);
}

if (packModeSetting.packModeSettingPlates() == true) {
	var addingExpertPlateMultiservoPress = {
		"immersiveengineering:plate_aluminum" : <tag:items:forge:ingots/aluminum>,
		"create:brass_sheet" : <tag:items:forge:ingots/brass>,
		"thermal:bronze_plate" : <tag:items:forge:ingots/bronze>,
		"contenttweaker:tconstruct/cobalt_sheet" : <tag:items:forge:ingots/cobalt>,
		"thermal:constantan_plate" : <tag:items:forge:ingots/constantan>,
		"thermal:copper_plate" : <tag:items:forge:ingots/copper>,
		"beyond_earth:desh_plate" : <tag:items:forge:ingots/desh>,
		"thermal_extra:dragonsteel_plate" : <tag:items:forge:ingots/dragonsteel>,
		"contenttweaker:thermal/diamond_plate" : <tag:items:forge:gems/diamond>,
		"thermal:electrum_plate" : <tag:items:forge:ingots/electrum>,
		"thermal:enderium_plate" : <tag:items:forge:ingots/enderium>,
		"contenttweaker:thermal/emerald_plate" : <tag:items:forge:gems/emerald>,
		"thermal:gold_plate" : <tag:items:forge:ingots/gold>,
		"contenttweaker:tconstruct/hepatizon_sheet" : <tag:items:forge:ingots/hepatizon>,
		"thermal:invar_plate" : <tag:items:forge:ingots/invar>,
		"thermal:iron_plate" : <tag:items:forge:ingots/iron>,
		"contenttweaker:thermal/lapis_plate" : <tag:items:forge:gems/lapis>,
		"thermal:lead_plate" : <tag:items:forge:ingots/lead>,
		"thermal:lumium_plate" : <tag:items:forge:ingots/lumium>,
		"thermal:netherite_plate" : <tag:items:forge:ingots/netherite>,
		"thermal:nickel_plate" : <tag:items:forge:ingots/nickel>,
		"contenttweaker:tconstruct/pig_iron_sheet" : <tag:items:forge:ingots/pig_iron>,
		"contenttweaker:thermal/quartz_plate" : <tag:items:forge:gems/quartz>,
		"contenttweaker:tconstruct/queens_slime_sheet" : <tag:items:forge:ingots/queens_slime>,
		"thermal:rose_gold_plate" : <tag:items:forge:ingots/rose_gold>,
		"thermal_extra:shellite_plate" : <tag:items:forge:ingots/shellite>,
		"thermal:signalum_plate" : <tag:items:forge:ingots/signalum>,
		"thermal:silver_plate" : <tag:items:forge:ingots/silver>,
		"contenttweaker:tconstruct/slimesteel_sheet" : <tag:items:forge:ingots/slimesteel>,
		"thermal_extra:soul_infused_plate" : <tag:items:forge:ingots/soul_infused>,
		"thermal:steel_plate" : <tag:items:forge:ingots/steel>,
		"thermal:tin_plate" : <tag:items:forge:ingots/tin>,
		"thermal_extra:twinite_plate" : <tag:items:forge:ingots/twinite>,
		"immersiveengineering:plate_uranium" : <tag:items:forge:ingots/uranium>,
		"createaddition:zinc_sheet" : <tag:items:forge:ingots/zinc>
	};
	for addingExpertPlateMultiservoPressOut, addingExpertPlateMultiservoPressIn in addingExpertPlateMultiservoPress {
		<recipetype:thermal:press>.addRecipe("pack_expert_crafting/thermal_machines/press/press_" + <item:${addingExpertPlateMultiservoPressOut}>.registryName.path, [<item:${addingExpertPlateMultiservoPressOut}> * expert_ingradient_to_plate], <fluid:minecraft:empty>, [addingExpertPlateMultiservoPressIn], 2400);
	}
} else {
	var addingPlateMultiservoPress = {
		"create:brass_sheet" : <tag:items:forge:ingots/brass>,
		"contenttweaker:tconstruct/cobalt_sheet" : <tag:items:forge:ingots/cobalt>,
		"contenttweaker:thermal/diamond_plate" : <tag:items:forge:gems/diamond>,
		"contenttweaker:thermal/emerald_plate" : <tag:items:forge:gems/emerald>,
		"contenttweaker:tconstruct/hepatizon_sheet" : <tag:items:forge:ingots/hepatizon>,
		"contenttweaker:thermal/lapis_plate" : <tag:items:forge:gems/lapis>,
		"contenttweaker:tconstruct/pig_iron_sheet" : <tag:items:forge:ingots/pig_iron>,
		"contenttweaker:thermal/quartz_plate" : <tag:items:forge:gems/quartz>,
		"contenttweaker:tconstruct/queens_slime_sheet" : <tag:items:forge:ingots/queens_slime>,
		"contenttweaker:tconstruct/slimesteel_sheet" : <tag:items:forge:ingots/slimesteel>,
		"createaddition:zinc_sheet" : <tag:items:forge:ingots/zinc>
	};
	for addingPlateMultiservoPressOut, addingPlateMultiservoPressIn in addingPlateMultiservoPress {
		<recipetype:thermal:press>.addRecipe("pack_expert_crafting/thermal_machines/press/press_" + <item:${addingPlateMultiservoPressOut}>.registryName.path, [<item:${addingPlateMultiservoPressOut}>], <fluid:minecraft:empty>, [addingPlateMultiservoPressIn], 2400);
	}
}

// Phytogenic Insolator
var addingPhytogenicInsolator = {
	"minecraft:dark_oak_log" : "croptopia:almond"
};
for addingPhytogenicInsolatorLog, addingPhytogenicInsolatorSeed in addingPhytogenicInsolator {
	<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_" + <item:${addingPhytogenicInsolatorSeed}>.registryName.path + "_sapling", [(<item:${addingPhytogenicInsolatorLog}> * 6) % 100, <item:${addingPhytogenicInsolatorSeed}_sapling> % 10, <item:${addingPhytogenicInsolatorSeed}> % 50], <item:${addingPhytogenicInsolatorSeed}_sapling>, 1000, 60000);
}

//<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_almond_sapling", [(<item:minecraft:dark_oak_log> * 6) % 100, <item:croptopia:almond_sapling> % 10, <item:croptopia:almond> % 50], <item:croptopia:almond_sapling>, 1000, 60000);
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
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_quark_azalea_flower", [(<item:quark:azalea_log> * 6) % 100, <item:ecologics:azalea_flower> % 10, <item:minecraft:hanging_roots> % 25], <item:ecologics:azalea_flower>, 1000, 60000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_mimicarnation", [(<item:nethersdelight:mimicarnation> * 3) % 100], <item:nethersdelight:mimicarnation>, 1000, 10000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_propelpearl", [(<item:nethersdelight:propelpearl> * 2) % 100, <item:nethersdelight:propelplant_cane> % 50], <item:nethersdelight:propelpearl>, 1000, 10000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_propelplant_stem", [(<item:nethersdelight:propelplant_stem> * 2) % 100, (<item:nethersdelight:propelpearl> * 2) % 50, <item:nethersdelight:propelplant_cane> % 50], <item:nethersdelight:propelplant_stem>, 1000, 10000);
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_propelplant_torch", [(<item:nethersdelight:propelplant_torch> * 2) % 100,(<item:nethersdelight:propelpearl> * 2) % 50, <item:nethersdelight:propelplant_cane> % 50], <item:nethersdelight:propelplant_torch>, 1000, 10000);
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
<recipetype:thermal:insolator>.addRecipe("thermal_machines/insolator/insolator_cactus", [(<item:minecraft:cactus> * 2) % 100, <item:ecologics:prickly_pear> % 50], <item:minecraft:cactus>, 1000, 30000);

// Phytogenic Insolator Catalyst
<recipetype:thermal:insolator_catalyst>.addCatalyst("insolator_catalyst_immersiveengineering_fertilizer", <item:immersiveengineering:fertilizer>, 1.25, 1.25, 0.6, 0.1, 0.5);
<recipetype:thermal:insolator_catalyst>.addCatalyst("insolator_catalyst_indutrialforegoing_fertilizer", <item:industrialforegoing:fertilizer>, 1.25, 1.25, 0.6, 0.1, 0.5);
<recipetype:thermal:insolator_catalyst>.addCatalyst("insolator_catalyst_waterstrainer_fertilizer", <item:waterstrainer:fertilizer>, 1.5, 1.5, 0.8, 0.1, 0.5);

// Pulverizer
<recipetype:thermal:pulverizer>.addRecipe("thermal_machines/pulverizer/alexsmobs/fish_bones", [<item:minecraft:bone_meal> % 450], <item:alexsmobs:fish_bones>, 1, 500);
<recipetype:thermal:pulverizer>.addRecipe("thermal_machines/pulverizer/aquaculture/fish_bones", [<item:minecraft:bone_meal> % 450], <item:aquaculture:fish_bones>, 1, 500);
<recipetype:thermal:pulverizer>.addRecipe("thermal_machines/pulverizer/netherdepthsupgrade/bonefish", [<item:minecraft:bone_meal> % 450], <item:netherdepthsupgrade:bonefish>, 1, 500);

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

// Sawmill
var addingLogSawmill = {
	"ancient" : "naturesaura",
	"azalea" : "ecologics",
	"canopy" : "twilightforest",
	"cerulean" : "enlightened_end",
	"cherry" : "vinery",
	"coconut" : "ecologics",
	"darkwood" : "twilightforest",
	"flowering_azalea" : "ecologics",
	"grongle" : "undergarden",
	"indigo" : "enlightened_end",
	"mangrove" : "twilightforest",
	"menril" : "integrateddynamics",
	"mining" : "twilightforest",
	"rubberwood" : "myrtrees",
	"sortwood" : "twilightforest",
	"smogstem" : "undergarden",
	"timewood" : "twilightforest",
	"transwood" : "twilightforest",
	"twilight_oak" : "twilightforest",
	"walnut" : "ecologics",
	"wigglewood" : "undergarden"
};
for addingLogSawmillName, addingLogSawmillModId in addingLogSawmill {
	if (addingLogSawmillName == " ancient") {
		<recipetype:thermal:sawmill>.addJsonRecipe("thermal_machines/sawmill/" + addingLogSawmillModId + "/sawmill_" + addingLogSawmillName + "_log", {
			"ingredient": {
				"tag": addingLogSawmillModId + ":" + addingLogSawmillName + "_logs"
			},
			"result": [{
				"item": addingLogSawmillModId + ":" + addingLogSawmillName + "_planks",
				"count": 3
			},{
				"item": "thermal:sawdust",
				"chance": 1.25
			}],
			"energy": 1000
		});
	} else if (addingLogSawmillName == " darkwood") {
		<recipetype:thermal:sawmill>.addJsonRecipe("thermal_machines/sawmill/" + addingLogSawmillModId + "/sawmill_" + addingLogSawmillName + "_log", {
			"ingredient": {
				"tag": addingLogSawmillModId + ":" + addingLogSawmillName + "_logs"
			},
			"result": [{
				"item": addingLogSawmillModId + ":dark_planks",
				"count": 6
			},{
				"item": "thermal:sawdust",
				"chance": 1.25
			}],
			"energy": 1000
		});
	} else if (addingLogSawmillName == " indigo") {
		<recipetype:thermal:sawmill>.addJsonRecipe("thermal_machines/sawmill/" + addingLogSawmillModId + "/sawmill_" + addingLogSawmillName + "_stems", {
			"ingredient": {
				"tag": addingLogSawmillModId + ":" + addingLogSawmillName + "_stems"
			},
			"result": [{
				"item": addingLogSawmillModId + ":" + addingLogSawmillName + "_planks",
				"count": 6
			},{
				"item": "thermal:sawdust",
				"chance": 1.25
			}],
			"energy": 1000
		});
	} else if (addingLogSawmillName == " rubberwoodt") {
		<recipetype:thermal:sawmill>.addJsonRecipe("thermal_machines/sawmill/" + addingLogSawmillModId + "/sawmill_" + addingLogSawmillName + "_log", {
			"ingredient": {
				"item": addingLogSawmillModId + ":" + addingLogSawmillName + "_logs"
			},
			"result": [{
				"item": addingLogSawmillModId + ":" + addingLogSawmillName + "_planks",
				"count": 6
			},{
				"item": "thermal:sawdust",
				"chance": 1.25
			}],
			"energy": 1000
		});
	} else if (addingLogSawmillName == "sortwood") {
		<recipetype:thermal:sawmill>.addJsonRecipe("thermal_machines/sawmill/" + addingLogSawmillModId + "/sawmill_" + addingLogSawmillName + "_log", {
			"ingredient": {
				"tag": addingLogSawmillModId + ":" + addingLogSawmillName + "_logs"
			},
			"result": [{
				"item": addingLogSawmillModId + ":sorting_planks",
				"count": 6
			},{
				"item": "thermal:sawdust",
				"chance": 1.25
			}],
			"energy": 1000
		});
	} else if (addingLogSawmillName == "timewood") {
		<recipetype:thermal:sawmill>.addJsonRecipe("thermal_machines/sawmill/" + addingLogSawmillModId + "/sawmill_" + addingLogSawmillName + "_log", {
			"ingredient": {
				"tag": addingLogSawmillModId + ":" + addingLogSawmillName + "_logs"
			},
			"result": [{
				"item": addingLogSawmillModId + ":time_planks",
				"count": 6
			},{
				"item": "thermal:sawdust",
				"chance": 1.25
			}],
			"energy": 1000
		});
	} else if (addingLogSawmillName == "transwood") {
		<recipetype:thermal:sawmill>.addJsonRecipe("thermal_machines/sawmill/" + addingLogSawmillModId + "/sawmill_" + addingLogSawmillName + "_log", {
			"ingredient": {
				"tag": addingLogSawmillModId + ":" + addingLogSawmillName + "_logs"
			},
			"result": [{
				"item": addingLogSawmillModId + ":transformation_planks",
				"count": 6
			},{
				"item": "thermal:sawdust",
				"chance": 1.25
			}],
			"energy": 1000
		});
	} else {
		<recipetype:thermal:sawmill>.addJsonRecipe("thermal_machines/sawmill/" + addingLogSawmillModId + "/sawmill_" + addingLogSawmillName + "_log", {
			"ingredient": {
				"tag": addingLogSawmillModId + ":" + addingLogSawmillName + "_logs"
			},
			"result": [{
				"item": addingLogSawmillModId + ":" + addingLogSawmillName + "_planks",
				"count": 6
			},{
				"item": "thermal:sawdust",
				"chance": 1.25
			}],
			"energy": 1000
		});
	}
}

Globals.endScript("recipe_thermal_series");