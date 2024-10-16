/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

#priority 1498

Globals.startScript("class_function");
Globals.priorityScript("1498");

public function packJeiDescripton(item_description as crafttweaker.api.item.IItemStack, text_description as string) as void {
	mods.jei.JEI.addDescription(item_description, [text_description]);	
}
val packJeiDescripton_Load as string = "packJeiDescripton Load Completed";

public function packAddRecipeApotheosisFletching(recipeName as string, First_itemIn as crafttweaker.api.item.IItemStack, Second_itemIn as crafttweaker.api.item.IItemStack, Third_itemIn as crafttweaker.api.item.IItemStack, itemOut as crafttweaker.api.item.IItemStack, count as int) as void {
	<recipetype:apotheosis:fletching>.addJsonRecipe(recipeName, {
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

public function packAddRecipeCorailWoodcutter_Item(recipeName as string, itemIn as crafttweaker.api.item.IItemStack, itemOut as crafttweaker.api.item.IItemStack, count as int) as void {
	<recipetype:corail_woodcutter:woodcutting>.addJsonRecipe(recipeName, {
		"ingredient":{
			"item": itemIn.registryName
		},
		"result": itemOut.registryName,
		"count": count
	});
}
val packAddRecipeCorailWoodcutter_Item_Load as string = "packAddRecipeCorailWoodcutter_Item Load Completed";

public function packAddRecipeTinkersConstruct_Melting(recipeName as string, itemIn as crafttweaker.api.item.IItemStack, fluidOut as crafttweaker.api.fluid.IFluidStack, fluid_amount as int, temperature as int, time as int) as void {
	<recipetype:tconstruct:melting>.addJsonRecipe(recipeName, {
		"ingredient": {
			"item": itemIn.registryName
		},
		"result": {
			"fluid": fluidOut.registryName,
			"amount": fluid_amount
		},
		"temperature": temperature,
		"time": time
	});
}
val packAddRecipeTinkersConstruct_Melting_Load as string = "packAddRecipeTinkersConstruct_Melting Load Completed";

public function packAddRecipeTinkersConstruct_Damagable_Melting(recipeName as string, itemIn as crafttweaker.api.item.IItemStack, fluidOut as crafttweaker.api.fluid.IFluidStack, fluid_amount as int, unit as int, temperature as int, time as int) as void {
	<recipetype:tconstruct:melting>.addJsonRecipe(recipeName, {
		"ingredient": {
			"item": itemIn.registryName
		},
		"result": {
			"fluid": fluidOut.registryName,
			"amount": fluid_amount,
			"unit_size": unit
		},
		"temperature": temperature,
		"time": time
	});
}
val packAddRecipeTinkersConstruct_Damagable_Melting_Load as string = "packAddRecipeTinkersConstruct_Damagable_Melting Load Completed";

// TODO: test before implementation
/*public var shapedOldDamageVarFunction as function(usualOut as crafttweaker.api.item.IItemStack, inputs as crafttweaker.api.item.IItemStack[][]) as crafttweaker.api.item.IItemStack = (usualOut as crafttweaker.api.item.IItemStack, inputs as crafttweaker.api.item.IItemStack[][]) => {
	var oldDamage = inputs[1][1].damage;
	if oldDamage < 0 {
		oldDamage = 0;
	}
	return usualOut.withDamage(oldDamage);
};*/

println("          Class Function Loading...          ");
println("          -> " + packJeiDescripton_Load + "          ");
println("          -> " + packAddRecipeApotheosisFletching_Load + "          ");
println("          -> " + packAddRecipeCorailWoodcutter_Item_Load + "          ");
println("          -> " + packAddRecipeTinkersConstruct_Melting_Load + "          ");
println("          -> " + packAddRecipeTinkersConstruct_Damagable_Melting_Load + "          ");
println("          Class Function Loading Completed          ");
Globals.endScript("class_function");