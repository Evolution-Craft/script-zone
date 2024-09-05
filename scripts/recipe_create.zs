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

val hcNone = <constant:create:heat_condition:none>;
val hcHeated = <constant:create:heat_condition:heated>;
val hcSuperheated = <constant:create:heat_condition:superheated>;

// Shaped
craftingTable.addShaped("create/mechanical_drill_from_head", <item:create:mechanical_drill>, [
	[<item:minecraft:air>, <item:thermal:drill_head>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("create/mechanical_saw_from_blade", <item:create:mechanical_saw>, [
	[<item:minecraft:air>, <item:thermal:saw_blade>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

// Compacting
<recipetype:create:compacting>.addRecipe("create_compacted/coal_from_charcoal", hcHeated, [<item:minecraft:coal> % 75], [<item:minecraft:charcoal>]);
<recipetype:create:compacting>.addRecipe("create_compacted/diamond_from_coal", hcSuperheated, [<item:minecraft:diamond> % 10], [<item:minecraft:coal_block> * 16]);

// Crushing
var logsWoodenHorse = {
	"acacia" : "acacia",
	"birch" : "birch",
	"crimson" : "crimson",
	"dark_oak" : "bigoak",
	"jungle" : "jungle",
	"oak" : "oak",
	"spruce" : "spruce",
	"warped" : "warped"
};
for logWoodenHorseId, logWoodenHorseName in logsWoodenHorse {
	<recipetype:create:crushing>.addRecipe("create_crushing/" + logWoodenHorseName + "_horse_armor", [<item:minecraft:${logWoodenHorseId}_planks> * 2, (<item:minecraft:${logWoodenHorseId}_planks> * 2) % 50, <item:minecraft:stick> % 25], <item:woodarmorhorse:${logWoodenHorseName}_horse_armor>, 200);
}

<recipetype:create:crushing>.addRecipe("create_crushing/copper_horse_armor", [<item:minecraft:copper_ingot> * 2, <item:minecraft:leather> % 50, <item:minecraft:copper_ingot> % 50, (<item:minecraft:string> * 2) % 25, (<item:thermal:copper_nugget> * 4) % 25], <item:exlinecopperequipment:copper_horse_armor>, 200);
<recipetype:create:crushing>.addRecipe("create_crushing/ancient_debris", [<item:contenttweaker:tconstruct/crushed_ancient_debris>, (<item:contenttweaker:tconstruct/crushed_ancient_debris> * 2) % 25, <item:create:experience_nugget> % 10, <item:minecraft:netherrack> % 12], <item:minecraft:ancient_debris>, 350);
<recipetype:create:crushing>.addRecipe("create_crushing/basalz_rod", [<item:thermal:basalz_powder> * 2, <item:thermal:basalz_powder> % 50, <item:thermal:slag> % 50], <item:thermal:basalz_rod>, 100);
<recipetype:create:crushing>.addRecipe("create_crushing/blitz_rod", [<item:thermal:blitz_rod> * 2, <item:thermal:blitz_rod> % 50, <item:thermal:slag> % 50], <item:thermal:blitz_rod>, 100);
<recipetype:create:crushing>.addRecipe("create_crushing/blizz_rod", [<item:thermal:blizz_rod> * 2, <item:thermal:blizz_rod> % 50, <item:thermal:slag> % 50], <item:thermal:blizz_rod>, 100);
<recipetype:create:crushing>.addRecipe("create_crushing/charged_certus_quartz_crystal", [<item:contenttweaker:ae2/crushed_charged_certus_quartz>, <item:contenttweaker:ae2/crushed_charged_certus_quartz> % 25, <item:create:experience_nugget> % 10], <item:ae2:charged_certus_quartz_crystal>, 350);
<recipetype:create:crushing>.addRecipe("create_crushing/dark_prismarine", [<item:create:experience_nugget> * 2, <item:minecraft:lapis_lazuli> % 90, <item:minecraft:black_dye> % 25, <item:thermal:copper_nugget> % 12], <item:minecraft:dark_prismarine>, 200);
<recipetype:create:crushing>.addRecipe("create_crushing/deepslate_quartz_ore", [<item:contenttweaker:ae2/crushed_certus_quartz> * 2, <item:ae2:certus_quartz_dust> * 4, <item:ae2:certus_quartz_dust> % 50, <item:minecraft:cobbled_deepslate> % 12], <item:ae2:deepslate_quartz_ore>, 450);
<recipetype:create:crushing>.addRecipe("create_crushing/deepslate_ruby_ore", [<item:thermal:ruby> * 2, <item:thermal:ruby> % 25, <item:create:experience_nugget> % 75, <item:minecraft:cobbled_deepslate> % 12], <item:thermal:deepslate_ruby_ore>, 450);
<recipetype:create:crushing>.addRecipe("create_crushing/deepslate_sapphire_ore", [<item:thermal:sapphire> * 2, <item:thermal:sapphire> % 25, <item:create:experience_nugget> % 75, <item:minecraft:cobbled_deepslate> % 12], <item:thermal:deepslate_sapphire_ore>, 450);
<recipetype:create:crushing>.addRecipe("create_crushing/nether_cobalt_ore", [<item:contenttweaker:tconstruct/crushed_cobalt_ore> * 2, <item:contenttweaker:tconstruct/crushed_cobalt_ore> % 25, <item:create:experience_nugget> % 75, <item:minecraft:netherrack> % 12], <item:tconstruct:cobalt_ore>, 350);
<recipetype:create:crushing>.removeByName("create:crushing/nether_quartz_ore");
<recipetype:create:crushing>.addRecipe("create_crushing/nether_quartz_ore", [<item:contenttweaker:ae2/crushed_quartz> * 2, <item:contenttweaker:ae2/crushed_quartz> % 25, <item:create:experience_nugget> % 75, <item:minecraft:netherrack> % 12], <item:minecraft:nether_quartz_ore>, 350);
<recipetype:create:crushing>.addRecipe("create_crushing/netherite_horse_armor", [<item:minecraft:netherite_ingot> * 2, <item:minecraft:leather> % 50, <item:minecraft:netherite_ingot> % 50, (<item:minecraft:string> * 2) % 25, (<item:thermal:netherite_nugget> * 4) % 25], <item:nha:netherite_horse_armor>, 200);
<recipetype:create:crushing>.addRecipe("create_crushing/quartz_ore", [<item:contenttweaker:ae2/crushed_certus_quartz> * 2, <item:ae2:certus_quartz_dust> * 4, <item:ae2:certus_quartz_dust> % 50, <item:minecraft:cobblestone> % 12], <item:ae2:quartz_ore>, 300);
<recipetype:create:crushing>.addRecipe("create_crushing/prismarine", [<item:create:experience_nugget> % 75, <item:minecraft:lapis_lazuli> % 50], <item:minecraft:prismarine>, 200);
<recipetype:create:crushing>.addRecipe("create_crushing/prismarine_bricks", [<item:create:experience_nugget> * 2, <item:minecraft:lapis_lazuli> % 90, <item:create:experience_nugget> % 25, <item:thermal:copper_nugget> % 12], <item:minecraft:prismarine_bricks>, 200);
<recipetype:create:crushing>.addRecipe("create_crushing/purpur_block", [<item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit> % 25], <item:minecraft:purpur_block>, 250);
<recipetype:create:crushing>.addRecipe("create_crushing/ruby_ore", [<item:thermal:ruby> * 2, <item:thermal:ruby> % 25, <item:create:experience_nugget> % 75, <item:minecraft:cobblestone> % 12], <item:thermal:ruby_ore>, 350);
<recipetype:create:crushing>.addRecipe("create_crushing/sapphire_ore", [<item:thermal:sapphire> * 2, <item:thermal:sapphire> % 25, <item:create:experience_nugget> % 75, <item:minecraft:cobblestone> % 12], <item:thermal:sapphire_ore>, 350);
<recipetype:create:crushing>.addRecipe("create_crushing/silver_horse_armor", [<item:thermal:silver_ingot> * 2, <item:minecraft:leather> % 50, <item:thermal:silver_ingot> % 50, (<item:minecraft:string> * 2) % 25, (<item:thermal:silver_nugget> * 4) % 25], <item:galosphere:sterling_horse_armor>, 200);
<recipetype:create:crushing>.addRecipe("create_crushing/soul_sand", [<item:thermal_extra:soul_sand_dust>], <item:minecraft:soul_sand>, 200);
<recipetype:create:crushing>.addRecipe("create_crushing/stone_horse_armor", [<item:minecraft:cobblestone> * 2, (<item:minecraft:cobblestone> * 2) % 50], <item:woodarmorhorse:stone_horse_armor>, 200);

// Deployer
<recipetype:create:deploying>.addRecipe("create_deploying/rabbits_foot", <item:minecraft:rabbit_hide>, <item:minecraft:bone>, [<item:minecraft:rabbit_foot>]);

// Filling
<recipetype:create:filling>.addRecipe("create_filling/electron_tube_from_polished_rose_quartz", <item:create:electron_tube>, <item:create:polished_rose_quartz>, <fluid:tconstruct:molten_iron> * 16, 250);
<recipetype:create:filling>.addRecipe("create_filling/leather_from_rotten_flesh", <item:minecraft:leather> % 50, <item:minecraft:rotten_flesh>, <fluid:minecraft:water> * 25, 800);
<recipetype:create:filling>.addRecipe("create_filling/quartz_rose_from_quartz", <item:create:rose_quartz>, <item:minecraft:quartz>, <fluid:thermal:redstone> * 25, 100);

// Haunting
<recipetype:create:haunting>.addRecipe("create_haunting/basalt_from_tuff", [<item:minecraft:basalt>], <item:minecraft:tuff>, 100);
<recipetype:create:haunting>.addRecipe("create_haunting/coal_from_charcoal", [<item:minecraft:coal> % 75], <item:minecraft:charcoal>, 200);
<recipetype:create:haunting>.addRecipe("create_haunting/nether_wart_from_wheat_seeds", [<item:minecraft:nether_wart> % 50], <item:minecraft:wheat_seeds>, 600);

// Milling
<recipetype:create:milling>.addRecipe("create_milling/alexsmobs/fish_bones", [<item:minecraft:bone_meal> * 3, <item:minecraft:white_dye> % 25, (<item:minecraft:bone_meal> * 3) % 25], <item:alexsmobs:fish_bones>, 100);
<recipetype:create:milling>.addRecipe("create_milling/aquaculture/fish_bones", [<item:minecraft:bone_meal> * 3, <item:minecraft:white_dye> % 25, (<item:minecraft:bone_meal> * 3) % 25], <item:aquaculture:fish_bones>, 100);
<recipetype:create:milling>.addRecipe("create_milling/bhc/wither_bone", [<item:minecraft:bone_meal> * 3, <item:minecraft:black_dye> % 25, (<item:minecraft:bone_meal> * 3) % 25], <item:bhc:wither_bone>, 100);
<recipetype:create:milling>.removeByName("corn_delight:integration/create/milling/corn");
<recipetype:create:milling>.addRecipe("create_milling/corn_delight/corn", [<item:create:wheat_flour>, <item:corn_delight:corn_seeds> * 2, (<item:corn_delight:corn_seeds> * 2) % 15, <item:farmersdelight:straw>], <item:croptopia:corn>, 150);
<recipetype:create:milling>.addRecipe("create_milling/croptopia/barley", [<item:create:wheat_flour>, (<item:create:wheat_flour> * 2) % 25, <item:croptopia:barley_seed> % 25], <item:croptopia:barley>, 150);
<recipetype:create:milling>.addRecipe("create_milling/netherdepthsupgrade/bonefish", [<item:minecraft:bone_meal> * 3, <item:minecraft:white_dye> % 25, (<item:minecraft:bone_meal> * 3) % 25], <item:netherdepthsupgrade:bonefish>, 100);
<recipetype:create:milling>.addRecipe("create_milling/netherdepthsupgrade/wither_bonefish", [<item:minecraft:bone_meal> * 3, <item:minecraft:black_dye> % 25, (<item:minecraft:bone_meal> * 3) % 25], <item:netherdepthsupgrade:wither_bonefish>, 100);
<recipetype:create:milling>.addRecipe("create_milling/tconstruct/blazing_bone", [<item:minecraft:bone_meal> * 3, <item:minecraft:blaze_powder> % 25, (<item:minecraft:bone_meal> * 3) % 25], <item:tconstruct:blazing_bone>, 100);
<recipetype:create:milling>.addRecipe("create_milling/tconstruct/bloodbone", [<item:minecraft:bone_meal> * 3, <item:minecraft:red_dye> % 25, (<item:minecraft:bone_meal> * 3) % 25], <item:tconstruct:bloodbone>, 100);
<recipetype:create:milling>.addRecipe("create_milling/tconstruct/necronium_bone", [<item:minecraft:bone_meal> * 3, <item:immersiveengineering:dust_uranium> % 25, (<item:minecraft:bone_meal> * 3) % 25], <item:tconstruct:necronium_bone>, 100);

// Mixing
for mixing_glass_dye_add_item in Constant.packColours {
	<recipetype:create:mixing>.addRecipe("create_mixing/quark/" + mixing_glass_dye_add_item + "_shard", hcNone, [<item:quark:${mixing_glass_dye_add_item}_shard> * 4], [<item:quark:clear_shard> * 4, <item:minecraft:${mixing_glass_dye_add_item}_dye>]);
	<recipetype:create:mixing>.addRecipe("create_mixing/quark/" + mixing_glass_dye_add_item + "_stained_glass", hcHeated, [<item:minecraft:${mixing_glass_dye_add_item}_stained_glass>], [<item:quark:${mixing_glass_dye_add_item}_shard> * 4]);
}

<recipetype:create:mixing>.addRecipe("create_mixing/blaze_rod", hcNone, [<item:minecraft:blaze_rod>], [<item:minecraft:slime_ball>, <item:minecraft:blaze_powder> * 2]);
<recipetype:create:mixing>.addRecipe("create_mixing/crushed_hepatizon", hcSuperheated, [<item:contenttweaker:tconstruct/crushed_hepatizon> * 2], [<item:create:crushed_raw_copper> * 2, <item:contenttweaker:tconstruct/crushed_cobalt_ore>, <item:create:powdered_obsidian>]);
<recipetype:create:mixing>.addRecipe("create_mixing/crushed_fluix", hcHeated, [<item:contenttweaker:ae2/crushed_fluix> * 2], [<item:contenttweaker:ae2/crushed_charged_certus_quartz>, <item:contenttweaker:ae2/crushed_quartz>, <item:minecraft:redstone>], [<fluid:minecraft:water> * 250], 200);
<recipetype:create:mixing>.addRecipe("create_mixing/crushed_manyullyn", hcSuperheated, [<item:contenttweaker:tconstruct/crushed_manyullyn> * 4], [<item:contenttweaker:tconstruct/crushed_cobalt_ore> * 3, <item:contenttweaker:tconstruct/crushed_ancient_debris>]);
<recipetype:create:mixing>.addRecipe("create_mixing/crushed_queens_slime", hcSuperheated, [<item:contenttweaker:tconstruct/crushed_queens_slime> * 2], [<item:minecraft:magma_cream> , <item:create:crushed_raw_gold>, <item:contenttweaker:tconstruct/crushed_cobalt_ore>]);
<recipetype:create:mixing>.addRecipe("create_mixing/crushed_pig_iron", hcHeated, [<item:contenttweaker:tconstruct/crushed_pig_iron> * 2], [<item:create:crushed_raw_iron> , <item:tconstruct:blood_slime_ball>, <item:minecraft:clay_ball>]);
<recipetype:create:mixing>.addRecipe("create_mixing/crushed_refined_glowstone", hcSuperheated, [<item:contenttweaker:mekanism/crushed_refined_glowstone> * 8], [<item:create:crushed_raw_osmium> * 8, <item:minecraft:glowstone_dust> * 8]);
<recipetype:create:mixing>.addRecipe("create_mixing/crushed_refined_obsidian", hcSuperheated, [<item:contenttweaker:mekanism/crushed_refined_obsidian> * 8], [<item:create:crushed_raw_osmium> * 8, <item:create:powdered_obsidian> * 8, <item:mekanism:enriched_diamond>]);
<recipetype:create:mixing>.addRecipe("create_mixing/crushed_rose_gold", hcHeated, [<item:contenttweaker:tconstruct/crushed_rose_gold> * 4], [<item:create:crushed_raw_copper> * 3, <item:create:crushed_raw_gold>]);
<recipetype:create:mixing>.addRecipe("create_mixing/crushed_slimesteel", hcHeated, [<item:contenttweaker:tconstruct/crushed_slimesteel> * 2], [<item:create:crushed_raw_iron> , <item:tconstruct:grout>, <item:tconstruct:sky_slime_ball>]);
<recipetype:create:mixing>.addRecipe("create_mixing/crushed_steel", hcHeated, [<item:contenttweaker:mekanism/crushed_steel> * 4], [<item:create:crushed_raw_iron> * 4, <item:mekanism:enriched_carbon>]);
<recipetype:create:mixing>.addRecipe("create_mixing/dragonsteel_ingot", hcHeated, [<item:thermal_extra:dragonsteel_ingot>], [<item:thermal:apatite> * 2, <item:minecraft:dragon_breath> * 3, <item:minecraft:netherite_ingot>]);
<recipetype:create:mixing>.addRecipe("create_mixing/gilded_blackstone", hcSuperheated, [<item:minecraft:gilded_blackstone>], [<tag:items:forge:ingots/gold> * 2, <item:minecraft:blackstone>]);
<recipetype:create:mixing>.addRecipe("create_mixing/latex_from_dandelion", hcNone, [<fluid:thermal:latex> * 100], [<item:minecraft:dandelion>], [<fluid:minecraft:water> * 50], 200);
<recipetype:create:mixing>.addRecipe("create_mixing/latex_from_vine", hcNone, [<fluid:thermal:latex> * 100], [<item:minecraft:vine>], [<fluid:minecraft:water> * 50], 200);
<recipetype:create:mixing>.addRecipe("create_mixing/molten_brass", hcHeated, [<fluid:tconstruct:molten_brass> * 180], [<item:minecraft:air>], [<fluid:tconstruct:molten_zinc> * 90, <fluid:tconstruct:molten_copper> * 90], 280);
<recipetype:create:mixing>.addRecipe("create_mixing/prismarine_ingot_alloy", hcHeated, [<item:contenttweaker:create/prismarine_ingot_alloy>], [<item:minecraft:copper_ingot>, <item:minecraft:prismarine_shard> * 2]);
<recipetype:create:mixing>.addRecipe("create_mixing/shellite_ingot", hcHeated, [<item:thermal_extra:shellite_ingot>], [<item:thermal:apatite>, <item:minecraft:shulker_shell> * 2, <item:thermal:bronze_ingot>]);
<recipetype:create:mixing>.addRecipe("create_mixing/shroomlight", hcNone, [<item:minecraft:shroomlight>], [<tag:items:forge:dusts/glowstone> * 4, <item:minecraft:nether_wart_block>]);
<recipetype:create:mixing>.addRecipe("create_mixing/soul_infused_ingot", hcHeated, [<item:thermal_extra:soul_infused_ingot>], [<item:thermal:apatite>, <item:thermal_extra:soul_sand_dust> * 2, <item:thermal:invar_ingot>]);
<recipetype:create:mixing>.addRecipe("create_mixing/sugar_from_honey", hcHeated, [<item:minecraft:sugar>], [<item:minecraft:air>], [<fluid:create:honey> * 50], 300);
<recipetype:create:mixing>.addRecipe("create_mixing/twinite_ingot", hcHeated, [<item:thermal_extra:twinite_ingot>], [<item:thermal:apatite>, <item:minecraft:amethyst_shard> * 2, <item:thermal:enderium_ingot>]);

// Sand Paper Polishing
<recipetype:create:sandpaper_polishing>.addRecipe("create_sandpaper_polishing/flint_shard_from_flint", <item:contenttweaker:create/flint_shard>, <item:minecraft:flint>, 100);
<recipetype:create:sandpaper_polishing>.addRecipe("create_sandpaper_polishing/polished_quartz_tine_from_quartz", <item:contenttweaker:create/polished_quartz_tine>, <item:minecraft:quartz>, 100);

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
var splashingDeadCoral = {
	"dead_brain_coral" : "brain_coral",
	"dead_brain_coral_block" : "brain_coral_block",
	"dead_brain_coral_fan" : "brain_coral_fan",
	"dead_bubble_coral" : "bubble_coral",
	"dead_bubble_coral_block" : "bubble_coral_block",
	"dead_bubble_coral_fan" : "bubble_coral_fan",
	"dead_fire_coral" : "fire_coral",
	"dead_fire_coral_block" : "fire_coral_block",
	"dead_fire_coral_fan" : "fire_coral_fan",
	"dead_horn_coral" : "horn_coral",
	"dead_horn_coral_block" : "horn_coral_block",
	"dead_horn_coral_fan" : "horn_coral_fan",
	"dead_tube_coral" : "tube_coral",
	"dead_tube_coral_block" : "tube_coral_block",
	"dead_tube_coral_fan" : "tube_coral_fan"
};
for splashingDeadCoralIn, splashingDeadCoralOut in splashingDeadCoral {
	<recipetype:create:splashing>.addRecipe("create_splashing/" + splashingDeadCoralIn, [<item:minecraft:${splashingDeadCoralOut}>, <item:minecraft:${splashingDeadCoralOut}> % 15], <item:minecraft:${splashingDeadCoralIn}>, 200);
}

var splashingCopperBlock = {
	"oxidized_copper" : "weathered_copper",
	"weathered_copper" : "exposed_copper",
	"exposed_copper" : "copper_block",
	"oxidized_cut_copper" : "weathered_cut_copper",
	"weathered_cut_copper" : "exposed_cut_copper",
	"exposed_cut_copper" : "cut_copper",
	"oxidized_cut_copper_slab" : "weathered_cut_copper_slab",
	"weathered_cut_copper_slab" : "exposed_cut_copper_slab",
	"exposed_cut_copper_slab" : "cut_copper_slab",
	"oxidized_cut_copper_stairs" : "weathered_cut_copper_stairs",
	"weathered_cut_copper_stairs" : "exposed_cut_copper_stairs",
	"exposed_cut_copper_stairs" : "cut_copper_stairs"
};
for splashingCopperBlockIn, splashingCopperBlockOut in splashingCopperBlock {
	<recipetype:create:splashing>.addRecipe("create_splashing/" + splashingCopperBlockIn, [<item:minecraft:${splashingCopperBlockOut}>], <item:minecraft:${splashingCopperBlockIn}>, 200);
}

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
<recipetype:create:splashing>.addRecipe("create_splashing/flint", [<item:minecraft:prismarine_shard> % 25], <item:minecraft:flint>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/flint_shard", [<item:minecraft:prismarine_shard> % 50], <item:contenttweaker:create/flint_shard>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/nautilus_shell_from_red_sandstone", [<item:minecraft:red_sand>, <item:minecraft:nautilus_shell> % 5], <item:minecraft:red_sandstone>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/nautilus_shell_from_sandstone", [<item:minecraft:sand>, <item:minecraft:nautilus_shell> % 2], <item:minecraft:sandstone>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/oil_sand", [<item:thermal:bitumen> % 50, <item:minecraft:clay_ball> % 25], <item:thermal:oil_sand>, 200);
<recipetype:create:splashing>.addRecipe("create_splashing/oil_red_sand", [<item:thermal:bitumen> % 50, (<item:minecraft:gold_nugget> * 3) % 12, <item:minecraft:dead_bush> % 5], <item:thermal:oil_red_sand>, 200);

Globals.endScript("recipe_create");