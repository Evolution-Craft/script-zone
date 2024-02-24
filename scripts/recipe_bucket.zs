/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Created crafting sequence for Bucket.
 */

println("Start script recipe_bucket.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

craftingTable.removeByName("ceramicbucket:unfired_clay_bucket");
craftingTable.addShaped("ceramicbucket_unfired_clay_bucket", <item:ceramicbucket:unfired_clay_bucket>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:clay_ball>, <item:woodenbucket:wooden_bucket>, <item:minecraft:clay_ball>],
	[<item:minecraft:air>, <item:minecraft:clay_ball>, <item:minecraft:air>]
]);
craftingTable.removeByName("minecraft:bucket");
craftingTable.addShaped("bucket", <item:minecraft:bucket>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:iron_ingot>, <item:ceramicbucket:ceramic_bucket>, <item:minecraft:iron_ingot>],
	[<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]
]);

println("End script recipe_bucket.");