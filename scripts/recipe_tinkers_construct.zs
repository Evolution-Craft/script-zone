/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Petrified Oak Slab.
 * v0.2 : Add Custom Rods.
 */

Globals.startScript("recipe_tinkers_construct");
Globals.priorityScript("Null");

if (packModeSetting.packModeSettingPlates() == true) {
	Globals.packExpertScript("Plate - Active");
}

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

val expert_ingradient_to_plate = packModeSetting.packModeSettingPlateCastingBasing();

// Casting Basin
<recipetype:tconstruct:casting_basin>.addJsonRecipe("tconstruct_casting_basin/minecraft_petrified_oak_slab", {
	"cast": {
		"item": "minecraft:oak_slab"
	},
	"cast_consumed": true,
	"fluid": {
		"tag": "tconstruct:molten_clay",
		"amount": 180
	},
	"result": "minecraft:petrified_oak_slab",
	"cooling_time": 221
});

// Casting Table
<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_smeltery/casting/diamond/rod_gold_cast", {
	"cast": {
		"tag": "tconstruct:casts/multi_use/rod"
	},
	"fluid": {
		"tag": "tconstruct:molten_diamond",
		"amount": 45
	},
		"result": {
		"item": "contenttweaker:immersiveengineering/diamond_rod"
	},
	"cooling_time": 83
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_smeltery/casting/diamond/rod_sand_cast", {
	"cast": {
		"tag": "tconstruct:casts/single_use/rod"
	},
	"cast_consumed": true,
	"fluid": {
		"tag": "tconstruct:molten_diamond",
		"amount": 45
	},
	"result": {
		"item": "contenttweaker:immersiveengineering/diamond_rod"
	},
	"cooling_time": 83
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_smeltery/casting/emerald/rod_gold_cast", {
	"cast": {
		"tag": "tconstruct:casts/multi_use/rod"
	},
	"fluid": {
		"tag": "tconstruct:molten_emerald",
		"amount": 45
	},
		"result": {
		"item": "contenttweaker:immersiveengineering/emerald_rod"
	},
	"cooling_time": 68
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_smeltery/casting/emerald/rod_sand_cast", {
	"cast": {
		"tag": "tconstruct:casts/single_use/rod"
	},
	"cast_consumed": true,
	"fluid": {
		"tag": "tconstruct:molten_emerald",
		"amount": 45
	},
	"result": {
		"item": "contenttweaker:immersiveengineering/emerald_rod"
	},
	"cooling_time": 68
});

if (packModeSetting.packModeSettingPlates() == true) {

	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/aluminum/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/aluminum/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/brass/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/brass/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/bronze/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/bronze/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/constantan/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/constantan/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/copper/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/copper/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("thermal_extra:compat/tconstruct/casting/dragonsteel/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("thermal_extra:compat/tconstruct/casting/dragonsteel/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("beyond_earth:smeltery/casting/metal/desh/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("beyond_earth:smeltery/casting/metal/desh/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/electrum/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/electrum/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/enderium/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/enderium/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/gold/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/gold/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/invar/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/invar/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/iron/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/iron/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/lead/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/lead/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/lumium/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/lumium/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/netherite/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/netherite/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/nickel/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/nickel/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/rose_gold/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/rose_gold/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/signalum/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/signalum/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/silver/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/silver/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("thermal_extra:compat/tconstruct/casting/soul_infused/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("thermal_extra:compat/tconstruct/casting/soul_infused/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/steel/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/steel/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/tin/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/tin/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/uranium/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/uranium/plate_sand_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/zinc/plate_gold_cast");
	<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/zinc/plate_sand_cast");

	var addingPlateCastingTable = {
		"immersiveengineering:plate_aluminum" : "tconstruct:molten_aluminum",
		"create:brass_sheet" : "tconstruct:molten_brass",
		"thermal:bronze_plate" : "tconstruct:molten_bronze",
		"contenttweaker:tconstruct/cobalt_sheet" : "tconstruct:molten_cobalt",
		"thermal:constantan_plate" : "tconstruct:molten_constantan",
		"thermal:copper_plate" : "tconstruct:molten_copper",
		"beyond_earth:desh_plate" : "beyond_earth:molten_desh",
		"thermal_extra:dragonsteel_plate" : "thermal_extra:dragonsteel",
		"contenttweaker:thermal/diamond_plate" : "tconstruct:molten_diamond",
		"thermal:electrum_plate" : "tconstruct:molten_electrum",
		"thermal:enderium_plate" : "tconstruct:molten_enderium",
		"contenttweaker:thermal/emerald_plate" : "tconstruct:molten_emerald",
		"thermal:gold_plate" : "tconstruct:molten_gold",
		"contenttweaker:tconstruct/hepatizon_sheet" : "tconstruct:molten_hepatizon",
		"thermal:invar_plate" : "tconstruct:molten_invar",
		"thermal:iron_plate" : "tconstruct:molten_iron",
		//"contenttweaker:thermal/lapis_plate" : "forge:gems/lapis", // TODO : Missig Lapis Molten Fluid
		"thermal:lead_plate" : "tconstruct:molten_lead",
		"thermal:lumium_plate" : "tconstruct:molten_lumium",
		"thermal:netherite_plate" : "tconstruct:molten_netherite",
		"thermal:nickel_plate" : "tconstruct:molten_nickel",
		"contenttweaker:tconstruct/pig_iron_sheet" : "tconstruct:molten_pig_iron",
		"contenttweaker:thermal/quartz_plate" : "tconstruct:molten_quartz",
		"contenttweaker:tconstruct/queens_slime_sheet" : "tconstruct:molten_queens_slime",
		"thermal:rose_gold_plate" : "tconstruct:molten_rose_gold",
		"thermal_extra:shellite_plate" : "thermal_extra:shellite",
		"thermal:signalum_plate" : "tconstruct:molten_signalum",
		"thermal:silver_plate" : "tconstruct:molten_silver",
		"contenttweaker:tconstruct/slimesteel_sheet" : "tconstruct:molten_slimesteel",
		"thermal_extra:soul_infused_plate" : "thermal_extra:soul_infused",
		"thermal:steel_plate" : "tconstruct:molten_steel",
		"thermal:tin_plate" : "tconstruct:molten_tin",
		"thermal_extra:twinite_plate" : "thermal_extra:twinite",
		"immersiveengineering:plate_uranium" : "tconstruct:molten_uranium",
		"createaddition:zinc_sheet" : "tconstruct:molten_zinc"
	};
	
	for addingPlateCastingTableOut, addingPlateCastingTableIn in addingPlateCastingTable {

		val cooling_time_value = 50;
		val addingPlateCastingTableName = <item:${addingPlateCastingTableOut}>;

		<recipetype:tconstruct:casting_table>.addJsonRecipe("pack_expert_crafting/tconstruct_smeltery/casting/" + addingPlateCastingTableName.registryName.path + "_gold_cast", {
			"cast": {
				"tag": "tconstruct:casts/multi_use/plate"
			},
			"fluid": {
				"tag": addingPlateCastingTableIn,
				"amount": expert_ingradient_to_plate
			},
			"result": {
				"item": addingPlateCastingTableOut
			},
			"cooling_time": cooling_time_value
		});
		<recipetype:tconstruct:casting_table>.addJsonRecipe("pack_expert_crafting/tconstruct_smeltery/casting/" + addingPlateCastingTableName.registryName.path + "_sand_cast", {
			"cast": {
				"tag": "tconstruct:casts/single_use/plate"
			},
			"cast_consumed": true,
			"fluid": {
				"tag": addingPlateCastingTableIn,
				"amount": expert_ingradient_to_plate
			},
			"result": {
				"item": addingPlateCastingTableOut
			},
			"cooling_time": cooling_time_value
		});
	}
} else {
	var addingPlateCastingTable = {
		"contenttweaker:tconstruct/cobalt_sheet" : "tconstruct:molten_cobalt",
		"contenttweaker:thermal/diamond_plate" : "tconstruct:molten_diamond",
		"contenttweaker:thermal/emerald_plate" : "tconstruct:molten_emerald",
		"contenttweaker:tconstruct/hepatizon_sheet" : "tconstruct:molten_hepatizon",
		//"contenttweaker:thermal/lapis_plate" : "forge:gems/lapis", // TODO : Missig Lapis Molten Fluid
		"contenttweaker:tconstruct/pig_iron_sheet" : "tconstruct:molten_pig_iron",
		"contenttweaker:thermal/quartz_plate" : "tconstruct:molten_quartz",
		"thermal_extra:soul_infused_plate" : "thermal_extra:soul_infused",
		"thermal_extra:shellite_plate" : "thermal_extra:shellite",
		"contenttweaker:tconstruct/queens_slime_sheet" : "tconstruct:molten_queens_slime",
		"contenttweaker:tconstruct/slimesteel_sheet" : "tconstruct:molten_slimesteel"
	};
	
	for addingPlateCastingTableOut, addingPlateCastingTableIn in addingPlateCastingTable {

		val cooling_time_value = 50;
		val addingPlateCastingTableName = <item:${addingPlateCastingTableOut}>;

		<recipetype:tconstruct:casting_table>.addJsonRecipe("pack_expert_crafting/tconstruct_smeltery/casting/" + addingPlateCastingTableName.registryName.path + "_gold_cast", {
			"cast": {
				"tag": "tconstruct:casts/multi_use/plate"
			},
			"fluid": {
				"tag": addingPlateCastingTableIn,
				"amount": expert_ingradient_to_plate
			},
			"result": {
				"item": addingPlateCastingTableOut
			},
			"cooling_time": cooling_time_value
		});
		<recipetype:tconstruct:casting_table>.addJsonRecipe("pack_expert_crafting/tconstruct_smeltery/casting/" + addingPlateCastingTableName.registryName.path + "_sand_cast", {
			"cast": {
				"tag": "tconstruct:casts/single_use/plate"
			},
			"cast_consumed": true,
			"fluid": {
				"tag": addingPlateCastingTableIn,
				"amount": expert_ingradient_to_plate
			},
			"result": {
				"item": addingPlateCastingTableOut
			},
			"cooling_time": cooling_time_value
		});
	}

}

Globals.endScript("recipe_tinkers_construct");