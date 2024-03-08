/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Missing Gear.
 * v0.2 : Adding Missing Pattern.
 * v0.3 : Adding Missing Wire.
 */

println("Start script recipe_immersive_engieneering.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

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
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_diamond", <item:minecraft:diamond> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:diamond_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_emerald", <item:minecraft:emerald> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:emerald_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_enderium", <item:thermal:enderium_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:enderium_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_lapis", <item:minecraft:lapis_lazuli> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:lapis_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_lumium", <item:thermal:lumium_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:lumium_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_netherite", <item:minecraft:netherite_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:netherite_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_quartz", <item:minecraft:quartz> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:quartz_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_signalum", <item:thermal:signalum_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal:signalum_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_soul_infused", <item:thermal_extra:soul_infused_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal_extra:soul_infused_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_shellite", <item:thermal_extra:shellite_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal_extra:shellite_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_twinite", <item:thermal_extra:twinite_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal_extra:twinite_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_dragonsteel", <item:thermal_extra:dragonsteel_ingot> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:thermal_extra:dragonsteel_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("immersiveengineering_metalpress/gear_iron_compressed", <item:pneumaticcraft:ingot_iron_compressed> * 4, <item:immersiveengineering:mold_gear>, 2400, <item:pneumaticcraft:compressed_iron_gear>);

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

println("End script recipe_immersive_engieneering.");