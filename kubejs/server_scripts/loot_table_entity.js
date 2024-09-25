console.log('loot_table_entity compiled')

onEvent("lootjs", (event) => {
	event
		.addEntityLootModifier("minecraft:husk").killedByPlayer()
		.randomChanceWithEnchantment("minecraft:looting", [0.1, 0.25, 0.35, 0.5])
		.addWeightedLoot([1, 3], [Item.of("minecraft:sand")]);
});