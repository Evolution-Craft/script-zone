/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : New recipe Solidfier.
 * v0.2 : Fix Recipe Rotation Wand.
 */

println("Start script recipe_cyclic.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

// Shaped
craftingTable.removeByName("cyclic:rotation_wand");
craftingTable.addShaped("cyclic_rotation_wand", <item:cyclic:rotation_wand>, [
	[<item:minecraft:air>, <item:vinery:loam>, <item:minecraft:stone_hoe>],
	[<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:vinery:loam>],
	[<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.removeByName("cyclic:breaker");
craftingTable.addShaped("cyclic_breaker", <item:cyclic:breaker>, [
	[<item:minecraft:tripwire_hook>, <tag:items:forge:nuggets/copper>, <item:minecraft:tripwire_hook>],
	[<item:exlinecopperequipment:copper_shovel>, <item:minecraft:dispenser>, <item:exlinecopperequipment:copper_pick>],
	[<item:minecraft:mossy_cobblestone_slab>, <item:minecraft:mossy_cobblestone_slab>, <item:minecraft:mossy_cobblestone_slab>]
]);

// Crusher
<recipetype:cyclic:crusher>.removeByName("cyclic:crusher/chest");
<recipetype:cyclic:crusher>.addJsonRecipe("cyclic_crusher/chest",{
	"input": {
		"tag": "forge:chests/wooden"
	},
	"energy": {
		"ticks": 100,
		"rfpertick": 20
	},
	"result": {
		"item": "minecraft:stick",
		"count": 16
	},
	"conditions": [ {
		"values": [ {
			"modid": "cyclic",
			"type": "forge:mod_loaded"
		},
		{
			"item": "cyclic:crusher",
			"type": "forge:item_exists"
		}],
		"type": "forge:and"
	}]
});

// Solidifier
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/fireball", {
	"ingredients":[ {
		"item": "minecraft:fire_charge"
	},
	{
		"item": "minecraft:gunpowder"
	}],
	"mix": {
		"fluid": "cyclic:wax",
		"count": 200
	},
	"energy": {
		"rfpertick": 100,
		"ticks": 120
	},
	"result": {
		"item": "cyclic:fireball",
		"count": 1
	}
});
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/apple_iron_1", {
	"ingredients":[ {
		"item": "cyclic:apple_honey"
	}],
	"mix": {
		"fluid": "tconstruct:molten_iron",
		"count": 180
	},
	"energy": {
		"rfpertick": 100,
		"ticks": 120
	},
	"result": {
		"item": "cyclic:apple_iron",
		"count": 1
	}
});
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/apple_iron_3", {
	"ingredients":[ {
		"item": "cyclic:apple_honey"
	},
	{
		"item": "cyclic:apple_honey"
	},
	{
		"item": "cyclic:apple_honey"
	}],
	"mix": {
		"fluid": "tconstruct:molten_iron",
		"count": 540
	},
	"energy": {
		"rfpertick": 2000,
		"ticks": 80
	},
	"result": {
		"item": "cyclic:apple_iron",
		"count": 3
	}
});
<recipetype:cyclic:solidifier>.removeByName("cyclic:solidifier/solidifier_apple_enchanted");
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/solidifier_apple_enchanted", {
	"ingredients":[ {
		"item": "cyclic:apple_diamond"
	},
	{
		"item": "minecraft:netherite_ingot"
	},
	{
		"item": "cyclic:apple_emerald"
	}],
	"mix": {
		"fluid": "tconstruct:molten_queens_slime",
		"count": 1000
	},
	"energy": {
		"rfpertick": 5500,
		"ticks": 200
	},
	"result": {
		"item": "minecraft:enchanted_golden_apple",
		"count": 1
	}
});
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/apple_chocolate_1", {
	"ingredients":[ {
		"item": "cyclic:apple_honey"
	}],
	"mix": {
		"fluid": "create:chocolate",
		"count": 180
	},
	"energy": {
		"rfpertick": 100,
		"ticks": 120
	},
	"result": {
		"item": "cyclic:apple_chocolate",
		"count": 1
	}
});
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/apple_chocolate_3", {
	"ingredients":[ {
		"item": "cyclic:apple_honey"
	},
	{
		"item": "cyclic:apple_honey"
	},
	{
		"item": "cyclic:apple_honey"
	}],
	"mix": {
		"fluid": "create:chocolate",
		"count": 540
	},
	"energy": {
		"rfpertick": 2000,
		"ticks": 80
	},
	"result": {
		"item": "cyclic:apple_chocolate",
		"count": 3
	}
});
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/apple_sprout_diamond", {
	"ingredients":[ {
		"item": "cyclic:apple_chorus"
	}],
	"mix": {
		"fluid": "tconstruct:molten_diamond",
		"count": 1000
	},
	"energy": {
		"rfpertick": 100,
		"ticks": 120
	},
	"result": {
		"item": "cyclic:apple_sprout_diamond",
		"count": 2
	}
});
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/apple_sprout_emerald", {
	"ingredients":[ {
		"item": "cyclic:apple_chorus"
	}],
	"mix": {
		"fluid": "tconstruct:molten_emerald",
		"count": 1000
	},
	"energy": {
		"rfpertick": 100,
		"ticks": 120
	},
	"result": {
		"item": "cyclic:apple_sprout_emerald",
		"count": 2
	}
});
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/apple_chorus", {
	"ingredients":[ {
		"item": "minecraft:chorus_flower"
	},
	{
		"item": "cyclic:apple_chocolate"
	},
	{
		"item": "salt:salt"
	}],
	"mix": {
		"fluid": "enlightened_end:ooze_fluid",
		"count": 1000
	},
	"energy": {
		"rfpertick": 100,
		"ticks": 120
	},
	"result": {
		"item": "cyclic:apple_chorus",
		"count": 1
	}
});
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/apple_lapis", {
	"ingredients":[ {
		"item": "minecraft:lapis_lazuli"
	},
	{
		"item": "cyclic:apple_honey"
	},
	{
		"item": "minecraft:lapis_lazuli"
	}],
	"mix": {
		"tag": "forge:experience",
		"count": 1000
	},
	"energy": {
		"rfpertick": 100,
		"ticks": 120
	},
	"result": {
		"item": "cyclic:apple_lapis",
		"count": 1
	}
});
<recipetype:cyclic:solidifier>.removeByName("cyclic:solidifier/wax_hive");
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/wax_hive", {
	"ingredients":[ {
		"tag": "forge:chests/wooden"
	}],
	"mix": {
		"tag": "forge:wax",
		"count": 1000
	},
	"energy": {
		"rfpertick": 2000,
		"ticks": 80
	},
	"result": {
		"item": "minecraft:beehive",
		"count": 1
	}
});
<recipetype:cyclic:solidifier>.removeByName("cyclic:solidifier/solidifier_honeyhive");
<recipetype:cyclic:solidifier>.addJsonRecipe("cyclic_solidifier/solidifier_honeyhive", {
	"ingredients":[ {
		"tag": "forge:chests/wooden"
	},
	{
		"item": "minecraft:honeycomb"
	},
	{
		"item": "minecraft:stick"
	}],
	"mix": {
		"tag": "forge:honey",
		"count": 100
	},
	"energy": {
		"rfpertick": 100,
		"ticks": 100
	},
	"result": {
		"item": "minecraft:beehive",
		"count": 3
	}
});

println("End script recipe_cyclic.");