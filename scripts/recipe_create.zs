/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Missing Recipe.
 */
 
println("Start script recipe_create.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

// Crushing
<recipetype:create:crushing>.addRecipe("create_crushing/charged_certus_quartz_crystal", [<item:contenttweaker:ae2/crushed_charged_certus_quartz>, <item:contenttweaker:ae2/crushed_charged_certus_quartz> % 25, <item:create:experience_nugget> % 10], <item:ae2:charged_certus_quartz_crystal>, 350);
<recipetype:create:crushing>.addRecipe("create_crushing/nether_cobalt_ore", [<item:contenttweaker:tconstruct/crushed_cobalt_ore> * 2, <item:contenttweaker:tconstruct/crushed_cobalt_ore> % 25, <item:create:experience_nugget> % 75, <item:minecraft:netherrack> % 12], <item:tconstruct:cobalt_ore>, 350);
<recipetype:create:crushing>.removeByName("create:crushing/nether_quartz_ore");
<recipetype:create:crushing>.addRecipe("create_crushing/nether_quartz_ore", [<item:contenttweaker:ae2/crushed_quartz> * 2, <item:contenttweaker:ae2/crushed_quartz> % 25, <item:create:experience_nugget> % 75, <item:minecraft:netherrack> % 12], <item:minecraft:nether_quartz_ore>, 350);

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
<recipetype:create:pressing>.removeByName("createaddition:pressing/aluminum_ingot");
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("aluminum_sheet")
	.transitionTo(<item:immersiveengineering:ingot_aluminum>)
	.require(<item:immersiveengineering:ingot_aluminum>)
	.loops(1)
	.addOutput(<item:immersiveengineering:plate_aluminum>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_aluminum>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_aluminum>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_aluminum>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:pressing>.removeByName("create:pressing/copper_ingot");
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("copper_plate")
	.transitionTo(<item:minecraft:copper_ingot>)
	.require(<item:minecraft:copper_ingot>)
	.loops(1)
	.addOutput(<item:thermal:copper_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:copper_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:copper_ingot>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:copper_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("diamond_plate")
	.transitionTo(<item:minecraft:diamond>)
	.require(<item:minecraft:diamond>)
	.loops(1)
	.addOutput(<item:contenttweaker:thermal/diamond_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:diamond>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:diamond>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:diamond>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("emerald_plate")
	.transitionTo(<item:minecraft:emerald>)
	.require(<item:minecraft:emerald>)
	.loops(1)
	.addOutput(<item:contenttweaker:thermal/emerald_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:emerald>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:emerald>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:emerald>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:pressing>.removeByName("create:pressing/gold_ingot");
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("gold_plate")
	.transitionTo(<item:minecraft:gold_ingot>)
	.require(<item:minecraft:gold_ingot>)
	.loops(1)
	.addOutput(<item:thermal:gold_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gold_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gold_ingot>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gold_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:pressing>.removeByName("create:pressing/iron_ingot");
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("iron_plate")
	.transitionTo(<item:minecraft:iron_ingot>)
	.require(<item:minecraft:iron_ingot>)
	.loops(1)
	.addOutput(<item:thermal:iron_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:iron_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:iron_ingot>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:iron_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("lapis_lazuli_plate")
	.transitionTo(<item:minecraft:lapis_lazuli>)
	.require(<item:minecraft:lapis_lazuli>)
	.loops(1)
	.addOutput(<item:contenttweaker:thermal/lapis_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:lapis_lazuli>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:lapis_lazuli>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:lapis_lazuli>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:pressing>.removeByName("createaddition:pressing/lead_ingot");
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("lead_plate")
	.transitionTo(<item:thermal:lead_ingot>)
	.require(<item:thermal:lead_ingot>)
	.loops(1)
	.addOutput(<item:thermal:lead_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:lead_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:lead_ingot>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:lead_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("netherite_plate")
	.transitionTo(<item:minecraft:netherite_ingot>)
	.require(<item:minecraft:netherite_ingot>)
	.loops(1)
	.addOutput(<item:thermal:netherite_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:netherite_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:netherite_ingot>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:netherite_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("quartz_plate")
	.transitionTo(<item:minecraft:quartz>)
	.require(<item:minecraft:quartz>)
	.loops(1)
	.addOutput(<item:contenttweaker:thermal/quartz_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:quartz>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:quartz>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:quartz>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("rose_gold_plate")
	.transitionTo(<item:thermal:rose_gold_ingot>)
	.require(<item:thermal:rose_gold_ingot>)
	.loops(1)
	.addOutput(<item:thermal:rose_gold_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:rose_gold_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:rose_gold_ingot>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:rose_gold_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:pressing>.removeByName("createaddition:pressing/silver_ingot");
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("silver_plate")
	.transitionTo(<item:thermal:silver_ingot>)
	.require(<item:thermal:silver_ingot>)
	.loops(1)
	.addOutput(<item:thermal:silver_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:silver_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:silver_ingot>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:silver_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:pressing>.removeByName("createaddition:pressing/steel_ingot");
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("steel_plate")
	.transitionTo(<item:thermal:steel_ingot>)
	.require(<item:thermal:steel_ingot>)
	.loops(1)
	.addOutput(<item:thermal:steel_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:steel_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:steel_ingot>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:steel_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("tin_plate")
	.transitionTo(<item:thermal:tin_ingot>)
	.require(<item:thermal:tin_ingot>)
	.loops(1)
	.addOutput(<item:thermal:tin_plate>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:tin_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:tin_ingot>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:thermal:tin_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:pressing>.removeByName("createaddition:pressing/uranium_ingot");
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("uranium_plate")
	.transitionTo(<item:immersiveengineering:ingot_uranium>)
	.require(<item:immersiveengineering:ingot_uranium>)
	.loops(1)
	.addOutput(<item:immersiveengineering:plate_uranium>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_uranium>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_uranium>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:ingot_uranium>))
	.addStep<mods.createtweaker.PressingRecipe>()
);
<recipetype:create:pressing>.removeByName("createaddition:pressing/zinc_ingot");
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("zinc_sheet")
	.transitionTo(<item:create:zinc_ingot>)
	.require(<item:create:zinc_ingot>)
	.loops(1)
	.addOutput(<item:createaddition:zinc_sheet>, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:zinc_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:zinc_ingot>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:zinc_ingot>))
	.addStep<mods.createtweaker.PressingRecipe>()
);

// Splashing
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_certus_quartz", [<item:ae2:certus_quartz_crystal> * 2, (<item:ae2:certus_quartz_crystal> * 1) % 50], <item:contenttweaker:ae2/crushed_certus_quartz>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_charged_certus_quartz", [<item:ae2:charged_certus_quartz_crystal>, (<item:ae2:charged_certus_quartz_crystal> * 1) % 50], <item:contenttweaker:ae2/crushed_charged_certus_quartz>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_fluix_crystal", [<item:ae2:fluix_crystal> * 2, (<item:ae2:fluix_crystal> * 1) % 50], <item:contenttweaker:ae2/crushed_fluix>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_quartz", [<item:minecraft:quartz> * 2, (<item:minecraft:quartz> * 1) % 50], <item:contenttweaker:ae2/crushed_quartz>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_refined_glowstone", [<item:mekanism:nugget_refined_glowstone> * 12, (<item:mekanism:nugget_refined_glowstone> * 5) % 50], <item:contenttweaker:mekanism/crushed_refined_glowstone>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_refined_obsidian", [<item:mekanism:nugget_refined_obsidian> * 12, (<item:mekanism:nugget_refined_obsidian> * 5) % 50], <item:contenttweaker:mekanism/crushed_refined_obsidian>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_steel", [<item:thermal:steel_nugget> * 12, (<item:thermal:steel_nugget> * 5) % 50], <item:contenttweaker:mekanism/crushed_steel>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/crushed_cobalt_ore", [<item:tconstruct:cobalt_nugget> * 9, <item:moremekanismprocessing:dust_cobalt> % 25], <item:contenttweaker:tconstruct/crushed_cobalt_ore>, 200);

println("End script recipe_create.");