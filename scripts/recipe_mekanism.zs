/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Salt.
 * v0.2 : Add Missing Precision Sawmill Recipe.
 * v0.3 : Add Torch.
 */

println("Start script recipe_mekanism.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;
import mods.mekanism.api.ingredient.ItemStackIngredient;

// Enrichment Chamber
<recipetype:mekanism:enriching>.removeByName("mekanism:enriching/salt");
<recipetype:mekanism:enriching>.addRecipe("mekanism_enriching/salt", ItemStackIngredient.from(<item:salt:salt_block>), <item:salt:salt> * 9);

// Precision Sawmill
val book_bookshelf_chance = 1;
val book_bookshelf_return = 3;
val planks_boat_return = 5;
val planks_bookshelf_return = 6;
val planks_chest_return = 8;
val planks_door_return = 2;
val planks_fence_gate_return = 2;
val planks_log_return = 6;
val planks_log_half_return = 3;
val planks_pressure_plate_return = 2;
val planks_trapdoor_return = 3;
val planks_trapped_chest_return = 8;
val saw_dust_log_chance = 0.25;
val saw_dust_log_return = 1;
val stick_fence_gate_chance = 1;
val stick_fence_gate_return = 4;
val tripwire_hook_chest_chance = 0.75;
val tripwire_hook_chest_return = 1;

<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/log/ancient", ItemStackIngredient.from(<tag:items:naturesaura:ancient_logs>), <item:naturesaura:ancient_planks> * planks_log_half_return, <item:thermal:sawdust> * saw_dust_log_return, saw_dust_log_chance);
<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/log/rubberwood", ItemStackIngredient.from(<item:myrtrees:rubberwood_log>), <item:myrtrees:rubberwood_planks> * planks_log_return, <item:thermal:sawdust> * saw_dust_log_return, saw_dust_log_chance);

var addingSawingMekanism = {
	"azalea" : "ecologics:azalea",							// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"azalea_quark" : "quark:azalea",						// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"bloodshroom" : "tconstruct:bloodshroom",				// Door | Fence Gate | Pressure Plate | Trapdoor
	"blossom" : "quark:blossom",							// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"canopy" : "twilightforest:canopy",						// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"cerulean" : "enlightened_end:cerulean",				// Door | Fence Gate | Pressure Plate | Trapdoor
	"cherry" : "vinery:cherry",								// Door | Fence Gate | Pressure Plate | Trapdoor
	"chorus_nest" : "unusualend:chorus_nest",				// Door | Trapdoor
	"chorus_nest_mosaic" : "unusualend:chorus_nest",		// Fence Gate
	"coconut" : "ecologics:coconut",						// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"darkwood" : "twilightforest:dark",						// Boat | Door | Fence Gate | Pressure Plate | Trapdoor 
	"flowering_azalea" : "ecologics:flowering_azalea",		// Boat | Door | Fence Gate | Trapdoor
	"greenheart" : "tconstruct:greenheart",					// Door | Fence Gate | Pressure Plate | Trapdoor
	"grongle" : "undergarden:grongle",						// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"indigo" : "enlightened_end:indigo",					// Door | Fence Gate | Pressure Plate | Trapdoor
	"mangrove" : "twilightforest:mangrove",					// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"menril" : "integrateddynamics:menril",					// Door | Fence Gate
	"mining" : "twilightforest:mining",						// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"smogstem" : "undergarden:smogstem",					// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"sorting" : "twilightforest:sorting",					// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"skyroot" : "tconstruct:skyroot",						// Door | Fence Gate | Pressure Plate | Trapdoor
	"walnut" : "ecologics:walnut",							// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"wigglewood" : "undergarden:wigglewood",				// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"timewood" : "twilightforest:time",						// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"transformation" : "twilightforest:transformation",		// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"twilight_oak" : "twilightforest:twilight_oak"			// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
};
for addingSawingMekanismName, addingSawingMekanismMod in addingSawingMekanism {
	if (addingSawingMekanismName == "canopy" || 
		addingSawingMekanismName == "darkwood" ||
		addingSawingMekanismName == "mangrove" || 
		addingSawingMekanismName == "mining" || 
		addingSawingMekanismName == "sorting" || 
		addingSawingMekanismName == "transformation" || 
	    addingSawingMekanismName == "timewood" ||
		addingSawingMekanismName == "twilight_oak") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/boat/" + addingSawingMekanismName, ItemStackIngredient.from(<item:twilightdecor:${addingSawingMekanismName}_boat>), <item:${addingSawingMekanismMod}_planks> * planks_boat_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_door>), <item:${addingSawingMekanismMod}_planks> * planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_planks> * planks_fence_gate_return, <item:minecraft:stick> * stick_fence_gate_return, stick_fence_gate_chance);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/pressure_plate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_pressure_plate>), <item:${addingSawingMekanismMod}_planks> * planks_pressure_plate_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_trapdoor>), <item:${addingSawingMekanismMod}_planks> * planks_trapdoor_return);
	} else if (addingSawingMekanismName == "flowering_azalea") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/boat/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_boat>), <item:${addingSawingMekanismMod}_planks> * planks_boat_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_door>), <item:${addingSawingMekanismMod}_planks> * planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_planks> * planks_fence_gate_return, <item:minecraft:stick> * stick_fence_gate_return, stick_fence_gate_chance);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_trapdoor>), <item:${addingSawingMekanismMod}_planks> * planks_trapdoor_return);
	} else if (addingSawingMekanismName == "bloodshroom" ||
			   addingSawingMekanismName == "cerulean" ||
			   addingSawingMekanismName == "cherry" ||
			   addingSawingMekanismName == "greenheart" ||
			   addingSawingMekanismName == "indigo" ||
			   addingSawingMekanismName == "skyroot") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_door>), <item:${addingSawingMekanismMod}_planks> * planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_planks> * planks_fence_gate_return, <item:minecraft:stick> * stick_fence_gate_return, stick_fence_gate_chance);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/pressure_plate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_pressure_plate>), <item:${addingSawingMekanismMod}_planks> * planks_pressure_plate_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_trapdoor>), <item:${addingSawingMekanismMod}_planks> * planks_trapdoor_return);
	} else if (addingSawingMekanismName == "menril") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_door>), <item:${addingSawingMekanismMod}_planks> * planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_planks> * planks_fence_gate_return, <item:minecraft:stick> * stick_fence_gate_return, stick_fence_gate_chance);
	} else if (addingSawingMekanismName == "chorus_nest") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_planks_door>), <item:${addingSawingMekanismMod}_planks> * planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_trapdoor>), <item:${addingSawingMekanismMod}_planks> * planks_trapdoor_return);
	} else if (addingSawingMekanismName == "chorus_nest_mosaic") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_mosaic> * planks_fence_gate_return, <item:minecraft:stick> * stick_fence_gate_return, stick_fence_gate_chance);
	} else {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/boat/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_boat>), <item:${addingSawingMekanismMod}_planks> * planks_boat_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_door>), <item:${addingSawingMekanismMod}_planks> * planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_planks> * planks_fence_gate_return, <item:minecraft:stick> * stick_fence_gate_return, stick_fence_gate_chance);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/pressure_plate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_pressure_plate>), <item:${addingSawingMekanismMod}_planks> * planks_pressure_plate_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_trapdoor>), <item:${addingSawingMekanismMod}_planks> * planks_trapdoor_return);
	}
	<recipetype:mekanism:sawing>.addJsonRecipe("mekanism_sawing/log/" + addingSawingMekanismName, {
	"input": {
		"ingredient": {
			"tag": addingSawingMekanismMod + "_logs"
		}
	},
	"mainOutput": {
		"item": addingSawingMekanismMod + "_planks",
		"count": planks_log_return
	},
	"secondaryOutput": {
		"item": "thermal:sawdust",
		"count": saw_dust_log_return
	},
	"secondaryChance": saw_dust_log_chance
});
}

<recipetype:mekanism:sawing>.removeByName("mekanism:sawing/bookshelf");
var addingSawingBookshelfMekanism = {
	"minecraft:acacia" : "quark:acacia_bookshelf",
	"quark:azalea" : "quark:azalea_bookshelf",
	"minecraft:birch" : "quark:birch_bookshelf",
	"quark:blossom" : "quark:blossom_bookshelf",
	"twilightforest:canopy" : "twilightforest:canopy_bookshelf",
	"minecraft:crimson" : "quark:crimson_bookshelf",
	"minecraft:dark_oak"  : "quark:dark_oak_bookshelf",
	"twilightforest:dark" : "twilightdecor:darkwood_bookshelf",
	"minecraft:jungle" : "quark:jungle_bookshelf",
	"twilightforest:mangrove" : "twilightdecor:mangrove_bookshelf",
	"twilightforest:mining" : "twilightdecor:mining_bookshelf",
	"minecraft:oak" : "minecraft:bookshelf",
	"twilightforest:sorting" : "twilightdecor:sorting_bookshelf",
	"minecraft:spruce" : "quark:spruce_bookshelf",
	"minecraft:warped" : "quark:warped_bookshelf",
	"twilightforest:time" : "twilightdecor:timewood_bookshelf",
	"twilightforest:transformation" : "twilightdecor:transformation_bookshelf",
	"twilightforest:twilight_oak" : "twilightdecor:twilight_oak_bookshelf"
};
for addingSawingBookshelfMekanismOut, addingSawingBookshelfMekanismIn in addingSawingBookshelfMekanism {
	val addingSawingNameBookshelfMekanism = <item:${addingSawingBookshelfMekanismIn}>;
	<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/bookshelf/" + addingSawingNameBookshelfMekanism.registryName.path, ItemStackIngredient.from(<item:${addingSawingBookshelfMekanismIn}>), <item:${addingSawingBookshelfMekanismOut}_planks> * planks_bookshelf_return, <item:minecraft:book> * book_bookshelf_return, book_bookshelf_chance);
}

var addingSawingChestMekanism = {
	"acacia" : "quark:acacia_chest",
	"azalea" : "quark:azalea_chest",
	"birch" : "quark:birch_chest",
	"blossom" : "quark:blossom_chest",
	"canopy" : "twilightforest:canopy_chest",
	"crimson" : "quark:crimson_chest",
	"dark_oak"  : "quark:dark_oak_chest",
	"dark" : "twilightforest:darkwood_chest",
	"jungle" : "quark:jungle_chest",
	"mangrove" : "twilightforest:mangrove_chest",
	"mining" : "twilightforest:mining_chest",
	"oak" : "quark:oak_chest",
	"sorting" : "twilightforest:sorting_chest",
	"spruce" : "quark:spruce_chest",
	"warped" : "quark:warped_chest",
	"time" : "twilightforest:time_chest",
	"transformation" : "twilightforest:transformation_chest",
	"twilight_oak" : "twilightforest:twilight_oak_chest"
};
for addingSawingChestMekanismName, addingSawingChestMekanismId in addingSawingChestMekanism {
	if (addingSawingChestMekanismName == "canopy" || 
		addingSawingChestMekanismName == "dark" ||
		addingSawingChestMekanismName == "mangrove" || 
		addingSawingChestMekanismName == "mining" || 
		addingSawingChestMekanismName == "sorting" || 
		addingSawingChestMekanismName == "transformation" || 
	    addingSawingChestMekanismName == "time" ||
		addingSawingChestMekanismName == "twilight_oak") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/chest/" + addingSawingChestMekanismName, ItemStackIngredient.from(<item:${addingSawingChestMekanismId}>), <item:twilightforest:${addingSawingChestMekanismName}_planks> * planks_chest_return);
	} else if (addingSawingChestMekanismName == "azalea" || 
			   addingSawingChestMekanismName == "blossom") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/chest/" + addingSawingChestMekanismName, ItemStackIngredient.from(<item:${addingSawingChestMekanismId}>), <item:quark:${addingSawingChestMekanismName}_planks> * planks_chest_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapped_chest/" + addingSawingChestMekanismName, ItemStackIngredient.from(<item:quark:${addingSawingChestMekanismName}_trapped_chest>), <item:quark:${addingSawingChestMekanismName}_planks> * planks_trapped_chest_return, <item:minecraft:tripwire_hook> * tripwire_hook_chest_return, tripwire_hook_chest_chance);

	} else{
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/chest/" + addingSawingChestMekanismName, ItemStackIngredient.from(<item:${addingSawingChestMekanismId}>), <item:minecraft:${addingSawingChestMekanismName}_planks> * planks_chest_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapped_chest/" + addingSawingChestMekanismName, ItemStackIngredient.from(<item:quark:${addingSawingChestMekanismName}_trapped_chest>), <item:minecraft:${addingSawingChestMekanismName}_planks> * planks_trapped_chest_return, <item:minecraft:tripwire_hook> * tripwire_hook_chest_return, tripwire_hook_chest_chance);
	}
}

<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/torch/bamboo_torch", ItemStackIngredient.from(<item:bambooeverything:bamboo_torch> * 4), <item:minecraft:bamboo>, <item:minecraft:coal>, 1);
<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/torch/dry_bamboo_torch", ItemStackIngredient.from(<item:bambooeverything:dry_bamboo_torch> * 4), <item:bambooeverything:dry_bamboo>, <item:minecraft:coal>, 1);
<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/torch/glow_torch", ItemStackIngredient.from(<item:infernalexp:glow_torch> * 4), <item:minecraft:stick>, <item:infernalexp:glowcoal>, 1);
<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/torch/menril_torch", ItemStackIngredient.from(<item:integrateddynamics:menril_torch> * 4), <item:minecraft:stick>, <item:integrateddynamics:menril_berries>, 1);
<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/torch/shard_torch", ItemStackIngredient.from(<item:undergarden:shard_torch> * 4), <item:minecraft:stick>, <item:undergarden:utheric_shard>, 1);

println("End script recipe_mekanism.");