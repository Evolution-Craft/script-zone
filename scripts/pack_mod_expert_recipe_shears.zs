/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Created crafting sequence for Shears.
 */

// TODO: Check other shears.

println("Start script pack_mod_expert_recipe_shears.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

val pack_mode_shears_enable = true;

if (pack_mode_shears_enable == true) {
	craftingTable.removeByName("ceramicshears:ceramic_shears");
	craftingTable.addShaped("pack_expert_crafting_shears/ceramic_shears", <item:ceramicshears:ceramic_shears>, [
		[<item:ceramicshears:ceramic_shears_part>, <tag:items:woodenshears:wshears>.asIIngredient().anyDamage(), <item:ceramicshears:ceramic_shears_part>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);

	craftingTable.removeByName("minecraft:shears");
	craftingTable.addShaped("pack_expert_crafting_shears/shears", <item:minecraft:shears>, [
		[<item:minecraft:iron_ingot>, <item:ceramicshears:ceramic_shears>.anyDamage(), <item:minecraft:iron_ingot>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);

	craftingTable.removeByName("cyclic:shearing");
	craftingTable.addShaped("pack_expert_crafting_shears/cyclic_shearing", <item:cyclic:shearing>, [
		[<item:minecraft:air>, <item:netherite_shears_and_flint_and_steel:netherite_shears>, <item:minecraft:air>],
		[<item:netherite_shears_and_flint_and_steel:netherite_shears>, <item:contenttweaker:common_part>, <item:netherite_shears_and_flint_and_steel:netherite_shears>],
		[<item:minecraft:air>, <item:netherite_shears_and_flint_and_steel:netherite_shears>, <item:minecraft:air>]
	]);
}

println("End script pack_mod_expert_recipe_shears.");