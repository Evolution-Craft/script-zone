/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Custom Item.
 * v0.2 : Add Custom Ingot.
 * v0.2 : Add Custom Rods.
 */

println("Start script recipe_evolution_part.");
println("Script Priority Null.");
println("Loader Content Tweaker.");

#loader contenttweaker

import contenttweaker.builder.vanilla.item.Basic;
import contenttweaker.object.vanilla.property.StandardItemProperties;

val evolutionCreativeTab = <factory:creative_tab>.create("evolutionTab", <item:minecraft:paper>);
val evolutionTab = <tab:evolutionTab>;

// Part
val common_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("common_part");

val uncommon_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:uncommon>)
	.build("uncommon_part");

val rare_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:rare>)
	.build("rare_part");

val epic_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:epic>)
	.build("epic_part");

val leggendary_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:epic>)
	.build("leggendary_part");

// Ingot
val lapis_ingot_alloy = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("lapis_ingot_alloy");

val lapis_iron_compound = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("lapis_iron_compound");

val redstone_ingot_alloy = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("redstone_ingot_alloy");

val redstone_iron_compound = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("redstone_iron_compound");

// Ae2 Integration
val crushed_certus_quartz = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("ae2/crushed_certus_quartz");

val crushed_charged_certus_quartz = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("ae2/crushed_charged_certus_quartz");

val crushed_fluix = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("ae2/crushed_fluix");

val crushed_quartz = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("ae2/crushed_quartz");

// Immersive Engineering
val diamond_rod = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("immersiveengineering/diamond_rod");

val emerald_rod = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("immersiveengineering/emerald_rod");

// Mekanism
val crushed_refined_glowstone = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("mekanism/crushed_refined_glowstone");

val crushed_refined_obsidian = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("mekanism/crushed_refined_obsidian");

val crushed_steel = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("mekanism/crushed_steel");

// Tinker Construct
val cobalt_sheet = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/cobalt_sheet");

val crushed_ancient_debris = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/crushed_ancient_debris");

val crushed_cobalt_ore = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/crushed_cobalt_ore");

val crushed_hepatizon = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/crushed_hepatizon");

val crushed_manyullyn = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/crushed_manyullyn");

val crushed_pig_iron = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/crushed_pig_iron");

val crushed_queens_slime = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/crushed_queens_slime");

val crushed_rose_gold = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/crushed_rose_gold");

val crushed_slimesteel = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/crushed_slimesteel");

val hepatizon_sheet = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/hepatizon_sheet");

val manyullyn_sheet = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/manyullyn_sheet");

val netherite_sheet = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/netherite_sheet");

val pig_iron_sheet = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/pig_iron_sheet");

val queens_slime_sheet = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/queens_slime_sheet");

val rose_gold_sheet = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/rose_gold_sheet");

val slimesteel_sheet = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/slimesteel_sheet");

// Thermal Series
val diamond_plate = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("thermal/diamond_plate");

val emerald_plate = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("thermal/emerald_plate");

val lapis_plate = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("thermal/lapis_plate");

val osmium_plate = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("thermal/osmium_plate");

val quartz_plate = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("thermal/quartz_plate");

val press_rod_die = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("thermal/press_rod_die");

println("End script recipe_evolution_part.");