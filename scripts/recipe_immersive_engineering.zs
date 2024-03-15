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
 */

println("Start script recipe_immersive_engieneering.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

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

// Cloche
<recipetype:immersiveengineering:cloche>.removeByName("immersiveengineering:cloche/cactus");
<recipetype:immersiveengineering:cloche>.addRecipe("immersiveengineering_cloche/cactus", <item:minecraft:cactus>, <tag:items:forge:sand>, 560, [<item:minecraft:cactus>, <item:ecologics:prickly_pear>], <blockstate:minecraft:cactus>.block, "stacking");

// Fertilizer
<recipetype:immersiveengineering:fertilizer>.addFertilizer("garden_cloche_fertilizer/industrialforegoing_fertilizer", <item:industrialforegoing:fertilizer>, 1.25);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("garden_cloche_fertilizer/waterstrainer_fertilizer", <item:waterstrainer:fertilizer>, 1.5);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("garden_cloche_fertilizer/thermal_compost", <item:thermal:compost>, 1.75);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("garden_cloche_fertilizer/create_tree_fertilizer", <item:create:tree_fertilizer>, 2.0);
<recipetype:immersiveengineering:fertilizer>.addFertilizer("garden_cloche_fertilizer/thermal_phytogro", <item:thermal:phytogro>, 3.0);

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

<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_aluminum");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_aluminum", <tag:items:forge:ingots/aluminum> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:immersiveengineering:plate_aluminum>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_brass");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_brass", <tag:items:forge:ingots/brass> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:create:brass_sheet>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_bronze");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_bronze", <tag:items:forge:ingots/bronze> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:bronze_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_cobalt", <tag:items:forge:ingots/cobalt> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/cobalt_sheet>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_copper");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_copper", <tag:items:forge:ingots/copper> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:copper_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_diamond", <tag:items:forge:gems/diamond> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/diamond_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_dragonsteel", <tag:items:forge:ingots/dragonsteel> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:dragonsteel_plate>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_electrum");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_electrum", <tag:items:forge:ingots/electrum> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:electrum_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_emerald", <tag:items:forge:gems/emerald> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/emerald_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_enderium", <tag:items:forge:ingots/enderium> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:enderium_plate>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_gold");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_gold", <tag:items:forge:ingots/gold> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:gold_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_hepatizon", <tag:items:forge:ingots/hepatizon> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/hepatizon_sheet>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_invar");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_invar", <tag:items:forge:ingots/invar> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:invar_plate>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_iron");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_iron", <tag:items:forge:ingots/iron> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:iron_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_lapis_lazuli", <tag:items:forge:gems/lapis> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/lapis_plate>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_lead");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_lead", <tag:items:forge:ingots/lead> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:lead_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_lumium", <tag:items:forge:ingots/lumium> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:lumium_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_manyullyn", <tag:items:forge:ingots/manyullyn> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/manyullyn_sheet>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_netherite", <tag:items:forge:ingots/netherite> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:netherite_plate>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_nickel");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_nickel", <tag:items:forge:ingots/nickel> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:nickel_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_osmium", <tag:items:forge:ingots/osmium> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/osmium_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_pig_iron", <tag:items:forge:ingots/pig_iron> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/pig_iron_sheet>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_quartz", <tag:items:forge:gems/quartz> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:thermal/quartz_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_queens_slime", <tag:items:forge:ingots/queens_slime> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/queens_slime_sheet>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_rose_gold");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_rose_gold", <tag:items:forge:ingots/rose_gold> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:rose_gold_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_shellite", <tag:items:forge:ingots/shellite> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:shellite_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_signalum", <tag:items:forge:ingots/signalum> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:signalum_plate>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_silver");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_silver", <tag:items:forge:ingots/silver> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:silver_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_slimesteel", <tag:items:forge:ingots/slimesteel> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:contenttweaker:tconstruct/slimesteel_sheet>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_soul_infused", <tag:items:forge:ingots/soul_infused> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:soul_infused_plate>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_steel");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_steel", <tag:items:forge:ingots/steel> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:steel_plate>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_tin");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_tin", <tag:items:forge:ingots/tin> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal:tin_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_twinite", <tag:items:forge:ingots/twinite> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:thermal_extra:twinite_plate>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_uranium");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_uranium", <tag:items:forge:ingots/uranium> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:immersiveengineering:plate_uranium>);
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_zinc");
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/plate_zinc", <tag:items:forge:ingots/zinc> * 4, <item:immersiveengineering:mold_plate>, 2400, <item:createaddition:zinc_sheet>);

println("End script recipe_immersive_engieneering.");