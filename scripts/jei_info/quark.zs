/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("jei_info/quark");
Globals.priorityScript("Null");

var addingQuarkShardInfo = [
	"black_shard",
	"blue_shard",
	"brown_shard",
	"clear_shard",
	"cyan_shard",
	"dirty_shard",
	"gray_shard",
	"green_shard",
	"light_blue_shard",
	"light_gray_shard",
	"lime_shard",
	"magenta_shard",
	"orange_shard",
	"pink_shard",
	"purple_shard",
	"red_shard",
	"yellow_shard",
	"white_shard"
];
for quark_shard_add_info in addingQuarkShardInfo {
	packJeiDescripton(<item:quark:${quark_shard_add_info}>, "Glass Shards drop from the respective block of glass when broken without silk touch.");
}

var addingQuarkRuneInfo = [
	"black_rune",
	"blue_rune",
	"brown_rune",
	"cyan_rune",
	"gray_rune",
	"green_rune",
	"light_blue_rune",
	"light_gray_rune",
	"lime_rune",
	"magenta_rune",
	"orange_rune",
	"pink_rune",
	"purple_rune",
	"rainbow_rune",
	"red_rune",
	"white_rune",
	"yellow_rune"
];
for quark_rune_add_info in addingQuarkRuneInfo {
	packJeiDescripton(<item:quark:${quark_rune_add_info}>, "Runes can be applied to an enchanted item in an Anvil to change the color of the glow.");
}

packJeiDescripton(<item:quark:blank_rune>, "Can be found in select loot chests. Can be crafted into a colored rune of any color. Will also work like a colored rune, removing any glow on an enchanted item.");

var addingQuarkCaveCrystalInfo = [
	"black_corundum",
	"blue_corundum",
	"green_corundum",
	"indigo_corundum",
	"orange_corundum",
	"red_corundum",
	"violet_corundum",
	"white_corundum",
	"yellow_corundum"
];
for quark_cave_crystal_add_info in addingQuarkCaveCrystalInfo {
	packJeiDescripton(<item:quark:${quark_cave_crystal_add_info}>, "This can be found randomly underground. They can grow if placed deep underground, look for the semi-transparent swirly particles.");
}

var addingQuarkCorundumInfo = [
	"black_corundum_cluster",
	"blue_corundum_cluster",
	"green_corundum_cluster",
	"indigo_corundum_cluster",
	"orange_corundum_cluster",
	"red_corundum_cluster",
	"violet_corundum_cluster",
	"white_corundum_cluster",
	"yellow_corundum_cluster"
];
for quark_corundum_add_info in addingQuarkCorundumInfo {
	packJeiDescripton(<item:quark:${quark_corundum_add_info}>, "This can be found randomly underground and can be grown via normal Corundum. Can redirect beacon beams, provided the last one faces upwards, and can also be moved via pistons alongside adjacent Corundum blocks of the same color.");
}

var addingQuarkWaxedCorundumInfo = [
	"waxed_black_corundum",
	"waxed_blue_corundum",
	"waxed_green_corundum",
	"waxed_indigo_corundum",
	"waxed_orange_corundum",
	"waxed_red_corundum",
	"waxed_violet_corundum",
	"waxed_white_corundum",
	"waxed_yellow_corundum"
];
for quark_waxed_corundum_add_info in addingQuarkWaxedCorundumInfo {
	packJeiDescripton(<item:quark:${quark_waxed_corundum_add_info}>, "Waxed Cornudum variants do not emit particles or grow, but share all other properties.");
}

var addingQuarkChorusInfo = [
	"chorus_twist",
	"chorus_weeds"
];
for quark_chorus_add_info in addingQuarkChorusInfo {
	packJeiDescripton(<item:quark:${quark_chorus_add_info}>, "Spawns in the Outer End. Teleports when touched, if touched a mob, can spawn endermites or spread.");
}

var addingQuarkCrabInfo = [
	"crab_leg",
	"crab_shell"
];
for quark_crab_add_info in addingQuarkCrabInfo {
	packJeiDescripton(<item:quark:${quark_crab_add_info}>, "Drops from Crabs, which spawn in beaches. Breed them with Wheat, Chicken, or any type of Fish.");
}

var addingQuarkGlassInfo = [
	"glass_item_frame",
	"glowing_glass_item_frame"
];
for quark_glass_add_info in addingQuarkGlassInfo {
	packJeiDescripton(<item:quark:${quark_glass_add_info}>, "Item frame without a background. Can be right clicked through onto chests, placed onto signs, or serve as wallpaper with banners. Can also update Maps in real time.");
}

var addingQuarkMusicDiscInfo = [
	"music_disc_chatter",
	"music_disc_clock",
	"music_disc_crickets",
	"music_disc_drips",
	"music_disc_fire",
	"music_disc_ocean",
	"music_disc_rain",
	"music_disc_wind"
];
for quark_music_disc_add_info in addingQuarkMusicDiscInfo {
	packJeiDescripton(<item:quark:${quark_music_disc_add_info}>, "Just like a Music Disc, but plays a looping ambient sound. Can be acquired when a Skeleton kills a Spider.");
}

packJeiDescripton(<item:quark:music_disc_endermosh>, "Can be acquired from chests in End Cities");

var addingQuarkHedgeInfo = [
	"acacia_hedge",
	"birch_hedge",
	"blue_blossom_hedge",
	"dark_oak_hedge",
	"jungle_hedge",
	"lavender_blossom_hedge",
	"oak_hedge",
	"orange_blossom_hedge",
	"pink_blossom_hedge",
	"red_blossom_hedge",
	"spruce_hedge",
	"yellow_blossom_hedge"
];
for quark_hedge_add_info in addingQuarkHedgeInfo {
	packJeiDescripton(<item:quark:${quark_hedge_add_info}>, "Can be used as a fence, with the same 1.5 block height property.");
}

var addingQuarkGlowInfo = [
	"glow_lichen_growth",
	"glow_shroom",
	"glow_shroom_block",
	"glow_shroom_ring",
	"glow_shroom_stem"
];
for quark_glow_add_info in addingQuarkGlowInfo {
	packJeiDescripton(<item:quark:${quark_glow_add_info}>, "Can be found in the rare Glimmering Weald biome deep underground. Stonelings are sometimes found carrying maps to this biome.");
}

var addingQuarkParrotInfo = [
	"egg_parrot_blue",
	"egg_parrot_green",
	"egg_parrot_grey",
	"egg_parrot_red_blue",
	"egg_parrot_yellow_blue"
];
for quark_parrot_add_info in addingQuarkParrotInfo {
	packJeiDescripton(<item:quark:${quark_parrot_add_info}>, "Parrots can lay eggs if given multiple Beetroot Seeds. Parrot Eggs will always hatch successfully.");
}

packJeiDescripton(<item:quark:jasper>, "This spawns in large clusters under Badlands and Deserts.");
packJeiDescripton(<item:quark:limestone>, "This spawns in large clusters under Swamps and Oceans. It also generates when flowing Lava touches Honey.");
packJeiDescripton(<item:minecraft:calcite>, "This spawns in large clusters under Moutanins.");
packJeiDescripton(<item:quark:myalite>, "This spawns in large clusters on top of the Outer End.");
packJeiDescripton(<item:quark:permafrost>, "This spawns in large clusters in Snowy Peaks.");
packJeiDescripton(<item:quark:shale>, "This spawns in large clusters under icy and snowy biomes.");
packJeiDescripton(<item:quark:ancient_tome>, "Rare item found in loot chests. When combined in anvil with an item that already has the respective enchantment, it increases the level by one. Can also increase the enchantment level up to one past the maximum.");
packJeiDescripton(<item:quark:bottled_cloud>, "Right click an empty bottle at cloud level to get this. Can place a block in midair.");
packJeiDescripton(<item:quark:diamond_heart>, "Drops from stonelings sometimes, find them rarely underground and sneak with a diamond in hand to not scare them."); 
packJeiDescripton(<item:quark:dragon_scale>, "Drops from enderdragons summoned by a player. Can be used to duplicate Elytras.");
packJeiDescripton(<item:quark:soul_bead>, "Drops from wraiths, in the Soul Sand Valley. When right clicked, will fly towards the nearest Nether Fortress. Also can be gotten from Piglin Bartering.");
packJeiDescripton(<item:quark:forgotten_hat>, "Drops from Forgotten skeletons, deep underground.");
packJeiDescripton(<item:quark:frog_leg>, "Drops from Frogs, which spawn in swamps. Breed them with Spider Eyes, or any type of Fish.");
packJeiDescripton(<item:quark:slime_in_a_bucket>, "Right click a tiny slime to capture it. It gets excited when you're in a slime chunk!");
packJeiDescripton(<item:quark:ender_watcher>, "Emits a redstone signal when looked at by a player. The closer to the middle, the higher the signal.");
packJeiDescripton(<item:quark:feeding_trough>, "Animals can eat and breed from this. If there's over 32 animals in a 10 block radius, they won't breed though!");
packJeiDescripton(<item:quark:gold_button>, "Emits a 2 redstone tick long pulse.");
packJeiDescripton(<item:quark:grate>, "Animals can't walk through this, and items fall right through.");
packJeiDescripton(<item:quark:gravisand>, "When given a redstone signal, falls or floats upwards if it can't, also propagates this behavior. Outputs a comparator signal of 15.");
packJeiDescripton(<item:quark:iron_button>, "Emits a 5 second long pulse.");
packJeiDescripton(<item:quark:iron_rod>, "Breaks any blocks in front when pushed by a piston. Can also be used to mine the ore on a Toretoise.");
packJeiDescripton(<item:quark:magnet>, "Can push or pull metallic blocks when powered. When moved, stonecutters break the block above, and hoppers drop the item in front, or plant, if it's a seed.");
packJeiDescripton(<item:quark:myalite_crystal>, "Can be found in Spiral Pillars in the outer end. If placed in a line, can redirect any enderman or ender pearl teleportations between the two ends.");
packJeiDescripton(<item:quark:dusky_myalite>, "Can be found in Spiral Pillars in the outer end.");
packJeiDescripton(<item:quark:obsidian_pressure_plate>, "Only players can trigger this.");
packJeiDescripton(<item:quark:pipe>, "Put items in with a hopper. Items prefer to flow downwards, then forwards, sideways, and lastly upwards. Disable specific pipes with a redstone signal. Items can also fall out of and into open ends.");
packJeiDescripton(<item:quark:redstone_randomizer>, "Randomly repeats the input to the left or right.");
packJeiDescripton(<item:quark:seed_pouch>, "Can hold 10 stacks of anything plantable. Right click the item onto it to add. Can also place 1 or 3x3 if sneaking. Plantable items have a flowery tooltip for easy identification.");
packJeiDescripton(<item:quark:soul_compass>, "Points to where you last died.");
packJeiDescripton(<item:quark:trowel>, "Randomly places one block from your hotbar, great for paths!");
packJeiDescripton(<item:quark:abacus>, "Right Click a block to set the source - from there, the Abacus will count the distance from the block you're looking at to that one, provided you're holding it.");
packJeiDescripton(<item:quark:crate>, "Can hold up to 1000 items. Unlike Chests, the amount of slots expands based on the different items you put in, so it's good for holding a high variety of things.");
packJeiDescripton(<item:quark:chute>, "Can receive items with Hoppers and the like. Any items that end up in it are immediately ejected downwards into the world.");
packJeiDescripton(<item:quark:sturdy_stone>, "Can not be pushed by pistons.");
packJeiDescripton(<item:quark:dirty_glass>, "Crafted exclusively when mixing multiple different types of Glass Shard.");
packJeiDescripton(<item:quark:deepslate_furnace>, "This is purely a cosmetic variation of the Furnace, providing no functional benefit.");
packJeiDescripton(<item:quark:blackstone_furnace>, "This is purely a cosmetic variation of the Furnace, providing no functional benefit. If placed over Soul Sand, emits blue particles instead.");
packJeiDescripton(<item:quark:golden_apple_crate>, "Can be used as a Beacon base.");
packJeiDescripton(<item:quark:tiny_potato>, "Tater, my beloved.");
packJeiDescripton(<item:quark:pickarang>, "Can be thrown to mine whatever block it lands on. Enchantments can change its performance.");
packJeiDescripton(<item:quark:flamerang>, "Works similarly to the Pickarang, but has built in flame and fire resistance.");
packJeiDescripton(<item:quark:ancient_tome>, "Can be found on dungeon and stronghold chests. Combine with an enchanted item or book in an anvil to raise its level, up to 1 beyond the max.");

Globals.endScript("jei_info/quark");