console.log('loot_table_chest compiled')

const evolution_craft_book = [
	"contenttweaker:evolution_craft/book/old_book",
	"contenttweaker:evolution_craft/book/necronomicon_book",
	"contenttweaker:evolution_craft/book/rexs_book",
	"contenttweaker:evolution_craft/book/notchs_book",
	"contenttweaker:evolution_craft/book/herobrines_book",
	"contenttweaker:evolution_craft/book/knowledge_book",
	"contenttweaker:evolution_craft/book/monster_book",
	"contenttweaker:evolution_craft/book/cursed_book",
	"contenttweaker:evolution_craft/book/grimoire_book"
]
onEvent("lootjs", (event) => {
	evolution_craft_book.forEach(data_book => {
		event
			.addLootTypeModifier(LootType.CHEST)
			.randomChance(0.01)
			.addLoot(data_book);
	})
});