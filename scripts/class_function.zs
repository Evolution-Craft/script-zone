/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

#priority 1498

Globals.startScript("class_function");
Globals.priorityScript("1498");

public function packJeiDescripton(item_description as crafttweaker.api.item.IItemStack, text_description as string) as void {
	mods.jei.JEI.addDescription(item_description, [text_description]);	
}
val packJeiDescripton_Load as string = "packJeiDescripton Load Completed";

public function packAddRecipeApotheosisFletching(recipeName_ApotheosisFletching as string, First_itemIn as crafttweaker.api.item.IItemStack, Second_itemIn as crafttweaker.api.item.IItemStack, Third_itemIn as crafttweaker.api.item.IItemStack, itemOut as crafttweaker.api.item.IItemStack, count as int) as void {
	<recipetype:apotheosis:fletching>.addJsonRecipe(recipeName_ApotheosisFletching, {
		"conditions": [{
			"type": "apotheosis:module",
			"module": "village"
		}],
		"ingredients": [{
				"item": First_itemIn.registryName
			},
			{
				"item": Second_itemIn.registryName
			},
			{
				"item": Third_itemIn.registryName
			}
		],
		"result": {
			"item": itemOut.registryName,
			"count": count
		}
	});
}
val packAddRecipeApotheosisFletching_Load as string = "packAddRecipeApotheosisFletching Load Completed";

// crafttweaker.api.ingredient.IIngredient;
public function packAddRecipeCorailWoodcutter_Item(recipeName_CorailWoodcutter_Item as string, itemIn as crafttweaker.api.item.IItemStack, itemOut as crafttweaker.api.item.IItemStack, count as int) as void {
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe(recipeName_CorailWoodcutter_Item, {
		"ingredient":{
			"item": itemIn.registryName
		},
		"result": itemOut.registryName,
		"count": count
	});
}
val packAddRecipeCorailWoodcutter_Item_Load as string = "packAddRecipeCorailWoodcutter_Item Load Completed";

println("          Class Function Loading...          ");
println("          -> " + packJeiDescripton_Load + "          ");
println("          -> " + packAddRecipeApotheosisFletching_Load + "          ");
println("          -> " + packAddRecipeCorailWoodcutter_Item_Load + "          ");
println("          Class Function Loading Completed          ");
Globals.endScript("class_function");