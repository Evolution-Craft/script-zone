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

// Shaped
craftingTable.addShaped("tconstruct/gadgets/cake/blood_cake", <item:tconstruct:blood_cake>, [
	[<item:tconstruct:blood_bucket>, <item:tconstruct:blood_bucket>, <item:tconstruct:blood_bucket>],
	[<tag:items:forge:dusts/glowstone>, <tag:items:forge:eggs>, <tag:items:forge:dusts/glowstone>],
	[<item:tconstruct:blood_slime_tall_grass>, <item:tconstruct:blood_slime_tall_grass>, <item:tconstruct:blood_slime_tall_grass>]
]);
craftingTable.addShaped("tconstruct/gadgets/cake/earth_cake", <item:tconstruct:earth_cake>, [
	[<item:tconstruct:earth_slime_bucket>, <item:tconstruct:earth_slime_bucket>, <item:tconstruct:earth_slime_bucket>],
	[<item:minecraft:sugar>, <tag:items:forge:eggs>, <item:minecraft:sugar>],
	[<item:tconstruct:earth_slime_tall_grass>, <item:tconstruct:earth_slime_tall_grass>, <item:tconstruct:earth_slime_tall_grass>]
]);
craftingTable.addShaped("tconstruct/gadgets/cake/ender_cake", <item:tconstruct:ender_cake>, [
	[<item:tconstruct:ender_slime_bucket>, <item:tconstruct:ender_slime_bucket>, <item:tconstruct:ender_slime_bucket>],
	[<item:minecraft:sugar>, <tag:items:forge:eggs>, <item:minecraft:sugar>],
	[<item:tconstruct:ender_slime_tall_grass>, <item:tconstruct:ender_slime_tall_grass>, <item:tconstruct:ender_slime_tall_grass>]
]);
craftingTable.addShaped("tconstruct/gadgets/cake/magma_cake", <item:tconstruct:magma_cake>, [
	[<item:tconstruct:magma_bucket>, <item:tconstruct:magma_bucket>, <item:tconstruct:magma_bucket>],
	[<tag:items:forge:dusts/glowstone>, <tag:items:forge:eggs>, <tag:items:forge:dusts/glowstone>],
	[<item:minecraft:crimson_roots>, <item:minecraft:crimson_roots>, <item:minecraft:crimson_roots>]
]);
craftingTable.addShaped("tconstruct/gadgets/cake/sky_cake", <item:tconstruct:sky_cake>, [
	[<item:tconstruct:sky_slime_bucket>, <item:tconstruct:sky_slime_bucket>, <item:tconstruct:sky_slime_bucket>],
	[<tag:items:forge:dusts/glowstone>, <tag:items:forge:eggs>, <tag:items:forge:dusts/glowstone>],
	[<item:tconstruct:sky_slime_tall_grass>, <item:tconstruct:sky_slime_tall_grass>, <item:tconstruct:sky_slime_tall_grass>]
]);

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
		<recipetype:tconstruct:casting_table>.addJsonRecipe("pack_expert_crafting/tconstruct_smeltery/casting/" + <item:${addingPlateCastingTableOut}>.registryName.path + "_gold_cast", {
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
			"cooling_time": 50
		});
		<recipetype:tconstruct:casting_table>.addJsonRecipe("pack_expert_crafting/tconstruct_smeltery/casting/" + <item:${addingPlateCastingTableOut}>.registryName.path + "_sand_cast", {
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
			"cooling_time": 50
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
		<recipetype:tconstruct:casting_table>.addJsonRecipe("pack_expert_crafting/tconstruct_smeltery/casting/" + <item:${addingPlateCastingTableOut}>.registryName.path + "_gold_cast", {
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
			"cooling_time": 50
		});
		<recipetype:tconstruct:casting_table>.addJsonRecipe("pack_expert_crafting/tconstruct_smeltery/casting/" + <item:${addingPlateCastingTableOut}>.registryName.path + "_sand_cast", {
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
			"cooling_time": 50
		});
	}
}

// Melting
packAddRecipeTinkersConstruct_Melting("tconstruct_melting/smeltery/melting/croptopia/cooking_pot", <item:croptopia:cooking_pot>, <fluid:tconstruct:molten_iron>, 180, 800, 159);
packAddRecipeTinkersConstruct_Melting("tconstruct_melting/smeltery/melting/croptopia/food_press", <item:croptopia:food_press>, <fluid:tconstruct:molten_iron>, 180, 800, 159);
packAddRecipeTinkersConstruct_Melting("tconstruct_melting/smeltery/melting/croptopia/frying_pan", <item:croptopia:frying_pan>, <fluid:tconstruct:molten_iron>, 180, 800, 159);
packAddRecipeTinkersConstruct_Melting("tconstruct_melting/smeltery/melting/croptopia/knife", <item:croptopia:knife>, <fluid:tconstruct:molten_iron>, 180, 800, 159);
packAddRecipeTinkersConstruct_Melting("tconstruct_melting/smeltery/melting/contenttweaker/immersiveengineering/diamond_rod", <item:contenttweaker:immersiveengineering/diamond_rod>, <fluid:tconstruct:molten_diamond>, 45, 1450, 83);
packAddRecipeTinkersConstruct_Melting("tconstruct_melting/smeltery/melting/contenttweaker/immersiveengineering/emerald_rod", <item:contenttweaker:immersiveengineering/emerald_rod>, <fluid:tconstruct:molten_emerald>, 45, 934, 68);
packAddRecipeTinkersConstruct_Melting("tconstruct_melting/smeltery/melting/farmersdelight/cooking_pot", <item:farmersdelight:cooking_pot>, <fluid:tconstruct:molten_iron>, 450, 800, 159);
packAddRecipeTinkersConstruct_Melting("tconstruct_melting/smeltery/melting/farmersdelight/horse_feed", <item:farmersdelight:horse_feed>, <fluid:tconstruct:molten_gold>, 80, 700, 99);
packAddRecipeTinkersConstruct_Melting("tconstruct_melting/smeltery/melting/farmersdelight/stove", <item:farmersdelight:stove>, <fluid:tconstruct:molten_iron>, 270, 800, 159);

<recipetype:tconstruct:melting>.addJsonRecipe("tconstruct_melting/smeltery/melting/farmersdelight/diamond_knife", {
	"ingredient": {
		"item": "farmersdelight:diamond_knife"
	},
	"result": {
		"fluid": "tconstruct:molten_diamond",
		"amount": 100,
		"unit_size": 25
	},
	"temperature": 1450,
	"time": 144
});
<recipetype:tconstruct:melting>.addJsonRecipe("tconstruct_melting/smeltery/melting/farmersdelight/golden_knife", {
	"ingredient": {
		"item": "farmersdelight:golden_knife"
	},
	"result": {
		"fluid": "tconstruct:molten_gold",
		"amount": 90,
		"unit_size": 10
	},
	"temperature": 700,
	"time": 99
});
<recipetype:tconstruct:melting>.addJsonRecipe("tconstruct_melting/smeltery/melting/farmersdelight/iron_knife", {
	"ingredient": {
		"item": "farmersdelight:iron_knife"
	},
	"result": {
		"fluid": "tconstruct:molten_diamond",
		"amount": 90,
		"unit_size": 10
	},
	"temperature": 800,
	"time": 104
});
<recipetype:tconstruct:melting>.addJsonRecipe("tconstruct_melting/smeltery/melting/farmersdelight/netherite_knife", {
	"ingredient": {
		"item": "farmersdelight:netherite_knife"
	},
	"result": {
		"fluid": "tconstruct:molten_netherite",
		"amount": 90,
		"unit_size": 10
	},
	"temperature": 1250,
	"time": 74,
	"byproducts": [{
		"fluid": "tconstruct:molten_diamond",
		"amount": 100,
		"unit_size": 25
	}]
});
<recipetype:tconstruct:melting>.addJsonRecipe("tconstruct_melting/smeltery/melting/farmersdelight/skillet", {
	"ingredient": {
		"item": "farmersdelight:skillet"
	},
	"result": {
		"fluid": "tconstruct:molten_iron",
		"amount": 360,
		"unit_size": 10
	},
	"temperature": 800,
	"time": 129
});

Globals.endScript("recipe_tinkers_construct");