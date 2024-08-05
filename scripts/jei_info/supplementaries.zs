/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 * v0.2 : Rework.
 */

Globals.startScript("jei_info/supplementaries");
Globals.priorityScript("Null");

var addingSupplementariesDoorInfo = [
	"gold_door",
	"gold_trapdoor"
];
for supplementaries_door_info in addingSupplementariesDoorInfo {
	packJeiDescripton(<item:supplementaries:${supplementaries_door_info}>, "Works like a normal wooden one when unpowered. When powered, ignores interactions.");
}

var addingSupplementariesSafeInfo = [
	"safe",
	"netherite_door",
	"netherite_trapdoor"
];
for supplementaries_safe_info in addingSupplementariesSafeInfo {
	packJeiDescripton(<item:supplementaries:${supplementaries_safe_info}>, "Can be locked with Keys. If locked, only players with the appropriately named key can open it.");
}

var addingSupplementariesPresentInfo = [
	"present",
	"present_black",
	"present_blue",
	"present_brown",
	"present_cyan",
	"present_gray",
	"present_green",
	"present_light_blue",
	"present_light_gray",
	"present_lime",
	"present_magenta",
	"present_orange",
	"present_pink",
	"present_purple",
	"present_red",
	"present_yellow",
	"present_white"
];
for supplementaries_present_info in addingSupplementariesPresentInfo {
	packJeiDescripton(<item:supplementaries:${supplementaries_present_info}>, "Can hold one item, as well as a small message to give to a friend.");
}

var addingSupplementariesTimberInfo = [
	"timber_brace",
	"timber_cross_brace",
	"timber_frame"
];
for supplementaries_timber_info in addingSupplementariesTimberInfo {
	packJeiDescripton(<item:supplementaries:${supplementaries_timber_info}>, "Can be placed and then have other blocks placed inside it, allowing for a combination texture.");
}

var addingSupplementariesFlaxInfo = [
	"flax",
	"flax_seeds",
	"wild_flax"
];
for supplementaries_flax_info in addingSupplementariesFlaxInfo {
	packJeiDescripton(<item:supplementaries:${supplementaries_flax_info}>, "Flax can spawn on sand next to water on hot biomes, like beaches or deserts.");
}

packJeiDescripton(<item:supplementaries:ash>, "Obtine with using flint and steel for burning a plants or vegetables.");
packJeiDescripton(<item:supplementaries:blackboard>, "You can draw on this.");
packJeiDescripton(<item:supplementaries:clock_block>, "Tells the time. Observers and comparators can interact with it.");
packJeiDescripton(<item:supplementaries:crank>, "Like a lever, but with 16 different states.");
packJeiDescripton(<item:supplementaries:faucet>, "When powered, pulls items or liquid from the block behind it. Can put liquids into Jars.");
packJeiDescripton(<item:supplementaries:flute>, "Summons any non-sitting pets around you when used. Can also right click a pet to bind it to said pet.");
packJeiDescripton(<item:supplementaries:hourglass>, "Fill it with sand or other dusts, outputs the remaining time with a comparator, and can be reset with a Turn Table.");
packJeiDescripton(<item:supplementaries:jar>, "Can store many liquids, potion, stew, cookies, fish, or tiny slimes.");
packJeiDescripton(<item:supplementaries:notice_board>, "Can display maps, or the first page of a written book.");
packJeiDescripton(<item:supplementaries:pedestal>, "Can display items, including their names. Can also be stacked vertically for decor.");
packJeiDescripton(<item:supplementaries:spring_launcher>, "Pushes entities, like the original piston mod! You can also jump on it while it's extended.");
packJeiDescripton(<item:supplementaries:planter>, "Can grow crops just like irrigated farmland.");
packJeiDescripton(<item:supplementaries:planter_rich>, "Can grow crops just like irrigated farmland, but with the faster speed of rich soil.");
packJeiDescripton(<item:supplementaries:redstone_illuminator>, "Outputs a lower light level the higher the redstone signal its given.");
packJeiDescripton(<item:supplementaries:sack>, "Can store items, you can take it with you like a shulker box. If you try to carry multiple, it'll slow you down.");
packJeiDescripton(<item:supplementaries:turn_table>, "While powered, keeps rotating whatever block is attached to it. Also rotates entities on top. Right click to invert the rotation.");
packJeiDescripton(<item:supplementaries:wind_vane>, "Outputs a redstone signal when raining.");
packJeiDescripton(<item:supplementaries:bamboo_spikes>, "Can be placed in any direction. Damages entities that pass through them and deals extra fall damage. Can be tipped with potions.");
packJeiDescripton(<item:supplementaries:bamboo_spikes_tipped>, "Can be placed in any direction. Damages entities that pass through them, deals extra fall damage, and inflicts the potion effect.");
packJeiDescripton(<item:supplementaries:bellows>, "When powered fans fires and furnaces to keep them burning longer or faster. Can also push items with the wind.");
packJeiDescripton(<item:supplementaries:key>, "Can be used to lock Safes and Lock Blocks. Name it in an anvil before usage.");
packJeiDescripton(<item:supplementaries:rope_arrow>, "Places down ropes wherever it lands so you can climb up.");
packJeiDescripton(<item:supplementaries:pulley_block>, "Can be given ropes or chains. When rotated with a Turn Table, can drop or pull said ropes or chains back up.");
packJeiDescripton(<item:supplementaries:bomb>, "Can be thrown, explodes on contact for explosive damage without breaking blocks.");
packJeiDescripton(<item:supplementaries:raked_gravel>, "Can be gotten by using a Hoe on Gravel. Doing it from different directions creates unique patterns.");
packJeiDescripton(<item:supplementaries:flower_box>, "Can be placed on the floor or the side of a block. Holds up to 3 flowers.");
packJeiDescripton(<item:supplementaries:slingshot>, "When used, fires the first block in your hotbar as a projectile. Try using it to throw torches!");
packJeiDescripton(<item:supplementaries:wrench>, "Can be used to rotate any directional facing block.");
packJeiDescripton(<item:supplementaries:cage>, "Can be used to carry small animals such as chickens.");
packJeiDescripton(<item:supplementaries:globe>, "Acquirable from the Wandering Trader only.");
packJeiDescripton(<item:supplementaries:item_shelf>, "Can hold an item in it for display.");
packJeiDescripton(<item:supplementaries:doormat>, "Can have text written on it, and one item hidden under it.");
packJeiDescripton(<item:supplementaries:urn>, "Sometimes found underground, carrying loot, and breakable by a sword. If player made, can have an item put inside.");
packJeiDescripton(<item:supplementaries:cog_block>, "Works just as redstone dust, up to 14 blocks away, but can be stacked vertically.");
packJeiDescripton(<item:supplementaries:lock_block>, "Can be locked with a Key. If the correct key is in your inventory, it'll open.");
packJeiDescripton(<item:supplementaries:bomb_blue>, "Just like a Bomb, but stronger and with a slight delay to explosion. Can only be found in structure chests.");
packJeiDescripton(<item:supplementaries:bubble_blower>, "Used to blow bubbles at your friends for fun. If enchanted with Stasis, can place Soap Bubble blocks.");
packJeiDescripton(<item:supplementaries:antique_ink>, "Can be used to make Signs, Maps, or Globes have a fancy antique look. Can be found in Urns or as treasure when fishing.");

Globals.endScript("jei_info/supplementaries");