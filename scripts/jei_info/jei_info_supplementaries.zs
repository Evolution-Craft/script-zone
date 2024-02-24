import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_supplementaries(m_supplementaries as IItemStack, s_supplementaries as string) as void {
	JEI.addDescription(m_supplementaries, [s_supplementaries]);	
}

i_supplementaries(<item:supplementaries:ash>, "Obtine with using flint and steel for burning a plants or vegetables.");
i_supplementaries(<item:supplementaries:blackboard>, "You can draw on this.");
i_supplementaries(<item:supplementaries:clock_block>, "Tells the time. Observers and comparators can interact with it.");
i_supplementaries(<item:supplementaries:crank>, "Like a lever, but with 16 different states.");
i_supplementaries(<item:supplementaries:faucet>, "When powered, pulls items or liquid from the block behind it. Can put liquids into Jars.");
i_supplementaries(<item:supplementaries:flute>, "Summons any non-sitting pets around you when used. Can also right click a pet to bind it to said pet.");
i_supplementaries(<item:supplementaries:hourglass>, "Fill it with sand or other dusts, outputs the remaining time with a comparator, and can be reset with a Turn Table.");
i_supplementaries(<item:supplementaries:jar>, "Can store many liquids, potion, stew, cookies, fish, or tiny slimes.");
i_supplementaries(<item:supplementaries:notice_board>, "Can display maps, or the first page of a written book.");
i_supplementaries(<item:supplementaries:pedestal>, "Can display items, including their names. Can also be stacked vertically for decor.");
i_supplementaries(<item:supplementaries:spring_launcher>, "Pushes entities, like the original piston mod! You can also jump on it while it's extended.");
i_supplementaries(<item:supplementaries:planter>, "Can grow crops just like irrigated farmland.");
//i_supplementaries(<item:supplementaries:planter_rich>, "Can grow crops just like irrigated farmland, but with the faster speed of rich soil.");
i_supplementaries(<item:supplementaries:redstone_illuminator>, "Outputs a lower light level the higher the redstone signal its given.");
i_supplementaries(<item:supplementaries:sack>, "Can store items, you can take it with you like a shulker box. If you try to carry multiple, it'll slow you down.");
i_supplementaries(<item:supplementaries:turn_table>, "While powered, keeps rotating whatever block is attached to it. Also rotates entities on top. Right click to invert the rotation.");
i_supplementaries(<item:supplementaries:wind_vane>, "Outputs a redstone signal when raining.");
i_supplementaries(<item:supplementaries:bamboo_spikes>, "Can be placed in any direction. Damages entities that pass through them and deals extra fall damage. Can be tipped with potions.");
i_supplementaries(<item:supplementaries:bamboo_spikes_tipped>, "Can be placed in any direction. Damages entities that pass through them, deals extra fall damage, and inflicts the potion effect.");
i_supplementaries(<item:supplementaries:bellows>, "When powered fans fires and furnaces to keep them burning longer or faster. Can also push items with the wind.");
i_supplementaries(<item:supplementaries:key>, "Can be used to lock Safes and Lock Blocks. Name it in an anvil before usage.");
i_supplementaries(<item:supplementaries:rope_arrow>, "Places down ropes wherever it lands so you can climb up.");
i_supplementaries(<item:supplementaries:pulley_block>, "Can be given ropes or chains. When rotated with a Turn Table, can drop or pull said ropes or chains back up.");
i_supplementaries(<item:supplementaries:bomb>, "Can be thrown, explodes on contact for explosive damage without breaking blocks.");
i_supplementaries(<item:supplementaries:raked_gravel>, "Can be gotten by using a Hoe on Gravel. Doing it from different directions creates unique patterns.");
i_supplementaries(<item:supplementaries:flower_box>, "Can be placed on the floor or the side of a block. Holds up to 3 flowers.");
i_supplementaries(<item:supplementaries:slingshot>, "When used, fires the first block in your hotbar as a projectile. Try using it to throw torches!");
i_supplementaries(<item:supplementaries:wrench>, "Can be used to rotate any directional facing block.");
i_supplementaries(<item:supplementaries:cage>, "Can be used to carry small animals such as chickens.");
i_supplementaries(<item:supplementaries:globe>, "Acquirable from the Wandering Trader only.");
i_supplementaries(<item:supplementaries:item_shelf>, "Can hold an item in it for display.");
i_supplementaries(<item:supplementaries:doormat>, "Can have text written on it, and one item hidden under it.");
i_supplementaries(<item:supplementaries:urn>, "Sometimes found underground, carrying loot, and breakable by a sword. If player made, can have an item put inside.");
i_supplementaries(<item:supplementaries:cog_block>, "Works just as redstone dust, up to 14 blocks away, but can be stacked vertically.");
i_supplementaries(<item:supplementaries:lock_block>, "Can be locked with a Key. If the correct key is in your inventory, it'll open.");
i_supplementaries(<item:supplementaries:bomb_blue>, "Just like a Bomb, but stronger and with a slight delay to explosion. Can only be found in structure chests.");
i_supplementaries(<item:supplementaries:bubble_blower>, "Used to blow bubbles at your friends for fun. If enchanted with Stasis, can place Soap Bubble blocks.");
i_supplementaries(<item:supplementaries:antique_ink>, "Can be used to make Signs, Maps, or Globes have a fancy antique look. Can be found in Urns or as treasure when fishing.");

var s_supplementaries = "Works like a normal wooden one when unpowered. When powered, ignores interactions.";
i_supplementaries(<item:supplementaries:gold_door>, s_supplementaries);
i_supplementaries(<item:supplementaries:gold_trapdoor>, s_supplementaries);

s_supplementaries = "Can be locked with Keys. If locked, only players with the appropriately named key can open it.";
i_supplementaries(<item:supplementaries:safe>, s_supplementaries);
i_supplementaries(<item:supplementaries:netherite_door>, s_supplementaries);
i_supplementaries(<item:supplementaries:netherite_trapdoor>, s_supplementaries);

s_supplementaries = "Can hold one item, as well as a small message to give to a friend.";
i_supplementaries(<item:supplementaries:present>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_white>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_orange>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_magenta>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_light_blue>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_yellow>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_lime>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_pink>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_gray>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_light_gray>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_cyan>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_purple>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_blue>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_brown>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_green>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_red>, s_supplementaries);
i_supplementaries(<item:supplementaries:present_black>, s_supplementaries);

s_supplementaries = "Can be placed and then have other blocks placed inside it, allowing for a combination texture.";
i_supplementaries(<item:supplementaries:timber_frame>, s_supplementaries);
i_supplementaries(<item:supplementaries:timber_brace>, s_supplementaries);
i_supplementaries(<item:supplementaries:timber_cross_brace>, s_supplementaries);

s_supplementaries = "Flax can spawn on sand next to water on hot biomes, like beaches or deserts.";
i_supplementaries(<item:supplementaries:wild_flax>, s_supplementaries);
i_supplementaries(<item:supplementaries:flax>, s_supplementaries);
i_supplementaries(<item:supplementaries:flax_seeds>, s_supplementaries);