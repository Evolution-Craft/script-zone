/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Missing Gear.
 * v0.2 : Adding Missing Pattern.
 * v0.3 : Adding Missing Wire.
 * v0.4 : Add Custom Rods.
 * v0.5 : Adding Plate System.
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

val expert_ingradient_to_plate = packModeSetting.packModeSettingPlateMetalPress();

// Shapeless
craftingTable.addShapeless("immersiveengineering_crafting/wire_iron", <item:createaddition:iron_wire>, [<tag:items:forge:plates/iron>, <item:immersiveengineering:wirecutter>.anyDamage().transformDamage()]);
craftingTable.addShapeless("immersiveengineering_crafting/wire_gold", <item:createaddition:gold_wire>, [<tag:items:forge:plates/gold>, <item:immersiveengineering:wirecutter>.anyDamage().transformDamage()]);

// Shaped
craftingTable.removeByName("immersiveengineering:crafting/fiberboard");
craftingTable.addShaped("immersiveengineering_crafting_fiberboard", <item:immersiveengineering:fiberboard> * 8, [
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>],
	[<tag:items:forge:dusts/wood>, <item:immersiveengineering:phenolic_resin_bucket>, <tag:items:forge:dusts/wood>],
	[<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>]
]);
craftingTable.removeByName("immersiveengineering:crafting/sawdust");
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
<recipetype:immersiveengineering:bottling_machine>.removeByName("tmted:bottling/wheat_dough");
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

<recipetype:immersiveengineering:cloche>.removeByName("immersiveengineering:cloche/cactus");
<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/cactus", <item:minecraft:cactus>, <tag:items:forge:sand>, 560, [<item:minecraft:cactus>, <item:ecologics:prickly_pear>], <blockstate:minecraft:cactus>.block, "stacking");
<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/thermal/frost_melon", <item:thermal:frost_melon>, <tag:items:minecraft:dirt>, 2400, [<item:thermal:frost_melon>, <item:thermal:frost_melon_seeds>], <blockstate:thermal:frost_melon>.block, "stem");
<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/thermal/frost_melon_rich_soil", <item:thermal:frost_melon>, <item:farmersdelight:rich_soil>, 2160, [<item:thermal:frost_melon>, <item:thermal:frost_melon_seeds>], <blockstate:thermal:frost_melon>.block, "stem");

// Crusher
<recipetype:immersiveengineering:crusher>.removeByName("tmted:crusher/wheat_flour_from_bale");
<recipetype:immersiveengineering:crusher>.addRecipe("immersiveengineering_crusher/wheat_flour_from_hay_block", <item:minecraft:hay_block>, 1600, <item:create:wheat_flour> * 18, (<item:farmersdelight:straw> * 5) % 100, (<item:farmersdelight:straw> * 4) % 25);
<recipetype:immersiveengineering:crusher>.removeByName("tmted:crusher/wheat_flour");
<recipetype:immersiveengineering:crusher>.addRecipe("immersiveengineering_crusher/wheat_flour_from_wheat", <item:minecraft:wheat>, 1600, <item:create:wheat_flour> * 2, <item:farmersdelight:straw> % 25);

// Fertilizer
<recipetype:immersiveengineering:fertilizer>.addFertilizer("immersiveengineering_garden_cloche_fertilizer/industrialforegoing_fertilizer", <item:industrialforegoing:fertilizer>, 1.25);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("immersiveengineering_garden_cloche_fertilizer/waterstrainer_fertilizer", <item:waterstrainer:fertilizer>, 1.5);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("immersiveengineering_garden_cloche_fertilizer/thermal_compost", <item:thermal:compost>, 1.75);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("immersiveengineering_garden_cloche_fertilizer/create_tree_fertilizer", <item:create:tree_fertilizer>, 2.0);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("immersiveengineering_garden_cloche_fertilizer/thermal_phytogro", <item:thermal:phytogro>, 3.0);

// Metal Press
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/diamond_rod", <item:minecraft:diamond>, <item:immersiveengineering:mold_rod>, 2400, <item:contenttweaker:immersiveengineering/diamond_rod> * 2);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/emerald_rod", <item:minecraft:emerald>, <item:immersiveengineering:mold_rod>, 2400, <item:contenttweaker:immersiveengineering/emerald_rod> * 2);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_diamond", <item:minecraft:diamond> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:diamond_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_dragonsteel", <item:thermal_extra:dragonsteel_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal_extra:dragonsteel_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_emerald", <item:minecraft:emerald> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:emerald_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_enderium", <item:thermal:enderium_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:enderium_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_iron_compressed", <item:pneumaticcraft:ingot_iron_compressed> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:pneumaticcraft:compressed_iron_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_lapis", <item:minecraft:lapis_lazuli> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:lapis_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_lumium", <item:thermal:lumium_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:lumium_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_netherite", <item:minecraft:netherite_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:netherite_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_quartz", <item:minecraft:quartz> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:quartz_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_signalum", <item:thermal:signalum_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:signalum_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_soul_infused", <item:thermal_extra:soul_infused_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal_extra:soul_infused_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_shellite", <item:thermal_extra:shellite_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal_extra:shellite_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_twinite", <item:thermal_extra:twinite_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal_extra:twinite_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_allurite_shimmer_cake", <item:galosphere_delight:allurite_shimmer_cake>, <item:immersiveengineering:mold_unpacking>, 3200, <item:galosphere_delight:allurite_shimmer_cake_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_apple_pie", <item:vinery:apple_pie>, <item:immersiveengineering:mold_unpacking>, 3200, <item:vinery:apple_pie_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_blood_cake", <item:tconstruct:blood_cake>, <item:immersiveengineering:mold_unpacking>, 3200, <item:contenttweaker:tconstruct/delight/blood_cake_slice> * 7);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_chorus_fruit_pie", <item:ends_delight:chorus_fruit_pie>, <item:immersiveengineering:mold_unpacking>, 3200, <item:ends_delight:chorus_fruit_pie_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_chorus_pie", <item:endersdelight:chorus_pie>, <item:immersiveengineering:mold_unpacking>, 3200, <item:endersdelight:chorus_pie_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_earth_cake", <item:tconstruct:earth_cake>, <item:immersiveengineering:mold_unpacking>, 3200, <item:contenttweaker:tconstruct/delight/earthslime_cake_slice> * 7);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_ender_cake", <item:tconstruct:ender_cake>, <item:immersiveengineering:mold_unpacking>, 3200, <item:contenttweaker:tconstruct/delight/enderslime_cake_slice> * 7);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_frost_melon", <item:thermal:frost_melon>, <item:immersiveengineering:mold_unpacking>, 3200, <item:thermal:frost_melon_slice> * 9);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_gloomgourd", <item:undergarden:gloomgourd>, <item:immersiveengineering:mold_unpacking>, 3200, <item:undergardendelight:gloomgourd_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_gloomgourd_pie", <item:undergarden:gloomgourd_pie>, <item:immersiveengineering:mold_unpacking>, 3200, <item:undergardendelight:gloomgourd_pie_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_lumiere_shimmer_cake", <item:galosphere_delight:lumiere_shimmer_cake>, <item:immersiveengineering:mold_unpacking>, 3200, <item:galosphere_delight:lumiere_shimmer_cake_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_magma_cake", <item:tconstruct:magma_cake>, <item:immersiveengineering:mold_unpacking>, 3200, <item:contenttweaker:tconstruct/delight/magma_cake_slice> * 7);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_mushroom_pot_pie", <item:largemeals:mushroom_pot_pie>, <item:immersiveengineering:mold_unpacking>, 3200, <item:largemeals:mushroom_pot_pie_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_pizza", <item:brewinandchewin:pizza>, <item:immersiveengineering:mold_unpacking>, 3200, <item:brewinandchewin:pizza_slice> * 4);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/unpacking_sky_cake", <item:tconstruct:sky_cake>, <item:immersiveengineering:mold_unpacking>, 3200, <item:contenttweaker:tconstruct/delight/skyslime_cake_slice> * 7);

if (packModeSetting.packModeSettingPlates() == true) {
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_aluminum");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_aluminum", <tag:items:forge:ingots/aluminum> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:immersiveengineering:plate_aluminum>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_brass");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_brass", <tag:items:forge:ingots/brass> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:create:brass_sheet>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_bronze");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_bronze", <tag:items:forge:ingots/bronze> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:bronze_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_cobalt", <tag:items:forge:ingots/cobalt> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/cobalt_sheet>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_copper");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_copper", <tag:items:forge:ingots/copper> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:copper_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_diamond", <tag:items:forge:gems/diamond> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/diamond_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_dragonsteel", <tag:items:forge:ingots/dragonsteel> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:dragonsteel_plate>);
	<recipetype:immersiveengineering:metal_press>.removeByName("beyond_earth_giselle_addon:compat/immersiveengineering/metalpress/plate_desh");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_desh", <tag:items:forge:ingots/desh> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:beyond_earth:desh_plate>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_electrum");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_electrum", <tag:items:forge:ingots/electrum> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:electrum_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_emerald", <tag:items:forge:gems/emerald> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/emerald_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_enderium", <tag:items:forge:ingots/enderium> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:enderium_plate>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_gold");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_gold", <tag:items:forge:ingots/gold> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:gold_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_hepatizon", <tag:items:forge:ingots/hepatizon> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/hepatizon_sheet>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_invar");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_invar", <tag:items:forge:ingots/invar> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:invar_plate>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_iron");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_iron", <tag:items:forge:ingots/iron> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:iron_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_lapis_lazuli", <tag:items:forge:gems/lapis> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/lapis_plate>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_lead");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_lead", <tag:items:forge:ingots/lead> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:lead_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_lumium", <tag:items:forge:ingots/lumium> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:lumium_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_manyullyn", <tag:items:forge:ingots/manyullyn> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/manyullyn_sheet>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_netherite", <tag:items:forge:ingots/netherite> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:netherite_plate>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_nickel");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_nickel", <tag:items:forge:ingots/nickel> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:nickel_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_osmium", <tag:items:forge:ingots/osmium> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/osmium_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_pig_iron", <tag:items:forge:ingots/pig_iron> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/pig_iron_sheet>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_quartz", <tag:items:forge:gems/quartz> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/quartz_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_queens_slime", <tag:items:forge:ingots/queens_slime> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/queens_slime_sheet>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_rose_gold");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_rose_gold", <tag:items:forge:ingots/rose_gold> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:rose_gold_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_shellite", <tag:items:forge:ingots/shellite> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:shellite_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_signalum", <tag:items:forge:ingots/signalum> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:signalum_plate>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_silver");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_silver", <tag:items:forge:ingots/silver> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:silver_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_slimesteel", <tag:items:forge:ingots/slimesteel> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/slimesteel_sheet>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_soul_infused", <tag:items:forge:ingots/soul_infused> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:soul_infused_plate>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_steel");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_steel", <tag:items:forge:ingots/steel> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:steel_plate>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_tin");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_tin", <tag:items:forge:ingots/tin> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:tin_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_twinite", <tag:items:forge:ingots/twinite> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:twinite_plate>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_uranium");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_uranium", <tag:items:forge:ingots/uranium> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:immersiveengineering:plate_uranium>);
	<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_zinc");
	<recipetype:immersiveengineering:metal_press>.addRecipe("pack_expert_crafting/immersiveengineering_metalpress/plate_zinc", <tag:items:forge:ingots/zinc> * expert_ingradient_to_plate, <item:immersiveengineering:mold_plate>, 2400, <item:createaddition:zinc_sheet>);
} else {
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_cobalt", <tag:items:forge:ingots/cobalt>, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/cobalt_sheet>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_diamond", <tag:items:forge:gems/diamond>, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/diamond_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_dragonsteel", <tag:items:forge:ingots/dragonsteel> , <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:dragonsteel_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_emerald", <tag:items:forge:gems/emerald>, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/emerald_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_enderium", <tag:items:forge:ingots/enderium>, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:enderium_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_hepatizon", <tag:items:forge:ingots/hepatizon>, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/hepatizon_sheet>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_lapis_lazuli", <tag:items:forge:gems/lapis>, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/lapis_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_lumium", <tag:items:forge:ingots/lumium>, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:lumium_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_manyullyn", <tag:items:forge:ingots/manyullyn>, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/manyullyn_sheet>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_netherite", <tag:items:forge:ingots/netherite>, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:netherite_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_osmium", <tag:items:forge:ingots/osmium>, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/osmium_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_pig_iron", <tag:items:forge:ingots/pig_iron>, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/pig_iron_sheet>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_quartz", <tag:items:forge:gems/quartz>, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/quartz_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_queens_slime", <tag:items:forge:ingots/queens_slime>, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/queens_slime_sheet>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_shellite", <tag:items:forge:ingots/shellite>, <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:shellite_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_signalum", <tag:items:forge:ingots/signalum>, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:signalum_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_slimesteel", <tag:items:forge:ingots/slimesteel>, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/slimesteel_sheet>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_soul_infused", <tag:items:forge:ingots/soul_infused>, <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:soul_infused_plate>);
	<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_twinite", <tag:items:forge:ingots/twinite>, <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:twinite_plate>);
}

// Squeezer
//<recipetype:immersiveengineering:squeezer>.addRecipe("immersiveengineering_metalpress/squeezer/wheat_seeds", <tag:items:forge:seeds/wheat> , 6400, <fluid:immersiveengineering:plantoil> * 80);

// Sawmill
//<recipetype:immersiveengineering:sawmill>.addRecipe("immersiveengineering_sawmill/cherry_door", <item:vinery:cherry_door>, 800, <item:vinery:cherry_planks>, [<tag:items:forge:dusts/wood>]);

Globals.endScript("recipe_immersive_engieneering");