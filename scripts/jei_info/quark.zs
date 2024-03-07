/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

println("Start script/jei_info/quark.");
println("Script Priority Null.");

import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_quark(m_quark as IItemStack, s_quark as string) as void {
	JEI.addDescription(m_quark, [s_quark]);	
}

// Shard
var s_quark = "Glass Shards drop from the respective block of glass when broken without silk touch.";
i_quark(<item:quark:clear_shard>, s_quark);
i_quark(<item:quark:dirty_shard>, s_quark);
i_quark(<item:quark:white_shard>, s_quark);
i_quark(<item:quark:orange_shard>, s_quark);
i_quark(<item:quark:magenta_shard>, s_quark);
i_quark(<item:quark:light_blue_shard>, s_quark);
i_quark(<item:quark:yellow_shard>, s_quark);
i_quark(<item:quark:lime_shard>, s_quark);
i_quark(<item:quark:pink_shard>, s_quark);
i_quark(<item:quark:gray_shard>, s_quark);
i_quark(<item:quark:light_gray_shard>, s_quark);
i_quark(<item:quark:cyan_shard>, s_quark);
i_quark(<item:quark:purple_shard>, s_quark);
i_quark(<item:quark:blue_shard>, s_quark);
i_quark(<item:quark:brown_shard>, s_quark);
i_quark(<item:quark:green_shard>, s_quark);
i_quark(<item:quark:red_shard>, s_quark);
i_quark(<item:quark:black_shard>, s_quark);

// Runes
s_quark = "Runes can be applied to an enchanted item in an Anvil to change the color of the glow.";
i_quark(<item:quark:black_rune>, s_quark);
i_quark(<item:quark:blue_rune>, s_quark);
i_quark(<item:quark:brown_rune>, s_quark);
i_quark(<item:quark:cyan_rune>, s_quark);
i_quark(<item:quark:gray_rune>, s_quark);
i_quark(<item:quark:green_rune>, s_quark);
i_quark(<item:quark:light_blue_rune>, s_quark);
i_quark(<item:quark:light_gray_rune>, s_quark);
i_quark(<item:quark:lime_rune>, s_quark);
i_quark(<item:quark:magenta_rune>, s_quark);
i_quark(<item:quark:orange_rune>, s_quark);
i_quark(<item:quark:pink_rune>, s_quark);
i_quark(<item:quark:purple_rune>, s_quark);
i_quark(<item:quark:rainbow_rune>, s_quark);
i_quark(<item:quark:red_rune>, s_quark);
i_quark(<item:quark:white_rune>, s_quark);
i_quark(<item:quark:yellow_rune>, s_quark);
i_quark(<item:quark:blank_rune>, "Can be found in select loot chests. Can be crafted into a colored rune of any color. Will also work like a colored rune, removing any glow on an enchanted item.");

// Cave Crystals
s_quark = "This can be found randomly underground. They can grow if placed deep underground, look for the semi-transparent swirly particles.";
i_quark(<item:quark:black_corundum>, s_quark);
i_quark(<item:quark:blue_corundum>, s_quark);
i_quark(<item:quark:green_corundum>, s_quark);
i_quark(<item:quark:indigo_corundum>, s_quark);
i_quark(<item:quark:orange_corundum>, s_quark);
i_quark(<item:quark:red_corundum>, s_quark);
i_quark(<item:quark:violet_corundum>, s_quark);
i_quark(<item:quark:white_corundum>, s_quark);
i_quark(<item:quark:yellow_corundum>, s_quark);

// Corundum
s_quark = "This can be found randomly underground and can be grown via normal Corundum. Can redirect beacon beams, provided the last one faces upwards, and can also be moved via pistons alongside adjacent Corundum blocks of the same color.";
i_quark(<item:quark:black_corundum_cluster>, s_quark);
i_quark(<item:quark:blue_corundum_cluster>, s_quark);
i_quark(<item:quark:green_corundum_cluster>, s_quark);
i_quark(<item:quark:indigo_corundum_cluster>, s_quark);
i_quark(<item:quark:orange_corundum_cluster>, s_quark);
i_quark(<item:quark:red_corundum_cluster>, s_quark);
i_quark(<item:quark:violet_corundum_cluster>, s_quark);
i_quark(<item:quark:white_corundum_cluster>, s_quark);
i_quark(<item:quark:yellow_corundum_cluster>, s_quark);

// Waxed Corundum
s_quark = "Waxed Cornudum variants do not emit particles or grow, but share all other properties.";
i_quark(<item:quark:waxed_black_corundum>, s_quark);
i_quark(<item:quark:waxed_blue_corundum>, s_quark);
i_quark(<item:quark:waxed_green_corundum>, s_quark);
i_quark(<item:quark:waxed_indigo_corundum>, s_quark);
i_quark(<item:quark:waxed_orange_corundum>, s_quark);
i_quark(<item:quark:waxed_red_corundum>, s_quark);
i_quark(<item:quark:waxed_violet_corundum>, s_quark);
i_quark(<item:quark:waxed_white_corundum>, s_quark);
i_quark(<item:quark:waxed_yellow_corundum>, s_quark);

// World Stones
i_quark(<item:quark:jasper>, "This spawns in large clusters under Badlands and Deserts.");
i_quark(<item:quark:limestone>, "This spawns in large clusters under Swamps and Oceans. It also generates when flowing Lava touches Honey.");
i_quark(<item:minecraft:calcite>, "This spawns in large clusters under Moutanins.");
i_quark(<item:quark:myalite>, "This spawns in large clusters on top of the Outer End.");
i_quark(<item:quark:permafrost>, "This spawns in large clusters in Snowy Peaks.");
i_quark(<item:quark:shale>, "This spawns in large clusters under icy and snowy biomes.");

s_quark = "Spawns in the Outer End. Teleports when touched, if touched a mob, can spawn endermites or spread.";
i_quark(<item:quark:chorus_twist>, s_quark);
i_quark(<item:quark:chorus_weeds>, s_quark);

s_quark = "Drops from Crabs, which spawn in beaches. Breed them with Wheat, Chicken, or any type of Fish.";
i_quark(<item:quark:crab_leg>, s_quark);
i_quark(<item:quark:crab_shell>, s_quark);

s_quark = "Item frame without a background. Can be right clicked through onto chests, placed onto signs, or serve as wallpaper with banners. Can also update Maps in real time.";
i_quark(<item:quark:glass_item_frame>, s_quark);
i_quark(<item:quark:glowing_glass_item_frame>, s_quark);

s_quark = "Just like a Music Disc, but plays a looping ambient sound. Can be acquired when a Skeleton kills a Spider.";
i_quark(<item:quark:music_disc_drips>, s_quark);
i_quark(<item:quark:music_disc_ocean>, s_quark);
i_quark(<item:quark:music_disc_rain>, s_quark);
i_quark(<item:quark:music_disc_wind>, s_quark);
i_quark(<item:quark:music_disc_fire>, s_quark);
i_quark(<item:quark:music_disc_clock>, s_quark);
i_quark(<item:quark:music_disc_crickets>, s_quark);
i_quark(<item:quark:music_disc_chatter>, s_quark);
i_quark(<item:quark:music_disc_endermosh>, "Can be acquired from chests in End Cities");

s_quark = "Can be used as a fence, with the same 1.5 block height property.";
i_quark(<item:quark:oak_hedge>, s_quark);
i_quark(<item:quark:birch_hedge>, s_quark);
i_quark(<item:quark:spruce_hedge>, s_quark);
i_quark(<item:quark:yellow_blossom_hedge>, s_quark);
i_quark(<item:quark:red_blossom_hedge>, s_quark);
i_quark(<item:quark:lavender_blossom_hedge>, s_quark);
i_quark(<item:quark:orange_blossom_hedge>, s_quark);
i_quark(<item:quark:dark_oak_hedge>, s_quark);
i_quark(<item:quark:acacia_hedge>, s_quark);
i_quark(<item:quark:jungle_hedge>, s_quark);
i_quark(<item:quark:blue_blossom_hedge>, s_quark);
i_quark(<item:quark:pink_blossom_hedge>, s_quark);

s_quark = "Can be found in the rare Glimmering Weald biome deep underground. Stonelings are sometimes found carrying maps to this biome.";
i_quark(<item:quark:glow_shroom>, s_quark);
i_quark(<item:quark:glow_lichen_growth>, s_quark);
i_quark(<item:quark:glow_shroom_block>, s_quark);
i_quark(<item:quark:glow_shroom_stem>, s_quark);
i_quark(<item:quark:glow_shroom_ring>, s_quark);

s_quark = "Parrots can lay eggs if given multiple Beetroot Seeds. Parrot Eggs will always hatch successfully.";
i_quark(<item:quark:egg_parrot_red_blue>, s_quark);
i_quark(<item:quark:egg_parrot_blue>, s_quark);
i_quark(<item:quark:egg_parrot_green>, s_quark);
i_quark(<item:quark:egg_parrot_yellow_blue>, s_quark);
i_quark(<item:quark:egg_parrot_grey>, s_quark);

i_quark(<item:quark:ancient_tome>, "Rare item found in loot chests. When combined in anvil with an item that already has the respective enchantment, it increases the level by one. Can also increase the enchantment level up to one past the maximum.");
i_quark(<item:quark:bottled_cloud>, "Right click an empty bottle at cloud level to get this. Can place a block in midair.");
i_quark(<item:quark:diamond_heart>, "Drops from stonelings sometimes, find them rarely underground and sneak with a diamond in hand to not scare them."); 
i_quark(<item:quark:dragon_scale>, "Drops from enderdragons summoned by a player. Can be used to duplicate Elytras.");
i_quark(<item:quark:soul_bead>, "Drops from wraiths, in the Soul Sand Valley. When right clicked, will fly towards the nearest Nether Fortress. Also can be gotten from Piglin Bartering.");
i_quark(<item:quark:forgotten_hat>, "Drops from Forgotten skeletons, deep underground.");
i_quark(<item:quark:frog_leg>, "Drops from Frogs, which spawn in swamps. Breed them with Spider Eyes, or any type of Fish.");
i_quark(<item:quark:slime_in_a_bucket>, "Right click a tiny slime to capture it. It gets excited when you're in a slime chunk!");
i_quark(<item:quark:ender_watcher>, "Emits a redstone signal when looked at by a player. The closer to the middle, the higher the signal.");
i_quark(<item:quark:feeding_trough>, "Animals can eat and breed from this. If there's over 32 animals in a 10 block radius, they won't breed though!");
i_quark(<item:quark:gold_button>, "Emits a 2 redstone tick long pulse.");
i_quark(<item:quark:grate>, "Animals can't walk through this, and items fall right through.");
i_quark(<item:quark:gravisand>, "When given a redstone signal, falls or floats upwards if it can't, also propagates this behavior. Outputs a comparator signal of 15.");
i_quark(<item:quark:iron_button>, "Emits a 5 second long pulse.");
i_quark(<item:quark:iron_rod>, "Breaks any blocks in front when pushed by a piston. Can also be used to mine the ore on a Toretoise.");
i_quark(<item:quark:magnet>, "Can push or pull metallic blocks when powered. When moved, stonecutters break the block above, and hoppers drop the item in front, or plant, if it's a seed.");
i_quark(<item:quark:myalite_crystal>, "Can be found in Spiral Pillars in the outer end. If placed in a line, can redirect any enderman or ender pearl teleportations between the two ends.");
i_quark(<item:quark:dusky_myalite>, "Can be found in Spiral Pillars in the outer end.");
i_quark(<item:quark:obsidian_pressure_plate>, "Only players can trigger this.");
i_quark(<item:quark:pipe>, "Put items in with a hopper. Items prefer to flow downwards, then forwards, sideways, and lastly upwards. Disable specific pipes with a redstone signal. Items can also fall out of and into open ends.");
i_quark(<item:quark:redstone_randomizer>, "Randomly repeats the input to the left or right.");
i_quark(<item:quark:seed_pouch>, "Can hold 10 stacks of anything plantable. Right click the item onto it to add. Can also place 1 or 3x3 if sneaking. Plantable items have a flowery tooltip for easy identification.");
i_quark(<item:quark:soul_compass>, "Points to where you last died.");
i_quark(<item:quark:trowel>, "Randomly places one block from your hotbar, great for paths!");
i_quark(<item:quark:abacus>, "Right Click a block to set the source - from there, the Abacus will count the distance from the block you're looking at to that one, provided you're holding it.");
i_quark(<item:quark:crate>, "Can hold up to 1000 items. Unlike Chests, the amount of slots expands based on the different items you put in, so it's good for holding a high variety of things.");
i_quark(<item:quark:chute>, "Can receive items with Hoppers and the like. Any items that end up in it are immediately ejected downwards into the world.");
i_quark(<item:quark:sturdy_stone>, "Can not be pushed by pistons.");
i_quark(<item:quark:dirty_glass>, "Crafted exclusively when mixing multiple different types of Glass Shard.");
i_quark(<item:quark:deepslate_furnace>, "This is purely a cosmetic variation of the Furnace, providing no functional benefit.");
i_quark(<item:quark:blackstone_furnace>, "This is purely a cosmetic variation of the Furnace, providing no functional benefit. If placed over Soul Sand, emits blue particles instead.");
i_quark(<item:quark:golden_apple_crate>, "Can be used as a Beacon base.");
i_quark(<item:quark:tiny_potato>, "Tater, my beloved.");
i_quark(<item:quark:pickarang>, "Can be thrown to mine whatever block it lands on. Enchantments can change its performance.");
i_quark(<item:quark:flamerang>, "Works similarly to the Pickarang, but has built in flame and fire resistance.");
i_quark(<item:quark:ancient_tome>, "Can be found on dungeon and stronghold chests. Combine with an enchanted item or book in an anvil to raise its level, up to 1 beyond the max.");

println("End script/jei_info/quark.");