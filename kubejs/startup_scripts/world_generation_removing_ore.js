console.log('ores fired')
onEvent('worldgen.remove', event => {
    event.removeOres(ores => {
      ores.blocks = [
	  		"beyond_earth:moon_desh_ore",
			"beyond_earth:mars_ostrum_ore",
			"beyond_earth:venus_calorite_ore",
			"miniutilities:ender_ore"
		]
    })
})

/*ForgeEvents.onEvent('net.minecraftforge.event.level.BlockEvent$PortalSpawnEvent', event => {
  event.canceled = true
})*/