/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Chainmail Armor Crafting Recipe.
 */
 
println("Start script pack_mod_expert_recipe_armor.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

val pack_mode_armor_enable = true;

if (pack_mode_armor_enable == true) {
	craftingTable.addShaped("minecraft_chainmail_helmet", <item:minecraft:chainmail_helmet>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
	]);
	craftingTable.addShaped("minecraft_chainmail_chestplate", <item:minecraft:chainmail_chestplate>, [
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>]
	]);
	craftingTable.addShaped("minecraft_chainmail_leggings", <item:minecraft:chainmail_leggings>, [
		[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
	]);
	craftingTable.addShaped("minecraft_chainmail_boots", <item:minecraft:chainmail_boots>, [
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
		[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
	]);
}

println("End script pack_mod_expert_recipe_armor.");