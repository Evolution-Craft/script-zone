/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("pack_mod_expert_recipe_toms_storage");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

if (packModeSetting.packModeSettingTomsStorage() == true) {

	Globals.packExpertScript("Tom's Storage - Active");

	// Shapeless
	craftingTable.removeByName("toms_storage:inventory_cable");
	craftingTable.addShapeless("pack_expert_crafting_toms_storage/inventory_cable", <toms_storage:ts.inventory_cable> * 8, [<item:create:brass_sheet>, <item:minecraft:dried_kelp>]);
	craftingTable.removeByName("toms_storage:inventory_cable_connector");
	craftingTable.addShapeless("pack_expert_crafting_toms_storage/inventory_cable_connector", <toms_storage:ts.inventory_cable_connector>, [<item:toms_storage:ts.inventory_cable>, <item:create:chute>]);
	craftingTable.removeByName("toms_storage:level_emitter");
	craftingTable.addShapeless("pack_expert_crafting_toms_storage/level_emitter", <toms_storage:ts.level_emitter>, [<item:create:content_observer>, <item:toms_storage:ts.inventory_cable>, <item:minecraft:redstone_torch>]);
	craftingTable.removeByName("toms_storage:inventory_proxy");
	craftingTable.addShapeless("pack_expert_crafting_toms_storage/inventory_proxy", <toms_storage:ts.inventory_proxy>, [<item:toms_storage:ts.inventory_connector>, <item:create:smart_chute>]);

	// Shaped
	craftingTable.removeByName("toms_storage:inventory_cable_connector_filtered");
	craftingTable.addShaped("pack_expert_crafting_toms_storage/inventory_cable_connector_filtered", <item:toms_storage:ts.inventory_cable_connector_filtered>, [
		[<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:toms_storage:ts.inventory_cable_connector>, <item:minecraft:air>],
		[<item:minecraft:air>, <tag:items:forge:plates/brass>, <item:minecraft:air>]
	]);

	craftingTable.removeByName("toms_storage:inventory_cable_framed");
	craftingTable.addShaped("pack_expert_crafting_toms_storage/inventory_cable_framed", <item:toms_storage:ts.inventory_cable_framed>, [
		[<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>],
		[<tag:items:forge:rods/wooden>, <item:toms_storage:ts.inventory_cable>, <tag:items:forge:rods/wooden>],
		[<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>]
	]);

	craftingTable.removeByName("toms_storage:inventory_cable_connector_framed");
	craftingTable.addShaped("pack_expert_crafting_toms_storage/inventory_cable_connector_framed", <item:toms_storage:ts.inventory_cable_connector_framed>, [
		[<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>],
		[<tag:items:forge:rods/wooden>, <item:toms_storage:ts.inventory_cable_connector>, <tag:items:forge:rods/wooden>],
		[<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>]
	]);

	craftingTable.removeByName("toms_storage:inventory_connector");
	craftingTable.addShaped("pack_expert_crafting_toms_storage/inventory_connector", <item:toms_storage:ts.inventory_connector>, [
		[<item:create:brass_casing>, <item:minecraft:comparator>, <item:create:brass_casing>],
		[<item:create:chute>, <tag:items:forge:gems/diamond>, <item:create:chute>],
		[<item:create:brass_casing>, <tag:items:forge:ender_pearls>, <item:create:brass_casing>]
	]);

	craftingTable.removeByName("toms_storage:inventory_hopper_basic");
	craftingTable.addShaped("pack_expert_crafting_toms_storage/inventory_hopper_basic", <item:toms_storage:ts.inventory_hopper_basic>, [
		[<item:create:brass_casing>, <item:toms_storage:ts.inventory_cable>, <item:create:brass_casing>],
		[<item:minecraft:air>, <item:create:smart_chute>, <item:minecraft:air>],
		[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
	]);

	craftingTable.removeByName("toms_storage:storage_terminal");
	craftingTable.addShaped("pack_expert_crafting_toms_storage/storage_terminal", <item:toms_storage:ts.storage_terminal>, [
		[<item:minecraft:air>, <item:create:precision_mechanism>, <item:minecraft:air>],
		[<item:create:content_observer>, <item:create:display_link>, <item:create:display_board>],
		[<item:minecraft:buttons>, <item:minecraft:buttons>, <item:minecraft:buttons>]
	]);

	craftingTable.removeByName("toms_storage:trim");
	craftingTable.addShaped("pack_expert_crafting_toms_storage/trim", <item:toms_storage:ts.trim> * 2, [
		[<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>],
		[<tag:items:forge:rods/wooden>, <item:create:brass_tunnel>, <tag:items:forge:rods/wooden>],
		[<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>]
	]);

	craftingTable.removeByName("toms_storage:wireless_terminal");
	craftingTable.addShaped("pack_expert_crafting_toms_storage/wireless_terminal", <item:toms_storage:ts.wireless_terminal>, [
		[<item:create:brass_casing>, <item:minecraft:comparator>, <item:create:brass_casing>],
		[<item:minecraft:spyglass>, <item:minecraft:glowstone>, <tag:items:forge:glass>],
		[<item:create:brass_casing>, <tag:items:forge:ender_pearls>, <item:create:brass_casing>]
	]);

	// Mechanical Crafter
	craftingTable.removeByName("toms_storage:crafting_terminal");
	<recipetype:create:mechanical_crafting>.addRecipe("pack_expert_crafting_toms_storage/crafting_terminal", <item:toms_storage:ts.crafting_terminal>, [
		[<item:minecraft:air>, <item:toms_storage:ts.storage_terminal>, <item:minecraft:air>], 
		[<item:create:mechanical_crafter>, <item:create:mechanical_crafter>, <item:create:mechanical_crafter>],
		[<item:create:mechanical_crafter>, <item:create:mechanical_crafter>, <item:create:mechanical_crafter>],
		[<item:create:mechanical_crafter>, <item:create:mechanical_crafter>, <item:create:mechanical_crafter>],
		[<item:create:sturdy_sheet>, <item:create:precision_mechanism>, <item:create:linked_controller>]
	]);
}

Globals.endScript("pack_mod_expert_recipe_toms_storage");