/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("recipe_immersive_engieneering");
Globals.priorityScript("Null");

if (packModeSetting.packModeSettingPlates() == true) {
	Globals.packExpertScript("Plate - Active");
}

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

val imGear = <item:immersiveengineering:mold_gear>;
val imPlate = <item:immersiveengineering:mold_plate>;
val imPacking2x2 = <item:immersiveengineering:mold_packing_4>;
val imPacking3x3 = <item:immersiveengineering:mold_packing_9>;
val imRod = <item:immersiveengineering:mold_rod>;
val imUnpacking = <item:immersiveengineering:mold_unpacking>;
val imWire = <item:immersiveengineering:mold_wire>;

val expert_ingradient_to_plate = packModeSetting.packModeSettingPlateMetalPress();

// Shapeless
craftingTable.addShapeless("immersiveengineering_crafting/wire_iron", <item:createaddition:iron_wire>, [<tag:items:forge:plates/iron>, <item:immersiveengineering:wirecutter>.anyDamage().transformDamage()]);
craftingTable.addShapeless("immersiveengineering_crafting/wire_gold", <item:createaddition:gold_wire>, [<tag:items:forge:plates/gold>, <item:immersiveengineering:wirecutter>.anyDamage().transformDamage()]);

// Shaped
craftingTable.addShaped("immersiveengineering_crafting_fiberboard", <item:immersiveengineering:fiberboard> * 8, [
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>],
	[<tag:items:forge:dusts/wood>, <item:immersiveengineering:phenolic_resin_bucket>, <tag:items:forge:dusts/wood>],
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>]
]);
craftingTable.addShaped("immersiveengineering_crafting_sawdust", <item:immersiveengineering:sawdust> * 6, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>],
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>]
]);

// Blueprint
<recipetype:immersiveengineering:blueprint>.addRecipe("immersiveengineering_blueprint/banner_wolf", "bannerpatterns", [<item:minecraft:paper>, <item:tconstruct:bloodbone>], <item:immersiveengineering:bannerpattern_wolf>);
<recipetype:immersiveengineering:blueprint>.addRecipe("immersiveengineering_blueprint/banner_wolf_l", "bannerpatterns", [<item:minecraft:paper>, <item:tconstruct:blazing_bone>], <item:immersiveengineering:bannerpattern_wolf_l>);
<recipetype:immersiveengineering:blueprint>.addRecipe("immersiveengineering_blueprint/banner_wolf_r", "bannerpatterns", [<item:minecraft:paper>, <item:tconstruct:necronium_bone>], <item:immersiveengineering:bannerpattern_wolf_r>);
<recipetype:immersiveengineering:blueprint>.addRecipe("immersiveengineering_blueprint/alexsmobs/banner_pattern_bear", "bannerpatterns", [<item:minecraft:paper>, <item:alexsmobs:bear_fur> * 6], <item:alexsmobs:banner_pattern_bear>);
<recipetype:immersiveengineering:blueprint>.addRecipe("immersiveengineering_blueprint/alexsmobs/banner_pattern_australia_0", "bannerpatterns", [<item:minecraft:paper>, <item:alexsmobs:kangaroo_hide> * 6], <item:alexsmobs:banner_pattern_australia_0>);
<recipetype:immersiveengineering:blueprint>.addRecipe("immersiveengineering_blueprint/alexsmobs/banner_pattern_australia_1", "bannerpatterns", [<item:minecraft:paper>, <item:alexsmobs:emu_feather> * 6], <item:alexsmobs:banner_pattern_australia_1>);
<recipetype:immersiveengineering:blueprint>.addRecipe("immersiveengineering_blueprint/alexsmobs/banner_pattern_new_mexico", "bannerpatterns", [<item:minecraft:paper>, <item:alexsmobs:tarantula_hawk_wing_fragment> * 6], <item:alexsmobs:banner_pattern_new_mexico>);
<recipetype:immersiveengineering:blueprint>.addRecipe("immersiveengineering_blueprint/alexsmobs/banner_pattern_brazil", "bannerpatterns", [<item:minecraft:paper>, <item:alexsmobs:shed_snake_skin> * 6], <item:alexsmobs:banner_pattern_brazil>);

// Bottling Machine
<recipetype:immersiveengineering:bottling_machine>.addJsonRecipe("immersiveengineering_bottling_machine/wheat_dough", {
	"fluid":{
		"amount": 250,
		"tag": "minecraft:water"
	},
	"inputs":[{
		"tag": "forge:flour"
	}],
	"results":[{
		"item":"farmersdelight:wheat_dough"
	}]
});

// Cloche
var addingSeedlCloche = {
	"amaranth" : "thermal",
	"artichoke" : "croptopia",
	"asparagus" : "croptopia",
	"barley" : "croptopia",
	"barley" : "thermal",
	"basil" : "croptopia",
	"bellpepper" : "croptopia",
	"bell_pepper" : "thermal",
	"blackbean" : "croptopia",
	"blackberry" : "croptopia",
	"blueberry" : "croptopia",
	"broccoli" : "croptopia",
	"cabbage" : "croptopia",
	"cantaloupe" : "croptopia",
	"cauliflower" : "croptopia",
	"celery" : "croptopia",
	"chile_pepper" : "croptopia",
	"coffee" : "croptopia",
	"corn" : "croptopia",
	"corn" : "thermal",
	"cranberry" : "croptopia",
	"cucumber" : "croptopia",
	"currant" : "croptopia",
	"eggplant" : "croptopia",
	"eggplant" : "thermal",
	"elderberry" : "croptopia",
	"flax" : "thermal",
	"garlic" : "croptopia",
	"ginger" : "croptopia",
	"grape" : "croptopia",
	"greenbean" : "croptopia",
	"green_bean" : "thermal",
	"greenonion" : "croptopia",
	"honeydew" : "croptopia",
	"hops" : "croptopia",
	"kale" : "croptopia",
	"kiwi" : "croptopia",
	"leek" : "croptopia",
	"lettuce" : "croptopia",
	"mustard" : "croptopia",
	"oat" : "croptopia",
	"olive" : "croptopia",
	"onion" : "croptopia",
	"onion" : "thermal",
	"peanut" : "croptopia",
	"peanut" : "thermal",
	"pineapple" : "croptopia",
	"radish" : "croptopia",
	"radish" : "thermal",
	"raspberry" : "croptopia",
	"rhubarb" : "croptopia",
	"rice" : "croptopia",
	"rice" : "thermal",
	"rutabaga" : "croptopia",
	"sadiroot" : "thermal",
	"saguaro" : "croptopia",
	"soybean" : "croptopia",
	"spinach" : "croptopia",
	"spinach" : "thermal",
	"squash" : "croptopia",
	"strawberry" : "croptopia",
	"strawberry" : "thermal",
	"sweetpotato" : "croptopia",
	"tomatillo" : "croptopia",
	"tomato" : "croptopia",
	"tomato" : "thermal",
	"turmeric" : "croptopia",
	"turnip" : "croptopia",
	"vanilla" : "croptopia",
	"yam" : "croptopia",
	"zucchini" : "croptopia"
};
for addingSeedlClocheName, addingSeedlClocheModId in addingSeedlCloche {
	if (addingSeedlClocheModId == "thermal") {
		if (addingSeedlClocheName == "barley" || addingSeedlClocheName == "flax" || addingSeedlClocheName == "radish" || addingSeedlClocheName == "rice" || addingSeedlClocheName == "sadiroot" || addingSeedlClocheName == "spinach") {
			<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/" + addingSeedlClocheModId + "/" + addingSeedlClocheName + "seeds_rich_soil", <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seeds>, <item:farmersdelight:rich_soil>, 720, [<item:${addingSeedlClocheModId}:${addingSeedlClocheName}> * 2, <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seeds>], <blockstate:${addingSeedlClocheModId}:${addingSeedlClocheName}>.block, "crop");
			<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/" + addingSeedlClocheModId + "/" + addingSeedlClocheName + "_seeds", <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seeds>, <tag:items:minecraft:dirt>, 800, [<item:${addingSeedlClocheModId}:${addingSeedlClocheName}> * 2, <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seeds>], <blockstate:${addingSeedlClocheModId}:${addingSeedlClocheName}>.block, "crop");
		} else {
			<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/" + addingSeedlClocheModId + "/" + addingSeedlClocheName + "seeds_rich_soil", <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seeds>, <item:farmersdelight:rich_soil>, 1008, [<item:${addingSeedlClocheModId}:${addingSeedlClocheName}> * 2, <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seeds>], <blockstate:${addingSeedlClocheModId}:${addingSeedlClocheName}>.block, "crop");
			<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/" + addingSeedlClocheModId + "/" + addingSeedlClocheName + "_seeds", <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seeds>, <tag:items:minecraft:dirt>, 1200, [<item:${addingSeedlClocheModId}:${addingSeedlClocheName}> * 2, <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seeds>], <blockstate:${addingSeedlClocheModId}:${addingSeedlClocheName}>.block, "crop");
		}
	} else if (addingSeedlClocheName == "vanilla") {
		<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/" + addingSeedlClocheModId + "/" + addingSeedlClocheName + "seed_rich_soil", <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seeds>, <item:farmersdelight:rich_soil>, 576, [<item:${addingSeedlClocheModId}:${addingSeedlClocheName}> * 2, <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seeds>], <blockstate:${addingSeedlClocheModId}:${addingSeedlClocheName}_crop>.block, "crop");
	} else {
		<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/" + addingSeedlClocheModId + "/" + addingSeedlClocheName + "seed_rich_soil", <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seed>, <item:farmersdelight:rich_soil>, 576, [<item:${addingSeedlClocheModId}:${addingSeedlClocheName}> * 2, <item:${addingSeedlClocheModId}:${addingSeedlClocheName}_seed>], <blockstate:${addingSeedlClocheModId}:${addingSeedlClocheName}_crop>.block, "crop");
	}
}

var addingSporeCloche = {
	"glowstone_mushroom_spores" : "glowstone_mushroom",
	"gunpowder_mushroom_spores" : "gunpowder_mushroom",
	"redstone_mushroom_spores" : "redstone_mushroom",
	"slime_mushroom_spores" : "slime_mushroom"
};
for addingSporeClocheName, addingSporeClocheBlock in addingSporeCloche {
	<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/thermal/" + addingSporeClocheName + "rich_soil", <item:thermal:${addingSporeClocheName}>, <item:farmersdelight:rich_soil>, 2160, [<item:thermal:${addingSporeClocheName}> * 2], <blockstate:thermal:${addingSporeClocheBlock}>.block, "crop");
	<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/thermal/" + addingSporeClocheName, <item:thermal:${addingSporeClocheName}>, <tag:items:evolution_craft:dirt/podzol>, 2400, [<item:thermal:${addingSporeClocheName}> * 2], <blockstate:thermal:${addingSporeClocheBlock}>.block, "crop");
}

<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/cactus", <item:minecraft:cactus>, <tag:items:forge:sand>, 560, [<item:minecraft:cactus>, <item:ecologics:prickly_pear>], <blockstate:minecraft:cactus>.block, "stacking");
<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/thermal/frost_melon", <item:thermal:frost_melon>, <tag:items:minecraft:dirt>, 2400, [<item:thermal:frost_melon>, <item:thermal:frost_melon_seeds>], <blockstate:thermal:frost_melon>.block, "stem");
<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/thermal/frost_melon_rich_soil", <item:thermal:frost_melon>, <item:farmersdelight:rich_soil>, 2160, [<item:thermal:frost_melon>, <item:thermal:frost_melon_seeds>], <blockstate:thermal:frost_melon>.block, "stem");

// Crusher
<recipetype:immersiveengineering:crusher>.addRecipe("immersiveengineering_crusher/wheat_flour_from_hay_block", <item:minecraft:hay_block>, 1600, <item:create:wheat_flour> * 18, (<item:farmersdelight:straw> * 5) % 100, (<item:farmersdelight:straw> * 4) % 25);
<recipetype:immersiveengineering:crusher>.addRecipe("immersiveengineering_crusher/wheat_flour_from_wheat", <item:minecraft:wheat>, 1600, <item:create:wheat_flour> * 2, <item:farmersdelight:straw> % 25);

// Fertilizer
<recipetype:immersiveengineering:fertilizer>.addFertilizer("immersiveengineering_garden_cloche_fertilizer/industrialforegoing_fertilizer", <item:industrialforegoing:fertilizer>, 1.25);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("immersiveengineering_garden_cloche_fertilizer/waterstrainer_fertilizer", <item:waterstrainer:fertilizer>, 1.5);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("immersiveengineering_garden_cloche_fertilizer/thermal_compost", <item:thermal:compost>, 1.75);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("immersiveengineering_garden_cloche_fertilizer/create_tree_fertilizer", <item:create:tree_fertilizer>, 2.0);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("immersiveengineering_garden_cloche_fertilizer/thermal_phytogro", <item:thermal:phytogro>, 3.0);

// Metal Press
var addingGearMetalPress = {
	<tag:items:forge:gems/diamond> : "thermal:diamond_gear",
	<tag:items:forge:ingots/dragonsteel> : "thermal_extra:dragonsteel_gear",
	<tag:items:forge:gems/emerald> : "thermal:emerald_gear",
	<tag:items:forge:ingots/enderium> : "thermal:enderium_gear",
	<item:pneumaticcraft:ingot_iron_compressed> : "pneumaticcraft:compressed_iron_gear",
	<tag:items:forge:gems/lapis> : "thermal:lapis_gear",
	<tag:items:forge:ingots/lumium> : "thermal:lumium_gear",
	<tag:items:forge:ingots/netherite> : "thermal:netherite_gear",
	<tag:items:forge:gems/quartz> : "thermal:quartz_gear",
	<tag:items:forge:ingots/shellite> : "thermal_extra:shellite_gear",
	<tag:items:forge:ingots/signalum> : "thermal:signalum_gear",
	<tag:items:forge:ingots/soul_infused> : "thermal_extra:soul_infused_gear",
	<tag:items:forge:ingots/twinite> : "thermal_extra:twinite_gear"
};
for addingGearMetalPressIn, addingGearMetalPressOut in addingGearMetalPress {
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/" + <item:${addingGearMetalPressOut}>.registryName.path, addingGearMetalPressIn * 4, imGear, 2400, <item:${addingGearMetalPressOut}>);
}

var addingRodMetalPress = {
	<tag:items:forge:gems/diamond> : "contenttweaker:immersiveengineering/diamond_rod",
	<tag:items:forge:gems/emerald> : "contenttweaker:immersiveengineering/emerald_rod",
	<item:contenttweaker:create/prismarine_ingot_alloy> : "contenttweaker:create/prismarine_rod"

};
for addingRodMetalPressIn, addingRodMetalPressOut in addingRodMetalPress {
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/" + <item:${addingRodMetalPressOut}>.registryName.path, addingRodMetalPressIn * 4, imRod, 2400, <item:${addingRodMetalPressOut}> * 2);
}

if (packModeSetting.packModeSettingPlates() == true) {
	var addingAllPlateMetalPress = {
		<tag:items:forge:ingots/aluminum> : "immersiveengineering:plate_aluminum",
		<tag:items:forge:ingots/brass> : "create:brass_sheet",
		<tag:items:forge:ingots/bronze> : "thermal:bronze_plate",
		<tag:items:forge:ingots/cobalt> : "contenttweaker:tconstruct/cobalt_sheet",
		<tag:items:forge:ingots/copper> : "thermal:copper_plate",
		<tag:items:forge:gems/diamond> : "contenttweaker:thermal/diamond_plate",
		<tag:items:forge:ingots/dragonsteel> : "thermal_extra:dragonsteel_plate",
		<tag:items:forge:ingots/desh> : "beyond_earth:desh_plate",
		<tag:items:forge:ingots/electrum> : "thermal:electrum_plate",
		<tag:items:forge:gems/emerald> : "contenttweaker:thermal/emerald_plate",
		<tag:items:forge:ingots/enderium> : "thermal:enderium_plate",
		<tag:items:forge:ingots/gold> : "thermal:gold_plate",
		<tag:items:forge:ingots/hepatizon> : "contenttweaker:tconstruct/hepatizon_sheet",
		<tag:items:forge:ingots/invar> : "thermal:invar_plate",
		<tag:items:forge:ingots/iron> : "thermal:iron_plate",
		<tag:items:forge:gems/lapis> : "contenttweaker:thermal/lapis_plate",
		<tag:items:forge:ingots/lead> : "thermal:lead_plate",
		<tag:items:forge:ingots/lumium> : "thermal:lumium_plate",
		<tag:items:forge:ingots/manyullyn> : "contenttweaker:tconstruct/manyullyn_sheet",
		<tag:items:forge:ingots/netherite> : "thermal:netherite_plate",
		<tag:items:forge:ingots/nickel> : "thermal:nickel_plate",
		<tag:items:forge:ingots/osmium> : "contenttweaker:thermal/osmium_plate",
		<tag:items:forge:ingots/pig_iron> : "contenttweaker:tconstruct/pig_iron_sheet",
		<tag:items:forge:gems/quartz> : "contenttweaker:thermal/quartz_plate",
		<tag:items:forge:ingots/queens_slime> : "contenttweaker:tconstruct/queens_slime_sheet",
		<tag:items:forge:ingots/rose_gold> : "thermal:rose_gold_plate",
		<tag:items:forge:ingots/shellite> : "thermal_extra:shellite_plate",
		<tag:items:forge:ingots/signalum> : "thermal:signalum_plate",
		<tag:items:forge:ingots/silver> : "thermal:silver_plate",
		<tag:items:forge:ingots/slimesteel> : "contenttweaker:tconstruct/slimesteel_sheet",
		<tag:items:forge:ingots/soul_infused> : "thermal_extra:soul_infused_plate",
		<tag:items:forge:ingots/steel> : "thermal:steel_plate",
		<tag:items:forge:ingots/tin> : "thermal:tin_plate",
		<tag:items:forge:ingots/twinite> : "thermal_extra:twinite_plate",
		<tag:items:forge:ingots/uranium> : "immersiveengineering:plate_uranium",
		<tag:items:forge:ingots/zinc> : "createaddition:zinc_sheet"
	};
	for addingAllPlateMetalPressIn, addingAllPlateMetalPressOut in addingAllPlateMetalPress {
		<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/" + <item:${addingAllPlateMetalPressOut}>.registryName.path, addingAllPlateMetalPressIn * expert_ingradient_to_plate, imPlate, 2400, <item:${addingAllPlateMetalPressOut}>);
	}
} else {
	var addingPlateMetalPress = {
		<tag:items:forge:ingots/cobalt> : "contenttweaker:tconstruct/cobalt_sheet",
		<tag:items:forge:gems/diamond> : "contenttweaker:thermal/diamond_plate",
		<tag:items:forge:ingots/dragonsteel> : "thermal_extra:dragonsteel_plate",
		<tag:items:forge:gems/emerald> : "contenttweaker:thermal/emerald_plate",
		<tag:items:forge:ingots/enderium> : "thermal:enderium_plate",
		<tag:items:forge:ingots/hepatizon> : "contenttweaker:tconstruct/hepatizon_sheet",
		<tag:items:forge:gems/lapis> : "contenttweaker:thermal/lapis_plate",
		<tag:items:forge:ingots/lumium> : "thermal:lumium_plate",
		<tag:items:forge:ingots/manyullyn> : "contenttweaker:tconstruct/manyullyn_sheet",
		<tag:items:forge:ingots/netherite> : "thermal:netherite_plate",
		<tag:items:forge:ingots/osmium> : "contenttweaker:thermal/osmium_plate",
		<tag:items:forge:ingots/pig_iron> : "contenttweaker:tconstruct/pig_iron_sheet",
		<tag:items:forge:gems/quartz> : "contenttweaker:thermal/quartz_plate",
		<tag:items:forge:ingots/queens_slime> : "contenttweaker:tconstruct/queens_slime_sheet",
		<tag:items:forge:ingots/shellite> : "thermal_extra:shellite_plate",
		<tag:items:forge:ingots/signalum> : "thermal:signalum_plate",
		<tag:items:forge:ingots/slimesteel> : "contenttweaker:tconstruct/slimesteel_sheet",
		<tag:items:forge:ingots/soul_infused> : "thermal_extra:soul_infused_plate",
		<tag:items:forge:ingots/twinite> : "thermal_extra:twinite_plate"
	};
	for addingPlateMetalPressIn, addingPlateMetalPressOut in addingPlateMetalPress {
		<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/" + <item:${addingPlateMetalPressOut}>.registryName.path, addingPlateMetalPressIn, imPlate, 2400, <item:${addingPlateMetalPressOut}>);
	}
}

<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_allurite_shimmer_cake", <item:galosphere_delight:allurite_shimmer_cake>, imUnpacking, 3200, <item:galosphere_delight:allurite_shimmer_cake_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_apple_pie", <item:vinery:apple_pie>, imUnpacking, 3200, <item:vinery:apple_pie_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_blood_cake", <item:tconstruct:blood_cake>, imUnpacking, 3200, <item:contenttweaker:tconstruct/delight/blood_cake_slice> * 7);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_chorus_fruit_pie", <item:ends_delight:chorus_fruit_pie>, imUnpacking, 3200, <item:ends_delight:chorus_fruit_pie_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_chorus_pie", <item:endersdelight:chorus_pie>, imUnpacking, 3200, <item:endersdelight:chorus_pie_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_earth_cake", <item:tconstruct:earth_cake>, imUnpacking, 3200, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice> * 7);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_ender_cake", <item:tconstruct:ender_cake>, imUnpacking, 3200, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice> * 7);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_frost_melon", <item:thermal:frost_melon>, imUnpacking, 3200, <item:thermal:frost_melon_slice> * 9);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_gloomgourd", <item:undergarden:gloomgourd>, imUnpacking, 3200, <item:undergardendelight:gloomgourd_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_gloomgourd_pie", <item:undergarden:gloomgourd_pie>, imUnpacking, 3200, <item:undergardendelight:gloomgourd_pie_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_lumiere_shimmer_cake", <item:galosphere_delight:lumiere_shimmer_cake>, imUnpacking, 3200, <item:galosphere_delight:lumiere_shimmer_cake_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_magma_cake", <item:tconstruct:magma_cake>, imUnpacking, 3200, <item:contenttweaker:tconstruct/delight/magma_cake_slice> * 7);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_mushroom_pot_pie", <item:largemeals:mushroom_pot_pie>, imUnpacking, 3200, <item:largemeals:mushroom_pot_pie_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_pizza", <item:brewinandchewin:pizza>, imUnpacking, 3200, <item:brewinandchewin:pizza_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_sky_cake", <item:tconstruct:sky_cake>, imUnpacking, 3200, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice> * 7);

// Squeezer
<recipetype:immersiveengineering:squeezer>.addRecipe("immersiveengineering_squeezer/tmted/tomato", <tag:items:forge:tomatoes> , 6400, <fluid:tmted:tomato_sauce> * 75);

// Sawmill
//<recipetype:immersiveengineering:sawmill>.addRecipe("immersiveengineering_sawmill/cherry_door", <item:vinery:cherry_door>, 800, <item:vinery:cherry_planks>, [<tag:items:forge:dusts/wood>]);

Globals.endScript("recipe_immersive_engieneering");