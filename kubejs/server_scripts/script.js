// priority: 0

settings.logAddedRecipes = true
settings.logRemovedRecipes = true
settings.logSkippedRecipes = false
settings.logErroringRecipes = true

console.info('Hello, World! (You will see this line every time server resources reload)')

onEvent('recipes', event => {
	// Change recipes here
})

onEvent('item.tags', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')
})

// Convert Concrete Powder to Concrete with dropping in Water - Script By DevDyna
const powder = ['black', 'pink', 'gray', 'brown', 'light_gray', 'cyan', 'red', 'green', 'purple', 'blue', 'lime', 'yellow', 'light_blue', 'magenta', 'orange', 'white']

let count

onEvent("server.tick", event => {

	powder.forEach(data => {
		count = event.server.runCommandSilent('data get entity @e[sort=random,type=item,limit=1,nbt={Item:{id:"minecraft:' + data + '_concrete_powder"}}] Item.Count 1')
			if (count > 0) {
				event.server.runCommandSilent('execute at @e[type=item,limit=1,nbt={Item:{id:"minecraft:' + data + '_concrete_powder"}}] if block ~ ~ ~ minecraft:water align xyz run summon item ~0.5 ~ ~0.5 {PickupDelay:20,Item:{id:"minecraft:' + data + '_concrete",Count:' + count + 'b}}')
				event.server.runCommandSilent('execute at @e[type=item,limit=1,nbt={Item:{id:"minecraft:' + data + '_concrete_powder"}}] if block ~ ~ ~ minecraft:water run kill @e[type=item,limit=1,nbt={Item:{id:"minecraft:' + data + '_concrete_powder"}}]')
			}
	})
})