/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Custom Item.
 * v0.2 : Add Custom Ingot.
 * v0.3 : Add Custom Rods.
 * v0.4 : Add Custom Plates.
 * v0.5 : Add Custom Knife.
 * v0.6 : Add Custom Tinkers Food.
 */

println("===============================================================");
println("          Starting Script: evolution_part          ");
println("===============================================================");
println("          Script Priority: Null         ");
println("===============================================================");
println("          Loader Module: Content Tweaker          ");
println("===============================================================");

#loader contenttweaker

import contenttweaker.builder.vanilla.item.Basic;
import contenttweaker.object.vanilla.property.StandardItemProperties;

val evolutionCreativeTab = <factory:creative_tab>.create("evolutionTab", <item:create:experience_nugget>);
val evolutionTab = <tab:evolutionTab>;

// Part
val common_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.fireResistant(true)
	.build("common_part");

val common_part_middle = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.fireResistant(true)
	.build("common_part_middle");

val uncommon_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:uncommon>)
	.fireResistant(true)
	.build("uncommon_part");

val rare_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:rare>)
	.fireResistant(true)
	.build("rare_part");

val epic_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:epic>)
	.fireResistant(true)
	.build("epic_part");

val leggendary_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:epic>)
	.fireResistant(true)
	.build("leggendary_part");

val mythic_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:epic>)
	.fireResistant(true)
	.build("mythic_part");

val relic_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:epic>)
	.fireResistant(true)
	.build("relic_part");

val masterwork_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:epic>)
	.fireResistant(true)
	.build("masterwork_part");

val eternal_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:epic>)
	.fireResistant(true)
	.build("eternal_part");

val ultimate_part = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:epic>)
	.fireResistant(true)
	.build("ultimate_part");

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

// Coin
val coin_common = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.fireResistant(true)
	.build("coin_common");

val coin_rare = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:uncommon>)
	.fireResistant(true)
	.build("coin_rare");

val coin_legendary = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:rare>)
	.fireResistant(true)
	.build("coin_legendary");

val coin_mythic = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:epic>)
	.fireResistant(true)
	.build("coin_mythic");

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

// Knife
val copper_knife = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.durability(150)
	.build("knife/copper_knife");

val steel_knife = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.durability(484)
	.build("knife/steel_knife");

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

val pig_iron_sheet = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/pig_iron_sheet");

val queens_slime_sheet = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/queens_slime_sheet");

val slimesteel_sheet = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.build("tconstruct/slimesteel_sheet");

val blood_cake_slice = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.canAlwaysEat(true)
	.nutrition(2)
	.saturationMod(0.5)
	.build("tconstruct/delight/blood_cake_slice");

val crimson_broth = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.canAlwaysEat(true)
	.nutrition(2)
	.saturationMod(1)
	.build("tconstruct/delight/crimson_broth");

val earthslime_cake_slice = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.canAlwaysEat(true)
	.nutrition(2)
	.saturationMod(0.5)
	.build("tconstruct/delight/earthslime_cake_slice");

val enderslime_cake_slice = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.canAlwaysEat(true)
	.nutrition(2)
	.saturationMod(0.5)
	.build("tconstruct/delight/enderslime_cake_slice");

val enderslime_pudding = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.canAlwaysEat(true)
	.nutrition(4)
	.saturationMod(1)
	.build("tconstruct/delight/enderslime_pudding");

val ichor_salad = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.canAlwaysEat(true)
	.nutrition(4)
	.saturationMod(1)
	.build("tconstruct/delight/ichor_salad");

val magma_cake_slice = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.canAlwaysEat(true)
	.nutrition(2)
	.saturationMod(0.5)
	.build("tconstruct/delight/magma_cake_slice");

val skyslime_cake_slice = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.canAlwaysEat(true)
	.nutrition(2)
	.saturationMod(0.5)
	.build("tconstruct/delight/skyslime_cake_slice");

val skyslime_sweets = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.canAlwaysEat(true)
	.nutrition(1)
	.saturationMod(0.5)
	.build("tconstruct/delight/skyslime_sweets");

val tinkers_stew = <factory:item>.typed<Basic>()
	.tab(evolutionTab)
	.rarity(<constant:minecraft:item/rarity:common>)
	.canAlwaysEat(true)
	.nutrition(4)
	.saturationMod(1)
	.build("tconstruct/delight/tinkers_stew");

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

println("===============================================================");
println("          Ending Script: evolution_part          ");
println("===============================================================");