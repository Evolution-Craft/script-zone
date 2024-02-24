/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Fix mod.
 */

println("Start script recipe_vinery.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

craftingTable.addShaped("vinery_apple_pie_slice_to_apple_pie", <item:vinery:apple_pie>, [
	[<item:vinery:apple_pie_slice>, <item:vinery:apple_pie_slice>, <item:minecraft:air>],
	[<item:vinery:apple_pie_slice>, <item:vinery:apple_pie_slice>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("vinery_apple_pie", <item:vinery:apple_pie>, [
	[<tag:items:forge:milk>, <tag:items:forge:milk>, <tag:items:forge:milk>],
	[<item:vinery:apple_mash>, <item:vinery:apple_mash>, <item:vinery:apple_mash>],
	[<tag:items:minecraft:dough>, <tag:items:minecraft:dough>, <tag:items:minecraft:dough>]
]);
craftingTable.addShaped("vinery_stal_wine", <item:vinery:stal_wine>, [
	[<item:vinery:jungle_grapes_red>, <item:minecraft:cocoa_beans>, <item:vinery:jungle_grapes_red>],
	[<item:minecraft:sugar>, <item:vinery:wine_bottle>, <item:minecraft:sugar>],
	[<item:vinery:jungle_grapes_red>, <item:vinery:jungle_grapes_red>, <item:vinery:jungle_grapes_red>]
]);
craftingTable.addShaped("vinery_kelp_cider", <item:vinery:kelp_cider>, [
	[<item:minecraft:kelp>, <item:minecraft:kelp>, <item:minecraft:kelp>],
	[<item:vinery:savanna_grapes_red>, <item:vinery:wine_bottle>, <item:vinery:savanna_grapes_red>],
	[<item:vinery:savanna_grapes_red>, <item:vinery:savanna_grapes_red>, <item:vinery:savanna_grapes_red>]
]);
craftingTable.addShaped("vinery_strad_wine", <item:vinery:strad_wine>, [
	[<item:vinery:jungle_grapes_white>, <item:minecraft:cocoa_beans>, <item:vinery:jungle_grapes_white>],
	[<item:minecraft:sugar>, <item:vinery:wine_bottle>, <item:minecraft:sugar>],
	[<item:vinery:jungle_grapes_white>, <item:vinery:jungle_grapes_white>, <item:vinery:jungle_grapes_white>]
]);
craftingTable.addShaped("vinery_magnetic_wine", <item:vinery:magnetic_wine>, [
	[<item:vinery:white_grape>, <item:minecraft:iron_nugget>, <item:vinery:white_grape>],
	[<item:minecraft:sugar>, <item:vinery:wine_bottle>, <item:minecraft:sugar>],
	[<item:vinery:white_grape>, <item:vinery:white_grape>, <item:vinery:white_grape>]
]);
craftingTable.addShaped("vinery_chorus_wine", <item:vinery:chorus_wine>, [
	[<item:vinery:white_grape>, <item:minecraft:chorus_fruit>, <item:vinery:white_grape>],
	[<item:minecraft:sugar>, <item:vinery:wine_bottle>, <item:minecraft:sugar>],
	[<item:vinery:white_grape>, <item:vinery:white_grape>, <item:vinery:white_grape>]
]);
craftingTable.addShaped("vinery_aegis_wine", <item:vinery:aegis_wine>, [
	[<item:vinery:jungle_grapes_white>, <item:minecraft:kelp>, <item:vinery:jungle_grapes_white>],
	[<item:minecraft:sugar>, <item:vinery:wine_bottle>, <item:minecraft:sugar>],
	[<item:vinery:jungle_grapes_white>, <item:vinery:jungle_grapes_white>, <item:vinery:jungle_grapes_white>]
]);
craftingTable.addShaped("vinery_solaris_wine", <item:vinery:solaris_wine>, [
	[<item:vinery:taiga_grapes_white>, <item:minecraft:honey_bottle>, <item:vinery:taiga_grapes_white>],
	[<item:minecraft:sweet_berries>, <item:vinery:wine_bottle>, <item:minecraft:sweet_berries>],
	[<item:vinery:taiga_grapes_white>, <item:vinery:taiga_grapes_white>, <item:vinery:taiga_grapes_white>]
]);
craftingTable.addShaped("vinery_noir_wine", <item:vinery:noir_wine>, [
	[<item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>],
	[<item:vinery:red_grape>, <item:vinery:wine_bottle>, <item:vinery:red_grape>],
	[<item:vinery:red_grape>, <item:vinery:red_grape>, <item:vinery:red_grape>]
]);
craftingTable.addShaped("vinery_bolvar_wine", <item:vinery:bolvar_wine>, [
	[<item:vinery:taiga_grapes_red>, <item:minecraft:honey_bottle>, <item:vinery:taiga_grapes_red>],
	[<item:vinery:cherry>, <item:vinery:wine_bottle>, <item:vinery:cherry>],
	[<item:vinery:taiga_grapes_red>, <item:vinery:taiga_grapes_red>, <item:vinery:taiga_grapes_red>]
]);
craftingTable.addShaped("vinery_cherry_wine", <item:vinery:cherry_wine>, [
	[<item:vinery:cherry>, <item:vinery:cherry>, <item:vinery:cherry>],
	[<item:vinery:red_grape>, <item:vinery:wine_bottle>, <item:vinery:red_grape>],
	[<item:vinery:red_grape>, <item:vinery:red_grape>, <item:vinery:red_grape>]
]);
craftingTable.addShaped("vinery_clark_wine", <item:vinery:clark_wine>, [
	[<item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>],
	[<item:vinery:savanna_grapes_white>, <item:vinery:wine_bottle>, <item:vinery:savanna_grapes_white>],
	[<item:vinery:savanna_grapes_white>, <item:vinery:savanna_grapes_white>, <item:vinery:savanna_grapes_white>]
]);
craftingTable.addShaped("vinery_jellie_wine", <item:vinery:jellie_wine>, [
	[<item:vinery:cherry>, <item:vinery:apple_wine>, <item:vinery:cherry>],
	[<item:vinery:chorus_wine>, <item:vinery:wine_bottle>, <item:vinery:chenet_wine>],
	[<item:vinery:cherry>, <item:vinery:bolvar_wine>, <item:vinery:cherry>]
]);
craftingTable.addShaped("vinery_apple_cider", <item:vinery:apple_cider>, [
	[<item:vinery:apple_mash>, <item:vinery:apple_mash>, <item:vinery:apple_mash>],
	[<item:vinery:savanna_grapes_red>, <item:vinery:wine_bottle>, <item:vinery:savanna_grapes_red>],
	[<item:vinery:savanna_grapes_red>, <item:vinery:savanna_grapes_red>, <item:vinery:savanna_grapes_red>]
]);
craftingTable.addShaped("vinery_apple_wine", <item:vinery:apple_wine>, [
	[<item:vinery:savanna_grapes_white>, <item:minecraft:honey_bottle>, <item:vinery:savanna_grapes_white>],
	[<item:vinery:apple_mash>, <item:vinery:wine_bottle>, <item:vinery:apple_mash>],
	[<item:vinery:savanna_grapes_white>, <item:vinery:savanna_grapes_white>, <item:vinery:savanna_grapes_white>]
]);
craftingTable.addShaped("vinery_chenet_wine", <item:vinery:chenet_wine>, [
	[<item:vinery:taiga_grapes_red>, <item:minecraft:honey_bottle>, <item:vinery:taiga_grapes_red>],
	[<item:minecraft:sugar>, <item:vinery:wine_bottle>, <item:minecraft:sugar>],
	[<item:vinery:taiga_grapes_red>, <item:vinery:taiga_grapes_red>, <item:vinery:taiga_grapes_red>]
]);
craftingTable.addShaped("vinery_king_danis_wine", <item:vinery:king_danis_wine>, [
	[<item:vinery:jungle_grapes_red>, <item:minecraft:honey_bottle>, <item:vinery:jungle_grapes_red>],
	[<item:vinery:cherry>, <item:vinery:wine_bottle>, <item:vinery:cherry>],
	[<item:vinery:jungle_grapes_red>, <item:vinery:jungle_grapes_red>, <item:vinery:jungle_grapes_red>]
]);
craftingTable.addShaped("vinery_mellohi_wine", <item:vinery:mellohi_wine>, [
	[<item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>],
	[<item:vinery:taiga_grapes_white>, <item:vinery:wine_bottle>, <item:vinery:taiga_grapes_white>],
	[<item:vinery:taiga_grapes_white>, <item:vinery:taiga_grapes_white>, <item:vinery:taiga_grapes_white>]
]);
craftingTable.addShaped("vinery_chocolate_bread", <item:vinery:chocolate_bread>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<tag:items:minecraft:dough>, <item:minecraft:cocoa_beans>, <tag:items:minecraft:dough>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("vinery_donut", <item:vinery:donut>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<tag:items:minecraft:dough>, <item:minecraft:sugar>, <item:minecraft:sweet_berries>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("vinery_milk_bread", <item:vinery:milk_bread>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<tag:items:minecraft:dough>, <tag:items:forge:milk>, <tag:items:minecraft:dough>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

println("End script recipe_vinery.");