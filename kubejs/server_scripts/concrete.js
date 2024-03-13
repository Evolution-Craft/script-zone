console.log('concrete fired')
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