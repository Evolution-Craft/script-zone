/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Value on Knife.
 */

Globals.startScript("weapon_value");
Globals.priorityScript("Null");

import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;

// Copper Knife
<item:contenttweaker:knife/copper_knife>.anyDamage().removeGlobalAttribute(<attribute:minecraft:generic.attack_damage>, [<constant:minecraft:equipmentslot:mainhand>]);
<item:contenttweaker:knife/copper_knife>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, IItemStack.BASE_ATTACK_DAMAGE_UUID, "generic.attack_damage", 2.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:contenttweaker:knife/copper_knife>.anyDamage().removeGlobalAttribute(<attribute:minecraft:generic.attack_speed>, [<constant:minecraft:equipmentslot:mainhand>]);
<item:contenttweaker:knife/copper_knife>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, IItemStack.BASE_ATTACK_SPEED_UUID, "generic.attack_speed", -2.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);

// Steel Knife
<item:contenttweaker:knife/steel_knife>.anyDamage().removeGlobalAttribute(<attribute:minecraft:generic.attack_damage>, [<constant:minecraft:equipmentslot:mainhand>]);
<item:contenttweaker:knife/steel_knife>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, IItemStack.BASE_ATTACK_DAMAGE_UUID, "generic.attack_damage", 3.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:contenttweaker:knife/steel_knife>.anyDamage().removeGlobalAttribute(<attribute:minecraft:generic.attack_speed>, [<constant:minecraft:equipmentslot:mainhand>]);
<item:contenttweaker:knife/steel_knife>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, IItemStack.BASE_ATTACK_SPEED_UUID, "generic.attack_speed", -2.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);

// Knife
<item:croptopia:knife>.anyDamage().removeGlobalAttribute(<attribute:minecraft:generic.attack_damage>, [<constant:minecraft:equipmentslot:mainhand>]);
<item:croptopia:knife>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, IItemStack.BASE_ATTACK_DAMAGE_UUID, "generic.attack_damage", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:croptopia:knife>.anyDamage().removeGlobalAttribute(<attribute:minecraft:generic.attack_speed>, [<constant:minecraft:equipmentslot:mainhand>]);
<item:croptopia:knife>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, IItemStack.BASE_ATTACK_SPEED_UUID, "generic.attack_speed", -2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);

Globals.endScript("weapon_value");