import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

/*
wooden
stone
leather
chain
iron
gold
diamond
netherite
*/
craftingTable.addShaped("chainmail_helmet", <item:minecraft:chainmail_helmet>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
	[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
]);
craftingTable.addShaped("chainmail_chestplate", <item:minecraft:chainmail_chestplate>, [
	[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
	[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
	[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>]
]);
craftingTable.addShaped("chainmail_leggings", <item:minecraft:chainmail_leggings>, [
	[<item:minecraft:chain>, <item:minecraft:chain>, <item:minecraft:chain>],
	[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
	[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
]);
craftingTable.addShaped("chainmail_boots", <item:minecraft:chainmail_boots>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
	[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>],
	[<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
]);
/*craftingTable.removeByModid("woodarmorhorse");
var logsHO = {
	"oak": "oak",
	"birch": "birch",
	"jungle": "jungle",
	"acacia": "acacia",
	"dark_oak": "bigoak",
	"spruce": "spruce"
};
for logId, logName in logsHO {
craftingTable.addShaped(logName + "_horse_armor", <item:woodarmorhorse:${logName}_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:woodarmor:${logId}_helmet>],
	[<item:minecraft:${logId}_planks>, <item:minecraft:${logId}_log>, <item:minecraft:${logId}_planks>],
	[<item:woodarmor:${logId}_leggings>, <item:minecraft:air>, <item:woodarmor:${logId}_leggings>]
]);
}
var logsHN = {
	"warped": "warped",
	"crimson": "crimson"
};
for logId, logName in logsHN {
craftingTable.addShaped(logName + "_horse_armor", <item:woodarmorhorse:${logName}_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:woodarmor:${logId}_helmet>],
	[<item:minecraft:${logId}_planks>, <item:minecraft:${logId}_stem>, <item:minecraft:${logId}_planks>],
	[<item:woodarmor:${logId}_leggings>, <item:minecraft:air>, <item:woodarmor:${logId}_leggings>]
]);
}
var addingWoodenArmorHorse = [
	"oak_horse_armor",
	"birch_horse_armor",
	"warped_horse_armor",
	"jungle_horse_armor",
	"acacia_horse_armor",
	"bigoak_horse_armor",
	"spruce_horse_armor",
	"crimson_horse_armor"
];
for tag_woodarmorhorse in addingWoodenArmorHorse{
	<tag:items:woodarmorhorse:wooden_horse_armor>.add(<item:woodarmorhorse:${tag_woodarmorhorse}>);
}
craftingTable.addShaped("stone_horse_armor", <item:woodarmorhorse:stone_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:woodarmor:stone_helmet>],
	[<item:minecraft:cobblestone>, <tag:items:woodarmorhorse:wooden_horse_armor>, <item:minecraft:cobblestone>],
	[<item:woodarmor:stone_leggings>, <item:minecraft:air>, <item:woodarmor:stone_leggings>]
]);
craftingTable.removeByName("minecraft:leather_horse_armor");
craftingTable.addShaped("leather_horse_armor", <item:minecraft:leather_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:leather_helmet>],
	[<item:minecraft:leather>, <item:woodarmorhorse:stone_horse_armor>, <item:minecraft:leather>],
	[<item:minecraft:leather_leggings>, <item:minecraft:air>, <item:minecraft:leather_leggings>]
]);
craftingTable.addShaped("iron_horse_armor", <item:minecraft:iron_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:iron_helmet>],
	[<item:minecraft:iron_ingot>, <item:minecraft:leather_horse_armor>, <item:minecraft:iron_ingot>],
	[<item:minecraft:iron_leggings>, <item:minecraft:air>, <item:minecraft:iron_leggings>]
]);
craftingTable.addShaped("golden_horse_armor", <item:minecraft:golden_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:golden_helmet>],
	[<item:minecraft:gold_ingot>, <item:minecraft:iron_horse_armor>, <item:minecraft:gold_ingot>],
	[<item:minecraft:golden_leggings>, <item:minecraft:air>, <item:minecraft:golden_leggings>]
]);
craftingTable.addShaped("diamond_horse_armor", <item:minecraft:diamond_horse_armor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:diamond_helmet>],
	[<item:minecraft:diamond>, <item:minecraft:golden_horse_armor>, <item:minecraft:diamond>],
	[<item:minecraft:diamond_leggings>, <item:minecraft:air>, <item:minecraft:diamond_leggings>]
]);*/