/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Missing Recipe.
 * v0.2 : Adding Plate System.
 */
 
Globals.startScript("recipe_create");
Globals.priorityScript("Null");

if (packModeSetting.packModeSettingPlates() == true) {
	Globals.packExpertScript("Plate - Active");
}

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Compacting
<recipetype:create:compacting>.addRecipe("create_compacted/coal_from_charcoal", <constant:create:heat_condition:heated>, [<item:minecraft:coal> % 75], [<item:minecraft:charcoal>]);
<recipetype:create:compacting>.addRecipe("create_compacted/diamond_from_coal", <constant:create:heat_condition:superheated>, [<item:minecraft:diamond> % 10], [<item:minecraft:coal_block> * 16]);

// Crushing
<recipetype:create:crushing>.addRecipe("create_crushing/ancient_debris", [<item:contenttweaker:tconstruct/crushed_ancient_debris>, (<item:contenttweaker:tconstruct/crushed_ancient_debris> * 2) % 25, <item:create:experience_nugget> % 10, <item:minecraft:netherrack> % 12], <item:minecraft:ancient_debris>, 350);
<recipetype:create:crushing>.addRecipe("create_crushing/charged_certus_quartz_crystal", [<item:contenttweaker:ae2/crushed_charged_certus_quartz>, <item:contenttweaker:ae2/crushed_charged_certus_quartz> % 25, <item:create:experience_nugget> % 10], <item:ae2:charged_certus_quartz_crystal>, 350);
<recipetype:create:crushing>.addRecipe("create_crushing/deepslate_quartz_ore", [<item:contenttweaker:ae2/crushed_certus_quartz> * 2, <item:ae2:certus_quartz_dust> * 4, <item:ae2:certus_quartz_dust> % 50, <item:minecraft:cobbled_deepslate> % 12], <item:ae2:deepslate_quartz_ore>, 300);
<recipetype:create:crushing>.addRecipe("create_crushing/nether_cobalt_ore", [<item:contenttweaker:tconstruct/crushed_cobalt_ore> * 2, <item:contenttweaker:tconstruct/crushed_cobalt_ore> % 25, <item:create:experience_nugget> % 75, <item:minecraft:netherrack> % 12], <item:tconstruct:cobalt_ore>, 350);
<recipetype:create:crushing>.removeByName("create:crushing/nether_quartz_ore");
<recipetype:create:crushing>.addRecipe("create_crushing/nether_quartz_ore", [<item:contenttweaker:ae2/crushed_quartz> * 2, <item:contenttweaker:ae2/crushed_quartz> % 25, <item:create:experience_nugget> % 75, <item:minecraft:netherrack> % 12], <item:minecraft:nether_quartz_ore>, 350);
<recipetype:create:crushing>.addRecipe("create_crushing/quartz_ore", [<item:contenttweaker:ae2/crushed_certus_quartz> * 2, <item:ae2:certus_quartz_dust> * 4, <item:ae2:certus_quartz_dust> % 50, <item:minecraft:cobblestone> % 12], <item:ae2:quartz_ore>, 300);
<recipetype:create:crushing>.addRecipe("create_crushing/purpur_block", [<item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit> % 25], <item:minecraft:purpur_block>, 250);
<recipetype:create:crushing>.addRecipe("create_crushing/soul_sand", [<item:thermal_extra:soul_sand_dust>], <item:minecraft:soul_sand>, 200);

// Filling
<recipetype:create:filling>.addRecipe("create_filling/leather_from_rotten_flesh", <item:minecraft:leather> % 50, <item:minecraft:rotten_flesh>, <fluid:minecraft:water> * 25, 800);
<recipetype:create:filling>.addRecipe("create_filling/quartz_rose_from_quartz", <item:create:rose_quartz>, <item:minecraft:quartz>, <fluid:thermal:redstone> * 25, 100);

// Haunting
<recipetype:create:haunting>.addRecipe("create_haunting/basalt_from_tuff", [<item:minecraft:basalt>], <item:minecraft:tuff>, 100);
<recipetype:create:haunting>.addRecipe("create_haunting/coal_from_charcoal", [<item:minecraft:coal> % 75], <item:minecraft:charcoal>, 200);
<recipetype:create:haunting>.addRecipe("create_haunting/nether_wart_from_wheat_seeds", [<item:minecraft:nether_wart> % 50], <item:minecraft:wheat_seeds>, 600);

// Milling
<recipetype:create:milling>.addRecipe("create_milling/alexsmobs/fish_bones", [<item:minecraft:bone_meal> * 3, <item:minecraft:white_dye> % 25, (<item:minecraft:bone_meal> * 3) % 25], <item:alexsmobs:fish_bones>, 100);
<recipetype:create:milling>.addRecipe("create_milling/aquaculture/fish_bones", [<item:minecraft:bone_meal> * 3, <item:minecraft:white_dye> % 25, (<item:minecraft:bone_meal> * 3) % 25], <item:aquaculture:fish_bones>, 100);

// Mixing
<recipetype:create:mixing>.addJsonRecipe("create_mixing/crushed_flux", {
	"ingredients": [
		{
			"item": "contenttweaker:ae2/crushed_charged_certus_quartz"
		},
		{
			"item": "contenttweaker:ae2/crushed_quartz"
		},
		{
			"item": "minecraft:redstone"
		},
		{
			"fluid": "minecraft:water",
			"nbt": {},
			"amount": 250
		}
	],
	"results": [
		{
			"item": "contenttweaker:ae2/crushed_fluix",
			"count": 2
		} 
	]
});

<recipetype:create:mixing>.addJsonRecipe("create_mixing/crushed_hepatizon", {
	"ingredients": [
		{
			"item": "create:crushed_raw_copper"
		},
		{
			"item": "create:crushed_raw_copper"
		},
		{
			"item": "contenttweaker:tconstruct/crushed_cobalt_ore"
		},
		{
			"item": "create:powdered_obsidian"
		}
	],
	"results": [
		{
			"item": "contenttweaker:tconstruct/crushed_hepatizon",
			"count": 2
		} 
	],
	"heatRequirement": "superheated"
});

<recipetype:create:mixing>.addJsonRecipe("create_mixing/crushed_manyullyn", {
	"ingredients": [
		{
			"item": "contenttweaker:tconstruct/crushed_cobalt_ore"
		},
		{
			"item": "contenttweaker:tconstruct/crushed_cobalt_ore"
		},
		{
			"item": "contenttweaker:tconstruct/crushed_cobalt_ore"
		},
		{
			"item": "contenttweaker:tconstruct/crushed_ancient_debris"
		}
	],
	"results": [
		{
			"item": "contenttweaker:tconstruct/crushed_manyullyn",
			"count": 4
		} 
	],
	"heatRequirement": "superheated"
});

<recipetype:create:mixing>.addJsonRecipe("create_mixing/crushed_queens_slime", {
	"ingredients": [
		{
			"item": "minecraft:magma_cream"
		},
		{
			"item": "create:crushed_raw_gold"
		},
		{
			"item": "contenttweaker:tconstruct/crushed_cobalt_ore"
		}
	],
	"results": [
		{
			"item": "contenttweaker:tconstruct/crushed_queens_slime",
			"count": 2
		} 
	],
	"heatRequirement": "superheated"
});

<recipetype:create:mixing>.addJsonRecipe("create_mixing/crushed_pig_iron", {
	"ingredients": [
		{
			"item": "create:crushed_raw_iron"
		},
		{
			"item": "tconstruct:blood_slime_ball"
		},
		{
			"item": "minecraft:clay_ball"
		}
	],
	"results": [
		{
			"item": "contenttweaker:tconstruct/crushed_pig_iron",
			"count": 2
		} 
	],
	"heatRequirement": "heated"
});

<recipetype:create:mixing>.addJsonRecipe("create_mixing/crushed_refined_glowstone", {
	"ingredients": [
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "minecraft:glowstone_dust"
		},
		{
			"item": "minecraft:glowstone_dust"
		},
		{
			"item": "minecraft:glowstone_dust"
		},
		{
			"item": "minecraft:glowstone_dust"
		},
		{
			"item": "minecraft:glowstone_dust"
		},
		{
			"item": "minecraft:glowstone_dust"
		},
		{
			"item": "minecraft:glowstone_dust"
		},
		{
			"item": "minecraft:glowstone_dust"
		}
	],
	"results": [
		{
			"item": "contenttweaker:mekanism/crushed_refined_glowstone",
			"count": 8
		} 
	],
	"heatRequirement": "superheated"
});

<recipetype:create:mixing>.addJsonRecipe("create_mixing/crushed_refined_obsidian", {
	"ingredients": [
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:crushed_raw_osmium"
		},
		{
			"item": "create:powdered_obsidian"
		},
		{
			"item": "create:powdered_obsidian"
		},
		{
			"item": "create:powdered_obsidian"
		},
		{
			"item": "create:powdered_obsidian"
		},
		{
			"item": "create:powdered_obsidian"
		},
		{
			"item": "create:powdered_obsidian"
		},
		{
			"item": "create:powdered_obsidian"
		},
		{
			"item": "create:powdered_obsidian"
		},
		{
			"item": "mekanism:enriched_diamond"
		}
	],
	"results": [
		{
			"item": "contenttweaker:mekanism/crushed_refined_obsidian",
			"count": 8
		} 
	],
	"heatRequirement": "superheated"
});

<recipetype:create:mixing>.addJsonRecipe("create_mixing/crushed_rose_gold", {
	"ingredients": [
		{
			"item": "create:crushed_raw_copper"
		},
		{
			"item": "create:crushed_raw_copper"
		},
		{
			"item": "create:crushed_raw_copper"
		},
		{
			"item": "create:crushed_raw_gold"
		}
	],
	"results": [
		{
			"item": "contenttweaker:tconstruct/crushed_rose_gold",
			"count": 4
		} 
	],
	"heatRequirement": "heated"
});

<recipetype:create:mixing>.addJsonRecipe("create_mixing/crushed_slimesteel", {
	"ingredients": [
		{
			"item": "create:crushed_raw_iron"
		},
		{
			"item": "tconstruct:grout"
		},
		{
			"item": "tconstruct:sky_slime_ball"
		}
	],
	"results": [
		{
			"item": "contenttweaker:tconstruct/crushed_slimesteel",
			"count": 2
		} 
	],
	"heatRequirement": "heated"
});

<recipetype:create:mixing>.addJsonRecipe("create_mixing/crushed_steel", {
	"ingredients": [
		{
			"item": "create:crushed_raw_iron"
		},
		{
			"item": "create:crushed_raw_iron"
		},
		{
			"item": "create:crushed_raw_iron"
		},
		{
			"item": "create:crushed_raw_iron"
		},
		{
			"item": "mekanism:enriched_carbon"
		}
	],
	"results": [
		{
			"item": "contenttweaker:mekanism/crushed_steel",
			"count": 4
		} 
	],
	"heatRequirement": "heated"
});

// Sawing
<recipetype:create:cutting>.addRecipe("stripped_cinnamon_log_from_cinnamon_log", <item:croptopia:stripped_cinnamon_log> % 100, <item:croptopia:cinnamon_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_cinnamon_wood_from_cinnamon_wood", <item:croptopia:stripped_cinnamon_wood> % 100, <item:croptopia:cinnamon_wood>, 50);
<recipetype:create:cutting>.addRecipe("stripped_indigo_stem_from_indigo_stem", <item:enlightened_end:stripped_indigo_stem> % 100, <item:enlightened_end:indigo_stem>, 50);
<recipetype:create:cutting>.addRecipe("stripped_indigo_hyphae_from_indigo_hyphae", <item:enlightened_end:stripped_indigo_hyphae> % 100, <item:enlightened_end:indigo_hyphae>, 50);
<recipetype:create:cutting>.addRecipe("indigo_planks_from_stripped_indigo_stem", (<item:enlightened_end:indigo_planks> * 6) % 100, <item:enlightened_end:stripped_indigo_stem>, 50);
<recipetype:create:cutting>.addRecipe("indigo_planks_from_stripped_indigo_hyphae", (<item:enlightened_end:indigo_planks> * 6) % 100, <item:enlightened_end:stripped_indigo_hyphae>, 50);
<recipetype:create:cutting>.addRecipe("stripped_thorns_from_brown_thorns", <item:tflostblocks:stripped_thorns> % 100, <item:twilightforest:brown_thorns>, 50);
<recipetype:create:cutting>.addRecipe("stripped_thorns_from_green_thorns", <item:tflostblocks:stripped_thorns> % 100, <item:twilightforest:green_thorns>, 50);
<recipetype:create:cutting>.addRecipe("stripped_cerulean_stalk_block_from_cerulean_log", <item:enlightened_end:stripped_cerulean_stalk_block> % 100, <item:enlightened_end:cerulean_log>, 50);
<recipetype:create:cutting>.addRecipe("cerulean_planks_from_stripped_cerulean_stalk_log", (<item:enlightened_end:cerulean_planks> * 6) % 100, <item:enlightened_end:stripped_cerulean_stalk_block>, 50);
<recipetype:create:cutting>.addRecipe("stripped_luminous_hyphae_from_luminous_hyphae", <item:infernalexp:stripped_luminous_hyphae> % 100, <item:infernalexp:luminous_hyphae>, 50);
<recipetype:create:cutting>.addRecipe("stripped_luminous_stem_from_luminous_stem", <item:infernalexp:stripped_luminous_stem> % 100, <item:infernalexp:luminous_stem>, 50);
<recipetype:create:cutting>.addRecipe("stripped_grongle_log_from_grongle_log", <item:undergarden:stripped_grongle_log> % 100, <item:undergarden:grongle_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_grongle_wood_from_grongle_wood", <item:undergarden:stripped_grongle_wood> % 100, <item:undergarden:grongle_wood>, 50);
<recipetype:create:cutting>.addRecipe("grongle_planks_from_stripped_grongle_wood", (<item:undergarden:grongle_planks> * 6) % 100, <item:undergarden:stripped_grongle_wood>, 50);
<recipetype:create:cutting>.addRecipe("grongle_planks_from_stripped_grongle_log", (<item:undergarden:grongle_planks> * 6) % 100, <item:undergarden:stripped_grongle_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_smogstem_log_from_smogstem_log", <item:undergarden:stripped_smogstem_log> % 100, <item:undergarden:smogstem_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_smogstem_wood_from_smogstem_wood", <item:undergarden:stripped_smogstem_wood> % 100, <item:undergarden:smogstem_wood>, 50);
<recipetype:create:cutting>.addRecipe("smogstem_planks_from_stripped_smogstem_wood", (<item:undergarden:smogstem_planks> * 6) % 100, <item:undergarden:stripped_smogstem_wood>, 50);
<recipetype:create:cutting>.addRecipe("smogstem_planks_from_stripped_smogstem_log", (<item:undergarden:smogstem_planks> * 6) % 100, <item:undergarden:stripped_smogstem_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_wigglewood_log_from_wigglewood_log", <item:undergarden:stripped_wigglewood_log> % 100, <item:undergarden:wigglewood_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_wigglewood_wood_from_wigglewood_wood", <item:undergarden:stripped_wigglewood_wood> % 100, <item:undergarden:wigglewood_wood>, 50);
<recipetype:create:cutting>.addRecipe("wigglewood_planks_from_stripped_wigglewood_wood", (<item:undergarden:wigglewood_planks> * 6) % 100, <item:undergarden:stripped_wigglewood_wood>, 50);
<recipetype:create:cutting>.addRecipe("wigglewood_planks_from_stripped_wigglewood_log", (<item:undergarden:wigglewood_planks> * 6) % 100, <item:undergarden:stripped_wigglewood_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_cherry_log_from_cherry_log", <item:vinery:stripped_cherry_log> % 100, <item:vinery:cherry_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_cherry_wood_from_cherry_wood", <item:vinery:stripped_cherry_wood> % 100, <item:vinery:cherry_wood>, 50);
<recipetype:create:cutting>.addRecipe("stripped_old_cherry_log_from_old_cherry_log", <item:vinery:stripped_old_cherry_log> % 100, <item:vinery:old_cherry_log>, 50);
<recipetype:create:cutting>.addRecipe("stripped_old_cherry_wood_from_old_cherry_wood", <item:vinery:stripped_old_cherry_wood> % 100, <item:vinery:old_cherry_wood>, 50);
<recipetype:create:cutting>.addRecipe("cherry_planks_from_stripped_cherry_log", (<item:vinery:cherry_planks> * 6) % 100, <item:vinery:stripped_cherry_log>, 50);
<recipetype:create:cutting>.addRecipe("cherry_planks_from_stripped_cherry_wood", (<item:vinery:cherry_planks> * 6) % 100, <item:vinery:stripped_cherry_wood>, 50);
<recipetype:create:cutting>.addRecipe("cherry_planks_from_stripped_old_cherry_log", (<item:vinery:cherry_planks> * 6) % 100, <item:vinery:stripped_old_cherry_log>, 50);
<recipetype:create:cutting>.addRecipe("cherry_planks_from_stripped_old_cherry_wood", (<item:vinery:cherry_planks> * 6) % 100, <item:vinery:stripped_old_cherry_wood>, 50);

// Sequenced Assembly
if (packModeSetting.packModeSettingPlates() == true) {
	<recipetype:create:pressing>.removeByName("createaddition:pressing/aluminum_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/aluminum_sheet")
		.transitionTo(<item:immersiveengineering:ingot_aluminum>)
		.require(<item:immersiveengineering:ingot_aluminum>)
		.loops(1)
		.addOutput(<item:immersiveengineering:plate_aluminum>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_aluminum>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_aluminum>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_aluminum>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("create:pressing/brass_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/brass_sheet")
		.transitionTo(<item:create:brass_ingot>)
		.require(<item:create:brass_ingot>)
		.loops(1)
		.addOutput(<item:create:brass_sheet>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:brass_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:brass_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:brass_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/bronze_plate")
		.transitionTo(<item:thermal:bronze_ingot>)
		.require(<item:thermal:bronze_ingot>)
		.loops(1)
		.addOutput(<item:thermal:bronze_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:bronze_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:bronze_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:bronze_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/cobalt_plate")
		.transitionTo(<item:tconstruct:cobalt_ingot>)
		.require(<item:tconstruct:cobalt_ingot>)
		.loops(1)
		.addOutput(<item:contenttweaker:tconstruct/cobalt_sheet>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:cobalt_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:cobalt_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:cobalt_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("createaddition:pressing/constantan_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/constantan_plate")
		.transitionTo(<item:thermal:constantan_ingot>)
		.require(<item:thermal:constantan_ingot>)
		.loops(1)
		.addOutput(<item:thermal:constantan_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:constantan_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:constantan_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:constantan_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("create:pressing/copper_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/copper_plate")
		.transitionTo(<item:minecraft:copper_ingot>)
		.require(<item:minecraft:copper_ingot>)
		.loops(1)
		.addOutput(<item:thermal:copper_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:copper_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:copper_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:copper_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/desh_plate")
		.transitionTo(<item:beyond_earth:desh_ingot>)
		.require(<item:beyond_earth:desh_ingot>)
		.loops(1)
		.addOutput(<item:beyond_earth:desh_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:beyond_earth:desh_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:beyond_earth:desh_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:beyond_earth:desh_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/diamond_plate")
		.transitionTo(<item:minecraft:diamond>)
		.require(<item:minecraft:diamond>)
		.loops(1)
		.addOutput(<item:contenttweaker:thermal/diamond_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:diamond>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:diamond>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:diamond>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/dragonsteel_plate")
		.transitionTo(<item:thermal_extra:dragonsteel_ingot>)
		.require(<item:thermal_extra:dragonsteel_ingot>)
		.loops(1)
		.addOutput(<item:thermal_extra:dragonsteel_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:dragonsteel_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:dragonsteel_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:dragonsteel_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("createaddition:pressing/electrum_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/electrum_plate")
		.transitionTo(<item:thermal:electrum_ingot>)
		.require(<item:thermal:electrum_ingot>)
		.loops(1)
		.addOutput(<item:thermal:electrum_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:electrum_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:electrum_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:electrum_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/emerald_plate")
		.transitionTo(<item:minecraft:emerald>)
		.require(<item:minecraft:emerald>)
		.loops(1)
		.addOutput(<item:contenttweaker:thermal/emerald_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:emerald>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:emerald>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:emerald>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/enderium_plate")
		.transitionTo(<item:thermal:enderium_ingot>)
		.require(<item:thermal:enderium_ingot>)
		.loops(1)
		.addOutput(<item:thermal:enderium_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:enderium_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:enderium_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:enderium_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("create:pressing/gold_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/gold_plate")
		.transitionTo(<item:minecraft:gold_ingot>)
		.require(<item:minecraft:gold_ingot>)
		.loops(1)
		.addOutput(<item:thermal:gold_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gold_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gold_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gold_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/hepatizon_plate")
		.transitionTo(<item:tconstruct:hepatizon_ingot>)
		.require(<item:tconstruct:hepatizon_ingot>)
		.loops(1)
		.addOutput(<item:contenttweaker:tconstruct/hepatizon_sheet>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:hepatizon_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:hepatizon_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:hepatizon_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/invar_plate")
		.transitionTo(<item:thermal:invar_ingot>)
		.require(<item:thermal:invar_ingot>)
		.loops(1)
		.addOutput(<item:thermal:invar_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:invar_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:invar_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:invar_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("create:pressing/iron_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/iron_plate")
		.transitionTo(<item:minecraft:iron_ingot>)
		.require(<item:minecraft:iron_ingot>)
		.loops(1)
		.addOutput(<item:thermal:iron_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:iron_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:iron_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:iron_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/lapis_lazuli_plate")
		.transitionTo(<item:minecraft:lapis_lazuli>)
		.require(<item:minecraft:lapis_lazuli>)
		.loops(1)
		.addOutput(<item:contenttweaker:thermal/lapis_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:lapis_lazuli>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:lapis_lazuli>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:lapis_lazuli>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("createaddition:pressing/lead_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/lead_plate")
		.transitionTo(<item:thermal:lead_ingot>)
		.require(<item:thermal:lead_ingot>)
		.loops(1)
		.addOutput(<item:thermal:lead_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:lead_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:lead_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:lead_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/lumium_plate")
		.transitionTo(<item:thermal:lumium_ingot>)
		.require(<item:thermal:lumium_ingot>)
		.loops(1)
		.addOutput(<item:thermal:lumium_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:lumium_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:lumium_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:lumium_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/manyullyn_plate")
		.transitionTo(<item:tconstruct:manyullyn_ingot>)
		.require(<item:tconstruct:manyullyn_ingot>)
		.loops(1)
		.addOutput(<item:contenttweaker:tconstruct/manyullyn_sheet>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:manyullyn_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:manyullyn_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:manyullyn_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/netherite_plate")
		.transitionTo(<item:minecraft:netherite_ingot>)
		.require(<item:minecraft:netherite_ingot>)
		.loops(1)
		.addOutput(<item:thermal:netherite_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:netherite_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:netherite_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:netherite_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("createaddition:pressing/nickel_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/nickel_plate")
		.transitionTo(<item:thermal:nickel_ingot>)
		.require(<item:thermal:nickel_ingot>)
		.loops(1)
		.addOutput(<item:thermal:nickel_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:nickel_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:nickel_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:nickel_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/pig_iron_plate")
		.transitionTo(<item:tconstruct:pig_iron_ingot>)
		.require(<item:tconstruct:pig_iron_ingot>)
		.loops(1)
		.addOutput(<item:contenttweaker:tconstruct/pig_iron_sheet>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:pig_iron_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:pig_iron_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:pig_iron_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/queens_slime_plate")
		.transitionTo(<item:tconstruct:queens_slime_ingot>)
		.require(<item:tconstruct:queens_slime_ingot>)
		.loops(1)
		.addOutput(<item:contenttweaker:tconstruct/queens_slime_sheet>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:queens_slime_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:queens_slime_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:queens_slime_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/quartz_plate")
		.transitionTo(<item:minecraft:quartz>)
		.require(<item:minecraft:quartz>)
		.loops(1)
		.addOutput(<item:contenttweaker:thermal/quartz_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:quartz>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:quartz>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:quartz>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/rose_gold_plate")
		.transitionTo(<item:thermal:rose_gold_ingot>)
		.require(<item:thermal:rose_gold_ingot>)
		.loops(1)
		.addOutput(<item:thermal:rose_gold_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:rose_gold_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:rose_gold_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:rose_gold_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/shellite_plate")
		.transitionTo(<item:thermal_extra:shellite_ingot>)
		.require(<item:thermal_extra:shellite_ingot>)
		.loops(1)
		.addOutput(<item:thermal_extra:shellite_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:shellite_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:shellite_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:shellite_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("createaddition:pressing/silver_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/silver_plate")
		.transitionTo(<item:thermal:silver_ingot>)
		.require(<item:thermal:silver_ingot>)
		.loops(1)
		.addOutput(<item:thermal:silver_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:silver_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:silver_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:silver_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/signalum_plate")
		.transitionTo(<item:thermal:signalum_ingot>)
		.require(<item:thermal:signalum_ingot>)
		.loops(1)
		.addOutput(<item:thermal:signalum_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:signalum_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:signalum_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:signalum_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/slimesteel_plate")
		.transitionTo(<item:tconstruct:slimesteel_ingot>)
		.require(<item:tconstruct:slimesteel_ingot>)
		.loops(1)
		.addOutput(<item:contenttweaker:tconstruct/slimesteel_sheet>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:slimesteel_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:slimesteel_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:slimesteel_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/soul_infused_plate")
		.transitionTo(<item:thermal_extra:soul_infused_ingot>)
		.require(<item:thermal_extra:soul_infused_ingot>)
		.loops(1)
		.addOutput(<item:thermal_extra:soul_infused_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:soul_infused_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:soul_infused_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:soul_infused_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("createaddition:pressing/steel_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/steel_plate")
		.transitionTo(<item:thermal:steel_ingot>)
		.require(<item:thermal:steel_ingot>)
		.loops(1)
		.addOutput(<item:thermal:steel_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:steel_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:steel_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:steel_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/twinite_plate")
		.transitionTo(<item:thermal_extra:twinite_ingot>)
		.require(<item:thermal_extra:twinite_ingot>)
		.loops(1)
		.addOutput(<item:thermal_extra:twinite_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:twinite_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:twinite_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal_extra:twinite_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/tin_plate")
		.transitionTo(<item:thermal:tin_ingot>)
		.require(<item:thermal:tin_ingot>)
		.loops(1)
		.addOutput(<item:thermal:tin_plate>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:tin_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:tin_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:tin_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("createaddition:pressing/uranium_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/uranium_plate")
		.transitionTo(<item:immersiveengineering:ingot_uranium>)
		.require(<item:immersiveengineering:ingot_uranium>)
		.loops(1)
		.addOutput(<item:immersiveengineering:plate_uranium>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_uranium>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_uranium>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_uranium>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
	<recipetype:create:pressing>.removeByName("createaddition:pressing/zinc_ingot");
	<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pack_expert_crafting/zinc_sheet")
		.transitionTo(<item:create:zinc_ingot>)
		.require(<item:create:zinc_ingot>)
		.loops(1)
		.addOutput(<item:createaddition:zinc_sheet>, 1)
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:zinc_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
		.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:zinc_ingot>))
		//.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:zinc_ingot>))
		.addStep<mods.createtweaker.PressingRecipe>()
	);
}

// Pressing
if (packModeSetting.packModeSettingPlates() != true) {
	<recipetype:create:pressing>.addRecipe("create_pressing/bronze_ingot", [<item:thermal:bronze_plate>], <item:thermal:bronze_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/cobalt_ingot", [<item:contenttweaker:tconstruct/cobalt_sheet>], <item:tconstruct:cobalt_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/desh_ingot", [<item:beyond_earth:desh_plate>], <item:beyond_earth:desh_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/diamond", [<item:contenttweaker:thermal/diamond_plate>], <item:minecraft:diamond>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/dragonsteel_ingot", [<item:thermal_extra:dragonsteel_plate>], <item:thermal_extra:dragonsteel_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/emerald", [<item:contenttweaker:thermal/emerald_plate>], <item:minecraft:emerald>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/enderium_ingot", [<item:thermal:enderium_plate>], <item:thermal:enderium_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/hepatizon_ingot", [<item:contenttweaker:tconstruct/hepatizon_sheet>], <item:tconstruct:hepatizon_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/invar_ingot", [<item:thermal:invar_plate>], <item:thermal:invar_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/lapis_lazuli", [<item:contenttweaker:thermal/lapis_plate>], <item:minecraft:lapis_lazuli>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/lumium_ingot", [<item:thermal:lumium_plate>], <item:thermal:lumium_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/manyullyn_ingot", [<item:contenttweaker:tconstruct/manyullyn_sheet>], <item:tconstruct:manyullyn_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/netherite_ingot", [<item:thermal:netherite_plate>], <item:minecraft:netherite_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/pig_iron_ingot", [<item:contenttweaker:tconstruct/pig_iron_sheet>], <item:tconstruct:pig_iron_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/queens_slime_ingot", [<item:contenttweaker:tconstruct/queens_slime_sheet>], <item:tconstruct:queens_slime_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/quartz", [<item:contenttweaker:thermal/quartz_plate>], <item:minecraft:quartz>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/rose_gold_ingot", [<item:thermal:rose_gold_plate>], <item:thermal:rose_gold_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/shellite_ingot", [<item:thermal_extra:shellite_plate>], <item:thermal_extra:shellite_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/signalum_ingot", [<item:thermal:signalum_plate>], <item:thermal:signalum_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/slimesteel_ingot", [<item:contenttweaker:tconstruct/slimesteel_sheet>], <item:tconstruct:slimesteel_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/soul_infused_ingot", [<item:thermal_extra:soul_infused_plate>], <item:thermal_extra:soul_infused_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/twinite_ingot", [<item:thermal_extra:twinite_plate>], <item:thermal_extra:twinite_ingot>, 100);
	<recipetype:create:pressing>.addRecipe("create_pressing/tin_ingot", [<item:thermal:tin_plate>], <item:thermal:tin_ingot>, 100);
}

// Splashing
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_ancient_debris", [<item:minecraft:netherite_scrap> * 1, (<item:minecraft:netherite_scrap> * 1) % 25], <item:contenttweaker:tconstruct/crushed_ancient_debris>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_certus_quartz", [<item:ae2:certus_quartz_crystal> * 2, (<item:ae2:certus_quartz_crystal> * 1) % 50], <item:contenttweaker:ae2/crushed_certus_quartz>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_charged_certus_quartz", [<item:ae2:charged_certus_quartz_crystal>, (<item:ae2:charged_certus_quartz_crystal> * 1) % 50], <item:contenttweaker:ae2/crushed_charged_certus_quartz>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_cobalt_ore", [<item:tconstruct:cobalt_nugget> * 10, (<item:tconstruct:cobalt_nugget> * 5) % 25], <item:contenttweaker:tconstruct/crushed_cobalt_ore>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_fluix_crystal", [<item:ae2:fluix_crystal> * 2, (<item:ae2:fluix_crystal> * 1) % 50], <item:contenttweaker:ae2/crushed_fluix>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_hepatizon", [<item:tconstruct:hepatizon_nugget> * 10, (<item:tconstruct:hepatizon_nugget> * 5) % 50], <item:contenttweaker:tconstruct/crushed_hepatizon>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_manyullyn", [<item:tconstruct:manyullyn_nugget> * 10, (<item:tconstruct:manyullyn_nugget> * 5) % 25], <item:contenttweaker:tconstruct/crushed_manyullyn>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_pig_iron", [<item:tconstruct:pig_iron_nugget> * 10, (<item:tconstruct:pig_iron_nugget> * 5) % 50], <item:contenttweaker:tconstruct/crushed_pig_iron>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_queens_slime", [<item:tconstruct:queens_slime_nugget> * 10, (<item:tconstruct:queens_slime_nugget> * 5) % 25], <item:contenttweaker:tconstruct/crushed_queens_slime>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_quartz", [<item:minecraft:quartz> * 2, (<item:minecraft:quartz> * 1) % 50], <item:contenttweaker:ae2/crushed_quartz>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_refined_glowstone", [<item:mekanism:nugget_refined_glowstone> * 12, (<item:mekanism:nugget_refined_glowstone> * 5) % 50], <item:contenttweaker:mekanism/crushed_refined_glowstone>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_refined_obsidian", [<item:mekanism:nugget_refined_obsidian> * 12, (<item:mekanism:nugget_refined_obsidian> * 5) % 50], <item:contenttweaker:mekanism/crushed_refined_obsidian>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_rose_gold", [<item:tconstruct:rose_gold_nugget> * 10, (<item:tconstruct:rose_gold_nugget> * 5) % 50], <item:contenttweaker:tconstruct/crushed_rose_gold>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_slimesteel", [<item:tconstruct:slimesteel_nugget> * 10, (<item:tconstruct:slimesteel_nugget> * 5) % 50], <item:contenttweaker:tconstruct/crushed_slimesteel>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_steel", [<item:thermal:steel_nugget> * 12, (<item:thermal:steel_nugget> * 5) % 50], <item:contenttweaker:mekanism/crushed_steel>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/nautilus_shell_from_red_sandstone", [<item:minecraft:red_sand>, <item:minecraft:nautilus_shell> % 5], <item:minecraft:red_sandstone>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/nautilus_shell_from_sandstone", [<item:minecraft:sand>, <item:minecraft:nautilus_shell> % 2], <item:minecraft:sandstone>, 200);

Globals.endScript("recipe_create");