/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Missing Crafting.
 * v0.2 : Add Missing Tags.
 * v0.3 : Support for Unusual End.
 */

println("Start script recipe_simply_tea.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

craftingTable.addShapeless("simplytea_ice_cube", <item:simplytea:ice_cube> * 4, [<item:minecraft:ice>]);
craftingTable.addShapeless("simplytea_chorus_petal", <item:simplytea:chorus_petal> * 4, [<item:minecraft:chorus_fruit>]);

craftingTable.removeByName("simplytea:teabag_green");
craftingTable.addShaped("simplytea_tea_teabag_green", <item:simplytea:teabag_green>, [
	[<item:simplytea:teabag>, <tag:items:forge:crops/tea>, <item:minecraft:air>],
	[<tag:items:forge:crops/tea>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.removeByName("simplytea:teabag_chorus");
craftingTable.addShaped("simplytea_tea_teabag_chorus", <item:simplytea:teabag_chorus>, [
	[<item:simplytea:teabag>, <tag:items:forge:crops/chorus_petal>, <item:minecraft:air>],
	[<tag:items:forge:crops/chorus_petal>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
// Temporary Removed
/*craftingTable.addShaped("simplytea_tea_sapling", <item:simplytea:tea_sapling>, [
	[<item:minecraft:oak_sapling>, <item:minecraft:spruce_sapling>, <item:minecraft:birch_sapling>],
	[<item:minecraft:jungle_sapling>, <item:minecraft:acacia_sapling>, <item:minecraft:dark_oak_sapling>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);*/

println("End script recipe_simply_tea.");