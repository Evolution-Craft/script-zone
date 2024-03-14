/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Lapis Lazuli Armor Upgrade.
 */

println("Start script armor_value.");
println("Script Priority Null.");

import crafttweaker.api.entity.attribute.AttributeOperation;

// Lapis Lazuli
<item:mekanismtools:lapis_lazuli_helmet>.anyDamage().removeGlobalAttribute(<attribute:minecraft:generic.armor>, [<constant:minecraft:equipmentslot:head>]);
<item:mekanismtools:lapis_lazuli_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "generic.armor", 2.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:mekanismtools:lapis_lazuli_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "generic.armor_toughness", 1.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:mekanismtools:lapis_lazuli_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "generic.armor_toughness", 1.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:mekanismtools:lapis_lazuli_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "generic.armor_toughness", 1.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:mekanismtools:lapis_lazuli_boots>.anyDamage().removeGlobalAttribute(<attribute:minecraft:generic.armor>, [<constant:minecraft:equipmentslot:feet>]);
<item:mekanismtools:lapis_lazuli_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "generic.armor", 2.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:mekanismtools:lapis_lazuli_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "generic.armor_toughness", 1.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

println("End script armor_value.");