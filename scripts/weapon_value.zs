/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Adding Value on Knife.
 * v0.2 : Modify Reach Distance attribute on Knife.
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

// All Knife Reach Distance
var addingKnifeReachDistance = [
	"aquaculture:wooden_fillet_knife",
	"aquaculture:stone_fillet_knife",
	"aquaculture:iron_fillet_knife",
	"aquaculture:gold_fillet_knife",
	"aquaculture:diamond_fillet_knife",
	"aquaculture:neptunium_fillet_knife",
	"aquaculturedelight:neptunium_knife",
	"contenttweaker:knife/copper_knife",
	"contenttweaker:knife/steel_knife",
	"croptopia:knife",
	"ends_delight:dragon_egg_shell_knife",
	"ends_delight:purpur_knife",
	"ends_delight:end_stone_knife",
	"ends_delight:dragon_tooth_knife",
	"enlightened_end:adamantite_knife",
	"farmersdelight:flint_knife",
	"farmersdelight:iron_knife",
	"farmersdelight:diamond_knife",
	"farmersdelight:netherite_knife",
	"farmersdelight:golden_knife",
	"galosphere_delight:silver_knife",
	"galosphere_delight:lumiere_knife",
	"galosphere_delight:allurite_knife",
	"twilightdelight:fiery_knife",
	"twilightdelight:ironwood_knife",
	"twilightdelight:knightmetal_knife",
	"twilightdelight:steeleaf_knife",
	"undergardendelight:cloggrum_knife",
	"undergardendelight:frosteel_knife",
	"undergardendelight:utherium_knife",
	"undergardendelight:forgotten_knife"
];
for addingKnifeReachDistanceName in addingKnifeReachDistance {
	<item:${addingKnifeReachDistanceName}>.anyDamage().removeGlobalAttribute(<attribute:forge:reach_distance>, [<constant:minecraft:equipmentslot:mainhand>]);
	<item:${addingKnifeReachDistanceName}>.anyDamage().addGlobalAttributeModifier(<attribute:forge:reach_distance>, "reach_distance", -1.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
}

Globals.endScript("weapon_value");