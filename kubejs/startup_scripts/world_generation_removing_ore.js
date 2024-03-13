console.info('Removing ores from your world, during startup')

WorldgenEvents.remove(event => {
    event.removeOres(ores => {
      ores.blocks = JsonIO.read('kubejs/world_ore_remove_tags.json').tags
    })
})

ForgeEvents.onEvent('net.minecraftforge.event.level.BlockEvent$PortalSpawnEvent', event => {
  event.canceled = true
})