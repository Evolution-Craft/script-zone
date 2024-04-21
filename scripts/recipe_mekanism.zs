/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Fix Salt.
 * v0.2 : Add Missing Precision Sawmill Recipe.
 * v0.3 : Add Torch.
 * v0.4 : Adding Towerwood and Thorn.
 * v0.5 : Bio Fuel Update.
 * v0.6 : Adding HOP Graphite dust.
 */

Globals.startScript("recipe_mekanism");
Globals.priorityScript("Null");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;
import mods.mekanism.api.ingredient.ItemStackIngredient;

// Crusher
val mekanism_bio_fuel_crops_quantity = 5;
val mekanism_bio_fuel_flowers_quantity = 5;
val mekanism_bio_fuel_leaves_quantity = 2;
val mekanism_bio_fuel_mushrooms_quantity = 5;
val mekanism_bio_fuel_mushrooms_block_quantity = 7;
val mekanism_bio_fuel_saplings_quantity = 2;
val mekanism_bio_fuel_seeds_quantity = 2;

var addingSeedCrushingMekanism = {
	"croptopia/artichoke" : "croptopia:artichoke",
	"croptopia/asparagus" : "croptopia:asparagus",
	"croptopia/barley" : "croptopia:barley",
	"croptopia/basil" : "croptopia:basil",
	"croptopia/bellpepper" : "croptopia:bellpepper",
	"croptopia/blackbean" : "croptopia:blackbean",
	"croptopia/blackberry" : "croptopia:blackberry",
	"croptopia/blueberry" : "croptopia:blueberry",
	"croptopia/broccoli" : "croptopia:broccoli",
	"croptopia/cabbage" : "croptopia:cabbage",
	"croptopia/cantaloupe" : "croptopia:cantaloupe",
	"croptopia/cauliflower" : "croptopia:cauliflower",
	"croptopia/celery" : "croptopia:celery",
	"croptopia/chile_pepper" : "croptopia:chile_pepper",
	"croptopia/coffee" : "croptopia:coffee",
	"croptopia/corn" : "croptopia:corn",
	"croptopia/cranberry" : "croptopia:cranberry",
	"croptopia/cucumber" : "croptopia:cucumber",
	"croptopia/currant" : "croptopia:currant",
	"croptopia/eggplant" : "croptopia:eggplant",
	"croptopia/elderberry" : "croptopia:elderberry",
	"croptopia/garlic" : "croptopia:garlic",
	"croptopia/ginger" : "croptopia:ginger",
	"croptopia/grape" : "croptopia:grape",
	"croptopia/greenbean" : "croptopia:greenbean",
	"croptopia/greenonion" : "croptopia:greenonion",
	"croptopia/honeydew" : "croptopia:honeydew",
	"croptopia/hops" : "croptopia:hops",
	"croptopia/kale" : "croptopia:kale",
	"croptopia/kiwi" : "croptopia:kiwi",
	"croptopia/leek" : "croptopia:leek",
	"croptopia/lettuce" : "croptopia:lettuce",
	"croptopia/mustard" : "croptopia:mustard",
	"croptopia/oat" : "croptopia:oat",
	"croptopia/olive" : "croptopia:olive",
	"croptopia/onion" : "croptopia:onion",
	"croptopia/peanut" : "croptopia:peanut",
	"croptopia/pepper" : "croptopia:pepper",
	"croptopia/pineapple" : "croptopia:pineapple",
	"croptopia/radish" : "croptopia:radish",
	"croptopia/raspberry" : "croptopia:raspberry",
	"croptopia/rhubarb" : "croptopia:rhubarb",
	"croptopia/rice" : "croptopia:rice",
	"croptopia/rutabaga" : "croptopia:rutabaga",
	"croptopia/saguaro" : "croptopia:saguaro",
	"croptopia/soybean" : "croptopia:soybean",
	"croptopia/spinach" : "croptopia:spinach",
	"croptopia/squash" : "croptopia:squash",
	"croptopia/strawberry" : "croptopia:strawberry",
	"croptopia/sweetpotato" : "croptopia:sweetpotato",
	"croptopia/tea" : "croptopia:tea",
	"croptopia/tomatillo" : "croptopia:tomatillo",
	"croptopia/tomato" : "croptopia:tomato",
	"croptopia/turmeric" : "croptopia:turmeric",
	"croptopia/turnip" : "croptopia:turnip",
	"croptopia/yam" : "croptopia:yam",
	"croptopia/zucchini" : "croptopia:zucchini",
	"ecologics/coconut" : "ecologics:coconut",
	"immersiveengineering/seed" : "immersiveengineering:seed"

};
for addingSeedCrushingMekanismName, addingSeedCrushingMekanismMod in addingSeedCrushingMekanism {
	if (addingSeedCrushingMekanismName == "immersiveengineering/seed") {
		<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingSeedCrushingMekanismName, ItemStackIngredient.from(<item:${addingSeedCrushingMekanismMod}>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_seeds_quantity);
	} else if (addingSeedCrushingMekanismName == "ecologics/coconut") {
		<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingSeedCrushingMekanismName + "_seedling", ItemStackIngredient.from(<item:${addingSeedCrushingMekanismMod}_seedling>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_seeds_quantity);
		<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingSeedCrushingMekanismName, ItemStackIngredient.from(<item:${addingSeedCrushingMekanismMod}>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_crops_quantity);
	} else {
		<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingSeedCrushingMekanismName + "_seed", ItemStackIngredient.from(<item:${addingSeedCrushingMekanismMod}_seed>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_seeds_quantity);
		<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingSeedCrushingMekanismName, ItemStackIngredient.from(<item:${addingSeedCrushingMekanismMod}>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_crops_quantity);
	}
}

var addingSeedsCrushingMekanism = {
	"croptopia/vanilla" : "croptopia:vanilla",
	"corn_delight/corn" : "corn_delight:corn",
	"enlightened_end/elevibloom" : "enlightened_end:elevibloom",
	"farmersdelight/cabbage" : "farmersdelight:cabbage",
	"farmersdelight/tomato" : "farmersdelight:tomato",
	"supplementaries/flax" : "supplementaries:flax",
	"thermal/amaranth" : "thermal:amaranth",
	"thermal/barley" : "thermal:barley",
	"thermal/bell_pepper" : "thermal:bell_pepper",
	"thermal/coffee" : "thermal:coffee",
	"thermal/corn" : "thermal:corn",
	"thermal/eggplant" : "thermal:eggplant",
	"thermal/flax" : "thermal:flax",
	"thermal/frost_melon" : "thermal:frost_melon",
	"thermal/green_bean" : "thermal:green_bean",
	"thermal/hops" : "thermal:hops",
	"thermal/onion" : "thermal:onion",
	"thermal/peanut" : "thermal:peanut",
	"thermal/radish" : "thermal:radish",
	"thermal/rice" : "thermal:rice",
	"thermal/sadiroot" : "thermal:sadiroot",
	"thermal/spinach" : "thermal:spinach",
	"thermal/strawberry" : "thermal:strawberry",
	"thermal/tea" : "thermal:tea",
	"thermal/tomato" : "thermal:tomato",
	"undergarden/gloomgourd" : "undergarden:gloomgourd",
	"vinery/red_grape" : "vinery:red_grape",
	"vinery/white_grape" : "vinery:white_grape"
};
for addingSeedsCrushingMekanismName, addingSeedsCrushingMekanismMod in addingSeedsCrushingMekanism {
	<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingSeedsCrushingMekanismName + "_seeds", ItemStackIngredient.from(<item:${addingSeedsCrushingMekanismMod}_seeds>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_seeds_quantity);
	<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingSeedsCrushingMekanismName, ItemStackIngredient.from(<item:${addingSeedsCrushingMekanismMod}>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_crops_quantity);
}

<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/jungle_grape_seeds_red", ItemStackIngredient.from(<item:vinery:jungle_grape_seeds_red>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_seeds_quantity);
<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/jungle_grapes_red", ItemStackIngredient.from(<item:vinery:jungle_grapes_red>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_crops_quantity);
<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/jungle_grape_seeds_white", ItemStackIngredient.from(<item:vinery:jungle_grape_seeds_white>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_seeds_quantity);
<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/jungle_grapes_white", ItemStackIngredient.from(<item:vinery:jungle_grapes_white>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_crops_quantity);
<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/savanna_grape_seeds_red", ItemStackIngredient.from(<item:vinery:savanna_grape_seeds_red>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_seeds_quantity);
<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/savanna_grapes_red", ItemStackIngredient.from(<item:vinery:savanna_grapes_red>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_crops_quantity);
<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/savanna_grape_seeds_white", ItemStackIngredient.from(<item:vinery:savanna_grape_seeds_white>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_seeds_quantity);
<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/savanna_grapes_white", ItemStackIngredient.from(<item:vinery:savanna_grapes_white>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_crops_quantity);
<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/taiga_grape_seeds_red", ItemStackIngredient.from(<item:vinery:taiga_grape_seeds_red>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_seeds_quantity);
<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/taiga_grape_red", ItemStackIngredient.from(<item:vinery:taiga_grapes_red>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_crops_quantity);
<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/taiga_grape_seeds_white", ItemStackIngredient.from(<item:vinery:taiga_grape_seeds_white>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_seeds_quantity);
<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/vinery/taiga_grape_white", ItemStackIngredient.from(<item:vinery:taiga_grapes_white>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_crops_quantity);

var addingLeavesCrushingMekanism = {
	"botania/horn_leaves" : "botania:horn_leaves",
	"ecologics/coconut_leaves" : "ecologics:coconut_leaves",
	"ecologics/walnut_leaves" : "ecologics:walnut_leaves",
	"integrateddynamics/menril_leaves" : "integrateddynamics:menril_leaves",
	"myrtrees/rubberwood_leaves" : "myrtrees:rubberwood_leaves",
	"mythicbotany/dreamwood_leaves" : "mythicbotany:dreamwood_leaves",
	"naturesaura/ancient_leaves" : "naturesaura:ancient_leaves",
	"naturesaura/decayed_leaves" : "naturesaura:decayed_leaves",
	"naturesaura/golden_leaves" : "naturesaura:golden_leaves",
	"quark/blue_blossom_leaves" : "quark:blue_blossom_leaves",
	"quark/lavender_blossom_leaves" : "quark:lavender_blossom_leaves",
	"quark/orange_blossom_leaves" : "quark:orange_blossom_leaves",
	"quark/pink_blossom_leaves" : "quark:pink_blossom_leaves",
	"quark/red_blossom_leaves" : "quark:red_blossom_leaves",
	"quark/yellow_blossom_leaves" : "quark:yellow_blossom_leaves",
	"tconstruct/earth_slime_leaves" : "tconstruct:earth_slime_leaves",
	"tconstruct/ender_slime_leaves" : "tconstruct:ender_slime_leaves",
	"tconstruct/sky_slime_leaves" : "tconstruct:sky_slime_leaves",
	"twilightforest/beanstalk_leaves" : "twilightforest:beanstalk_leaves",
	"twilightforest/canopy_leaves" : "twilightforest:canopy_leaves",
	"twilightforest/dark_leaves" : "twilightforest:dark_leaves",
	"twilightforest/fallen_leaves" : "twilightforest:fallen_leaves",
	"twilightforest/giant_leaves" : "twilightforest:giant_leaves",
	"twilightforest/mangrove_leaves" : "twilightforest:mangrove_leaves",
	"twilightforest/mining_leaves" : "twilightforest:mining_leaves",
	"twilightforest/rainbow_oak_leaves" : "twilightforest:rainbow_oak_leaves",
	"twilightforest/sorting_leaves" : "twilightforest:sorting_leaves",
	"twilightforest/thorn_leaves" : "twilightforest:thorn_leaves",
	"twilightforest/time_leaves" : "twilightforest:time_leaves",
	"twilightforest/transformation_leaves" : "twilightforest:transformation_leaves",
	"twilightforest/twilight_oak_leaves" : "twilightforest:twilight_oak_leaves",
	"undergarden/grongle_leaves" : "undergarden:grongle_leaves",
	"undergarden/hanging_grongle_leaves" : "undergarden:hanging_grongle_leaves",
	"undergarden/smogstem_leaves" : "undergarden:smogstem_leaves",
	"undergarden/wigglewood_leaves" : "undergarden:wigglewood_leaves",
	"vinery/cherry_leaves" : "vinery:cherry_leaves"
};
for addingLeavesCrushingMekanismName, addingLeavesCrushingMekanismMod in addingLeavesCrushingMekanism {
	<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingLeavesCrushingMekanismName, ItemStackIngredient.from(<item:${addingLeavesCrushingMekanismMod}>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_leaves_quantity);
}

var addingSaplingsCrushingMekanism = {
	"croptopia/almond_sapling" : "croptopia:almond_sapling",
	"croptopia/apple_sapling" : "croptopia:apple_sapling",
	"croptopia/apricot_sapling" : "croptopia:apricot_sapling",
	"croptopia/avocado_sapling" : "croptopia:avocado_sapling",
	"croptopia/banana_sapling" : "croptopia:banana_sapling",
	"croptopia/cashew_sapling" : "croptopia:cashew_sapling",
	"croptopia/cherry_sapling" : "croptopia:cherry_sapling",
	"croptopia/coconut_sapling" : "croptopia:coconut_sapling",
	"croptopia/date_sapling" : "croptopia:date_sapling",
	"croptopia/dragonfruit_sapling" : "croptopia:dragonfruit_sapling",
	"croptopia/fig_sapling" : "croptopia:fig_sapling",
	"croptopia/grapefruit_sapling" : "croptopia:grapefruit_sapling",
	"croptopia/kumquat_sapling" : "croptopia:kumquat_sapling",
	"croptopia/lemon_sapling" : "croptopia:lemon_sapling",
	"croptopia/lime_sapling" : "croptopia:lime_sapling",
	"croptopia/mango_sapling" : "croptopia:mango_sapling",
	"croptopia/nectarine_sapling" : "croptopia:nectarine_sapling",
	"croptopia/nutmeg_sapling" : "croptopia:nutmeg_sapling",
	"croptopia/orange_sapling" : "croptopia:orange_sapling",
	"croptopia/peach_sapling" : "croptopia:peach_sapling",
	"croptopia/pear_sapling" : "croptopia:pear_sapling",
	"croptopia/pecan_sapling" : "croptopia:pecan_sapling",
	"croptopia/persimmon_sapling" : "croptopia:persimmon_sapling",
	"croptopia/plum_sapling" : "croptopia:plum_sapling",
	"croptopia/starfruit_sapling" : "croptopia:starfruit_sapling",
	"croptopia/walnut_sapling" : "croptopia:walnut_sapling",
	"croptopia/cinnamon_sapling" : "croptopia:cinnamon_sapling",
	"ecologics/walnut_sapling" : "ecologics:walnut_sapling",
	"quark/blue_blossom_sapling" : "quark:blue_blossom_sapling",
	"quark/lavender_blossom_sapling" : "quark:lavender_blossom_sapling",
	"quark/orange_blossom_sapling" : "quark:orange_blossom_sapling",
	"quark/pink_blossom_sapling" : "quark:pink_blossom_sapling",
	"quark/red_blossom_sapling" : "quark:red_blossom_sapling",
	"quark/yellow_blossom_sapling" : "quark:yellow_blossom_sapling",
	"simplytea/tea_sapling" : "simplytea:tea_sapling",
	"myrtrees/rubberwood_sapling" : "myrtrees:rubberwood_sapling",
	"tconstruct/blood_slime_sapling" : "tconstruct:blood_slime_sapling",
	"tconstruct/earth_slime_sapling" : "tconstruct:earth_slime_sapling",
	"tconstruct/ender_slime_sapling" : "tconstruct:ender_slime_sapling",
	"tconstruct/sky_slime_sapling" : "tconstruct:sky_slime_sapling",
	"twilightforest/canopy_sapling" : "twilightforest:canopy_sapling",
	"twilightforest/darkwood_sapling" : "twilightforest:darkwood_sapling",
	"twilightforest/hollow_oak_sapling" : "twilightforest:hollow_oak_sapling",
	"twilightforest/mangrove_sapling" : "twilightforest:mangrove_sapling",
	"twilightforest/mining_sapling" : "twilightforest:mining_sapling",
	"twilightforest/rainbow_oak_sapling" : "twilightforest:rainbow_oak_sapling",
	"twilightforest/sorting_sapling" : "twilightforest:sorting_sapling",
	"twilightforest/time_sapling" : "twilightforest:time_sapling",
	"twilightforest/transformation_sapling" : "twilightforest:transformation_sapling",
	"twilightforest/twilight_oak_sapling" : "twilightforest:twilight_oak_sapling",
	"undergarden/grongle_sapling" : "undergarden:grongle_sapling",
	"undergarden/smogstem_sapling" : "undergarden:smogstem_sapling",
	"undergarden/wigglewood_sapling" : "undergarden:wigglewood_sapling",
	"vinery/cherry_sapling" : "vinery:cherry_sapling",
	"vinery/old_cherry_sapling" : "vinery:old_cherry_sapling"
};
for addingSaplingsCrushingMekanismName, addingSaplingsCrushingMekanismMod in addingSaplingsCrushingMekanism {
	<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingSaplingsCrushingMekanismName, ItemStackIngredient.from(<item:${addingSaplingsCrushingMekanismMod}>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_saplings_quantity);
}

var addingMushroomsCrushingMekanism = {
	"botania/black_mushroom" : "botania:black_mushroom",
	"botania/blue_mushroom" : "botania:blue_mushroom",
	"botania/brown_mushroom" : "botania:brown_mushroom",
	"botania/cyan_mushroom" : "botania:cyan_mushroom",
	"botania/gray_mushroom" : "botania:gray_mushroom",
	"botania/green_mushroom" : "botania:green_mushroom",
	"botania/magenta_mushroom" : "botania:magenta_mushroom",
	"botania/light_blue_mushroom" : "botania:light_blue_mushroom",
	"botania/light_gray_mushroom" : "botania:light_gray_mushroom",
	"botania/lime_mushroom" : "botania:lime_mushroom",
	"botania/orange_mushroom" : "botania:orange_mushroom",
	"botania/red_mushroom" : "botania:red_mushroom",
	"botania/pink_mushroom" : "botania:pink_mushroom",
	"botania/purple_mushroom" : "botania:purple_mushroom",
	"botania/yellow_mushroom" : "botania:yellow_mushroom",
	"botania/white_mushroom" : "botania:white_mushroom",
	"farmersdelight/brown_mushroom_colony" : "farmersdelight:brown_mushroom_colony",
	"farmersdelight/red_mushroom_colony" : "farmersdelight:red_mushroom_colony",
	"naturesaura/aura_mushroom" : "naturesaura:aura_mushroom",
	"naturesaura/crimson_aura_mushroom" : "naturesaura:crimson_aura_mushroom",
	"naturesaura/warped_aura_mushroom" : "naturesaura:warped_aura_mushroom",
	"twilightforest/mushgloom" : "twilightforest:mushgloom",
	"undergarden/blood_mushroom" : "undergarden:blood_mushroom",
	"undergarden/indigo_mushroom" : "undergarden:indigo_mushroom",
	"undergarden/ink_mushroom" : "undergarden:ink_mushroom",
	"undergarden/veil_mushroom" : "undergarden:veil_mushroom"
};
for addingMushroomsCrushingMekanismName, addingMushroomsCrushingMekanismMod in addingMushroomsCrushingMekanism {
	<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingMushroomsCrushingMekanismName, ItemStackIngredient.from(<item:${addingMushroomsCrushingMekanismMod}>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_mushrooms_quantity);
}

var addingMushroomsBlockCrushingMekanism = {
	"naturesaura/nether_wart_mushroom" : "naturesaura:nether_wart_mushroom",
	"twilightforest/huge_mushgloom" : "twilightforest:huge_mushgloom",
	"twilightforest/huge_mushgloom_stem" : "twilightforest:huge_mushgloom_stem",
	"undergarden/blood_mushroom_cap" : "undergarden:blood_mushroom_cap",
	"undergarden/blood_mushroom_globule" : "undergarden:blood_mushroom_globule",
	"undergarden/blood_mushroom_stalk" : "undergarden:blood_mushroom_stalk",
	"undergarden/indigo_mushroom_cap" : "undergarden:indigo_mushroom_cap",
	"undergarden/indigo_mushroom_stalk" : "undergarden:indigo_mushroom_stalk",
	"undergarden/ink_mushroom_cap" : "undergarden:ink_mushroom_cap",
	"undergarden/veil_mushroom_cap" : "undergarden:veil_mushroom_cap",
	"undergarden/veil_mushroom_stalk" : "undergarden:veil_mushroom_stalk"
};
for addingMushroomsBlockCrushingMekanismName, addingMushroomsBlockCrushingMekanismMod in addingMushroomsBlockCrushingMekanism {
	<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingMushroomsBlockCrushingMekanismName, ItemStackIngredient.from(<item:${addingMushroomsBlockCrushingMekanismMod}>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_mushrooms_block_quantity);
}

var addingFlowersCrushingMekanism = {
	"botania/black_double_flower" : "botania:black_double_flower",
	"botania/blue_double_flower" : "botania:blue_double_flower",
	"botania/brown_double_flower" : "botania:brown_double_flower",
	"botania/cyan_double_flower" : "botania:cyan_double_flower",
	"botania/gray_double_flower" : "botania:gray_double_flower",
	"botania/green_double_flower" : "botania:green_double_flower",
	"botania/light_blue_double_flower" : "botania:light_blue_double_flower",
	"botania/light_gray_double_flower" : "botania:light_gray_double_flower",
	"botania/lime_double_flower" : "botania:lime_double_flower",
	"botania/magenta_double_flower" : "botania:magenta_double_flower",
	"botania/orange_double_flower" : "botania:orange_double_flower",
	"botania/pink_double_flower" : "botania:pink_double_flower",
	"botania/purple_double_flower" : "botania:purple_double_flower",
	"botania/red_double_flower" : "botania:red_double_flower",
	"botania/yellow_double_flower" : "botania:yellow_double_flower",
	"botania/white_double_flower" : "botania:white_double_flower",
	"botania/black_mystical_flower" : "botania:black_mystical_flower",
	"botania/blue_mystical_flower" : "botania:blue_mystical_flower",
	"botania/brown_mystical_flower" : "botania:brown_mystical_flower",
	"botania/cyan_mystical_flower" : "botania:cyan_mystical_flower",
	"botania/gray_mystical_flower" : "botania:gray_mystical_flower",
	"botania/green_mystical_flower" : "botania:green_mystical_flower",
	"botania/light_blue_mystical_flower" : "botania:light_blue_mystical_flower",
	"botania/light_gray_mystical_flower" : "botania:light_gray_mystical_flower",
	"botania/lime_mystical_flower" : "botania:lime_mystical_flower",
	"botania/magenta_mystical_flower" : "botania:magenta_mystical_flower",
	"botania/orange_mystical_flower" : "botania:orange_mystical_flower",
	"botania/pink_mystical_flower" : "botania:pink_mystical_flower",
	"botania/purple_mystical_flower" : "botania:purple_mystical_flower",
	"botania/red_mystical_flower" : "botania:red_mystical_flower",
	"botania/yellow_mystical_flower" : "botania:yellow_mystical_flower",
	"botania/white_mystical_flower" : "botania:white_mystical_flower",
	"botania/black_shiny_flower" : "botania:black_shiny_flower",
	"botania/blue_shiny_flower" : "botania:blue_shiny_flower",
	"botania/brown_shiny_flower" : "botania:brown_shiny_flower",
	"botania/cyan_shiny_flower" : "botania:cyan_shiny_flower",
	"botania/gray_shiny_flower" : "botania:gray_shiny_flower",
	"botania/green_shiny_flower" : "botania:green_shiny_flower",
	"botania/light_blue_shiny_flower" : "botania:light_blue_shiny_flower",
	"botania/light_gray_shiny_flower" : "botania:light_gray_shiny_flower",
	"botania/lime_shiny_flower" : "botania:lime_shiny_flower",
	"botania/magenta_shiny_flower" : "botania:magenta_shiny_flower",
	"botania/orange_shiny_flower" : "botania:orange_shiny_flower",
	"botania/pink_shiny_flower" : "botania:pink_shiny_flower",
	"botania/purple_shiny_flower" : "botania:purple_shiny_flower",
	"botania/red_shiny_flower" : "botania:red_shiny_flower",
	"botania/yellow_shiny_flower" : "botania:yellow_shiny_flower",
	"botania/white_shiny_flower" : "botania:white_shiny_flower",
	"cyclic/flower_absalon_tulip" : "cyclic:flower_absalon_tulip",
	"cyclic/flower_cyan" : "cyclic:flower_cyan",
	"cyclic/flower_lime_carnation" : "cyclic:flower_lime_carnation",
	"cyclic/flower_purple_tulip" : "cyclic:flower_purple_tulip",
	"ecologics/azalea_flower" : "ecologics:azalea_flower",
	"enlightened_end/cradling_flower" : "enlightened_end:cradling_flower"
};
for addingFlowersCrushingMekanismName, addingFlowersCrushingMekanismMod in addingFlowersCrushingMekanism {
	<recipetype:mekanism:crushing>.addRecipe("mekanism_cruching/biofuel/" + addingFlowersCrushingMekanismName, ItemStackIngredient.from(<item:${addingFlowersCrushingMekanismMod}>), <item:mekanism:bio_fuel> * mekanism_bio_fuel_flowers_quantity);
}

// Enrichment Chamber
<recipetype:mekanism:enriching>.removeByName("mekanism:enriching/salt");
<recipetype:mekanism:enriching>.addRecipe("mekanism_enriching/salt", ItemStackIngredient.from(<item:salt:salt_block>), <item:salt:salt> * 9);
<recipetype:mekanism:enriching>.addRecipe("mekanism_enriching/hop_graphite_dust_from_dust", ItemStackIngredient.from(<item:immersiveengineering:dust_coke> * 4), <item:immersiveengineering:dust_hop_graphite>);
<recipetype:mekanism:enriching>.addRecipe("mekanism_enriching/hop_graphite_dust_from_petcoke", ItemStackIngredient.from(<item:immersivepetroleum:petcoke_dust> * 4), <item:immersiveengineering:dust_hop_graphite>);

// Precision Sawmill
val mekanism_book_bookshelf_chance = 1;
val mekanism_book_bookshelf_return = 3;
val mekanism_planks_boat_return = 5;
val mekanism_planks_bookshelf_return = 6;
val mekanism_planks_chest_return = 8;
val mekanism_planks_door_return = 2;
val mekanism_planks_fence_gate_return = 2;
val mekanism_planks_log_return = 6;
val mekanism_planks_pressure_plate_return = 2;
val mekanism_planks_trapdoor_return = 3;
val mekanism_planks_trapped_chest_return = 8;
val mekanism_saw_dust_log_chance = 0.25;
val mekanism_saw_dust_log_return = 1;
val mekanism_stick_fence_gate_chance = 1;
val mekanism_stick_fence_gate_return = 4;
val mekanism_tripwire_hook_chest_chance = 0.75;
val mekanism_tripwire_hook_chest_return = 1;

<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/log/ancient", ItemStackIngredient.from(<tag:items:naturesaura:ancient_logs>), <item:naturesaura:ancient_planks> * (mekanism_planks_log_return / 2), <item:thermal:sawdust> * mekanism_saw_dust_log_return, mekanism_saw_dust_log_chance);
<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/log/rubberwood", ItemStackIngredient.from(<item:myrtrees:rubberwood_log>), <item:myrtrees:rubberwood_planks> * mekanism_planks_log_return, <item:thermal:sawdust> * mekanism_saw_dust_log_return, mekanism_saw_dust_log_chance);

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
	"thorn" : "tflostblocks:thorn",							// Door | Fence Gate | Pressure Plate | Trapdoor
	"timewood" : "twilightforest:time",						// Boat | Door | Fence Gate | Pressure Plate | Trapdoor
	"towerwood" : "twilightforest:towerwood",				// Door | Fence Gate | Pressure Plate | Trapdoor
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
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/boat/" + addingSawingMekanismName, ItemStackIngredient.from(<item:twilightdecor:${addingSawingMekanismName}_boat>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_boat_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_door>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_fence_gate_return, <item:minecraft:stick> * mekanism_stick_fence_gate_return, mekanism_stick_fence_gate_chance);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/pressure_plate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_pressure_plate>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_pressure_plate_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_trapdoor>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_trapdoor_return);
	} else if (addingSawingMekanismName == "flowering_azalea") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/boat/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_boat>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_boat_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_door>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_fence_gate_return, <item:minecraft:stick> * mekanism_stick_fence_gate_return, mekanism_stick_fence_gate_chance);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_trapdoor>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_trapdoor_return);
	} else if (addingSawingMekanismName == "bloodshroom" ||
			   addingSawingMekanismName == "cerulean" ||
			   addingSawingMekanismName == "cherry" ||
			   addingSawingMekanismName == "greenheart" ||
			   addingSawingMekanismName == "indigo" ||
			   addingSawingMekanismName == "skyroot") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_door>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_fence_gate_return, <item:minecraft:stick> * mekanism_stick_fence_gate_return, mekanism_stick_fence_gate_chance);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/pressure_plate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_pressure_plate>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_pressure_plate_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_trapdoor>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_trapdoor_return);
	} else if (addingSawingMekanismName == "menril") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_door>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_fence_gate_return, <item:minecraft:stick> * mekanism_stick_fence_gate_return, mekanism_stick_fence_gate_chance);
	} else if (addingSawingMekanismName == "chorus_nest") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_planks_door>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_trapdoor>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_trapdoor_return);
	} else if (addingSawingMekanismName == "chorus_nest_mosaic") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_mosaic> * mekanism_planks_fence_gate_return, <item:minecraft:stick> * mekanism_stick_fence_gate_return, mekanism_stick_fence_gate_chance);
	} else if (addingSawingMekanismName == "thorn") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_door>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_fence_gate_return, <item:minecraft:stick> * mekanism_stick_fence_gate_return, mekanism_stick_fence_gate_chance);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/pressure_plate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_pressure_plate>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_pressure_plate_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_trapdoor>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_trapdoor_return);
	} else if (addingSawingMekanismName == "towerwood") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:tflostblocks:${addingSawingMekanismName}_door>), <item:${addingSawingMekanismMod}> * mekanism_planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:tflostblocks:${addingSawingMekanismName}_fence_gate>), <item:${addingSawingMekanismMod}> * mekanism_planks_fence_gate_return, <item:minecraft:stick> * mekanism_stick_fence_gate_return, mekanism_stick_fence_gate_chance);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/pressure_plate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:tflostblocks:${addingSawingMekanismName}_pressure_plate>), <item:${addingSawingMekanismMod}> * mekanism_planks_pressure_plate_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:tflostblocks:${addingSawingMekanismName}_trapdoor>), <item:${addingSawingMekanismMod}> * mekanism_planks_trapdoor_return);
	} else {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/boat/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_boat>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_boat_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/door/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_door>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_door_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/fence_gate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_fence_gate>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_fence_gate_return, <item:minecraft:stick> * mekanism_stick_fence_gate_return, mekanism_stick_fence_gate_chance);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/pressure_plate/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_pressure_plate>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_pressure_plate_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapdoor/" + addingSawingMekanismName, ItemStackIngredient.from(<item:${addingSawingMekanismMod}_trapdoor>), <item:${addingSawingMekanismMod}_planks> * mekanism_planks_trapdoor_return);
	}
	if (addingSawingMekanismName != "towerwood") {
		<recipetype:mekanism:sawing>.addJsonRecipe("mekanism_sawing/log/" + addingSawingMekanismName, {
			"input": {
				"ingredient": {
					"tag": addingSawingMekanismMod + "_logs"
				}
			},
			"mainOutput": {
				"item": addingSawingMekanismMod + "_planks",
				"count": mekanism_planks_log_return
			},
			"secondaryOutput": {
				"item": "thermal:sawdust",
				"count": mekanism_saw_dust_log_return
			},
			"secondaryChance": mekanism_saw_dust_log_chance
		});
	}
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
	<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/bookshelf/" + addingSawingNameBookshelfMekanism.registryName.path, ItemStackIngredient.from(<item:${addingSawingBookshelfMekanismIn}>), <item:${addingSawingBookshelfMekanismOut}_planks> * mekanism_planks_bookshelf_return, <item:minecraft:book> * mekanism_book_bookshelf_return, mekanism_book_bookshelf_chance);
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
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/chest/" + addingSawingChestMekanismName, ItemStackIngredient.from(<item:${addingSawingChestMekanismId}>), <item:twilightforest:${addingSawingChestMekanismName}_planks> * mekanism_planks_chest_return);
	} else if (addingSawingChestMekanismName == "azalea" || 
			   addingSawingChestMekanismName == "blossom") {
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/chest/" + addingSawingChestMekanismName, ItemStackIngredient.from(<item:${addingSawingChestMekanismId}>), <item:quark:${addingSawingChestMekanismName}_planks> * mekanism_planks_chest_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapped_chest/" + addingSawingChestMekanismName, ItemStackIngredient.from(<item:quark:${addingSawingChestMekanismName}_trapped_chest>), <item:quark:${addingSawingChestMekanismName}_planks> * mekanism_planks_trapped_chest_return, <item:minecraft:tripwire_hook> * mekanism_tripwire_hook_chest_return, mekanism_tripwire_hook_chest_chance);

	} else{
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/chest/" + addingSawingChestMekanismName, ItemStackIngredient.from(<item:${addingSawingChestMekanismId}>), <item:minecraft:${addingSawingChestMekanismName}_planks> * mekanism_planks_chest_return);
		<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/trapped_chest/" + addingSawingChestMekanismName, ItemStackIngredient.from(<item:quark:${addingSawingChestMekanismName}_trapped_chest>), <item:minecraft:${addingSawingChestMekanismName}_planks> * mekanism_planks_trapped_chest_return, <item:minecraft:tripwire_hook> * mekanism_tripwire_hook_chest_return, mekanism_tripwire_hook_chest_chance);
	}
}

<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/torch/bamboo_torch", ItemStackIngredient.from(<item:bambooeverything:bamboo_torch> * 4), <item:minecraft:bamboo>, <item:minecraft:coal>, 1);
<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/torch/dry_bamboo_torch", ItemStackIngredient.from(<item:bambooeverything:dry_bamboo_torch> * 4), <item:bambooeverything:dry_bamboo>, <item:minecraft:coal>, 1);
<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/torch/glow_torch", ItemStackIngredient.from(<item:infernalexp:glow_torch> * 4), <item:minecraft:stick>, <item:infernalexp:glowcoal>, 1);
<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/torch/menril_torch", ItemStackIngredient.from(<item:integrateddynamics:menril_torch> * 4), <item:minecraft:stick>, <item:integrateddynamics:menril_berries>, 1);
<recipetype:mekanism:sawing>.addRecipe("mekanism_sawing/torch/shard_torch", ItemStackIngredient.from(<item:undergarden:shard_torch> * 4), <item:minecraft:stick>, <item:undergarden:utheric_shard>, 1);

Globals.endScript("recipe_mekanism");