/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("jei_info/artifacts");
Globals.priorityScript("Null");

import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_artifacts(m_artifacts as IItemStack, s_artifacts as string) as void {
	JEI.addDescription(m_artifacts, [s_artifacts]);	
}

i_artifacts(<item:artifacts:aqua_dashers>, "Allows the player to sprint on water and lava. Can be found in abandoned mineshafts, buried treasure chests and strongholds.");
i_artifacts(<item:artifacts:antidote_vessel>, "Greatly reduces the duration of negative status effects. Can be found in strongholds, bastion treasure chests and village temples.");
i_artifacts(<item:artifacts:bunny_hoppers>, "Increases the player's jump height and prevents fall damage. Can be found in jungle temples, buried treasure chests, bastion stables and village tanneries.");
i_artifacts(<item:artifacts:charm_of_sinking>, "Allows the player to move freely in fluids. Can be found in desert pyramids, shipwrecks and village temples.");
i_artifacts(<item:artifacts:cloud_in_a_bottle>, "Allows the player to double jump. Can be found in pillager outposts, large underwater ruins, end cities and abandoned mineshafts.");
i_artifacts(<item:artifacts:crystal_heart>, "Increases the player's maximum health with 5 hearts. Can be found in bastion treasure chests, end cities and pillager outposts.");
i_artifacts(<item:artifacts:cross_necklace>, "Increases the length of invincibility after taking damage. Can be found in bastion treasure chests, nether fortresses, pillager outposts and large underwater ruins.");
i_artifacts(<item:artifacts:digging_claws>, "Increases the players mining speed, and increases the players base mining level to stone. Can be found in abandoned mineshafts, buried treasure chests and village toolsmiths.");
i_artifacts(<item:artifacts:everlasting_beef>, "Everlasting beef drops from cows killed by players with a 1/500 drop rate, not affected by Looting. Can rarely also be found in bastion stables and village butchers.");
i_artifacts(<item:artifacts:eternal_steak>, "A food item that does not get consumed when you eat it, with a 15 second cooldown.");
i_artifacts(<item:artifacts:feral_claws>, "Increases the players attack speed. Can be found in shipwrecks, buried treasure chests and village weaponsmiths.");
i_artifacts(<item:artifacts:fire_gauntlet>, "Causes the player's melee attacks to set entities on fire. Can be found in ruined portals, large underwater ruins and bastion treasure chests.");
i_artifacts(<item:artifacts:flame_pendant>, "Has a chance to light attacking entities on fire. Can be found in desert pyramids and bastion stables.");
i_artifacts(<item:artifacts:flippers>, "Increases the player's swimming speed by 100%. Can be found in buried treasure chests, shipwrecks and large underwater ruins.");
i_artifacts(<item:artifacts:golden_hook>, "Increases experience dropped from creatures by 75%. Can be found in buried treasure chests, shipwrecks and bastion treasure chests.");
i_artifacts(<item:artifacts:helium_flamingo>, "Allows the player to swim through the air for a short period of time. Can be found in end cities and strongholds.");
i_artifacts(<item:artifacts:kitty_slippers>, "Creepers don't target and run away from the player. Can be found in jungle temples, buried treasure chests and village tanneries.");
i_artifacts(<item:artifacts:lucky_scarf>, "Applies an extra level of fortune to mined blocks. Can be found in treasure chests, ruined portals, strongholds and underwater ruins.");
i_artifacts(<item:artifacts:night_vision_goggles>, "Grants night vision when worn. Can be found in abandoned mineshafts, shipwrecks and ruined portals.");
i_artifacts(<item:artifacts:novelty_drinking_hat>, "Reduces the time it takes to drink drinkable items by 70%, and reduces the time it takes to eat items by 40%. Can be found in abandoned mineshafts, buried treasure chests and nether fortresses.");
i_artifacts(<item:artifacts:obsidian_skull>, "Applies a 30 second fire resistance effect to the player after taking fire damage, with a 60 second cooldown. Can be found in ruined portals, shipwrecks and abandoned mineshafts.");
i_artifacts(<item:artifacts:panic_necklace>, "Gives the player a short speed status effect after taking damage. Can be found in abandoned mineshafts, bastion treasure chests and pillager outposts.");
i_artifacts(<item:artifacts:plastic_drinking_hat>, "Reduces the time it takes to drink drinkable items by 70%, and reduces the time it takes to eat items by 40%. Can be found in abandoned mineshafts, buried treasure chests and nether fortresses.");
i_artifacts(<item:artifacts:pocket_piston>, "Increases knockback dealt by the player. Can be be found in pillager outposts, nether fortresses and village toolsmiths.");
i_artifacts(<item:artifacts:power_glove>, "The player's attacks deal 4 additional damage. Can be found in pillager outposts, ruined portals, strongholds and large underwater ruins.");
i_artifacts(<item:artifacts:running_shoes>, "Increases the player's movement speed by 40%, and increases the players step height, both while sprinting. Can be found in shipwrecks, nether fortresses and village armorers.");
i_artifacts(<item:artifacts:scarf_of_invisibility>, "Turns the player invisible. Can be found in desert pyramids, pillager outposts, shipwrecks and village tanneries.");
i_artifacts(<item:artifacts:shock_pendant>, "Has a chance to strike attacking entities with lightning. Can be found in desert pyramids.");
i_artifacts(<item:artifacts:snorkel>, "Gives the player a 15 second water breathing effect. Can be found in buried treasure chests, shipwrecks and large underwater ruins.");
i_artifacts(<item:artifacts:steadfast_spikes>, "Increases the player's knockback resistance to 100%. Can be found in pillager outposts, shipwrecks, bastion treasure chests and village armorers.");
i_artifacts(<item:artifacts:superstitious_hat>, "Applies an extra level of looting to killed entities. Can be found in pillager outposts, strongholds, large underwater ruins and abandoned mineshafts.");
i_artifacts(<item:artifacts:thorn_pendant>, "Has a chance to damage attacking entities. Can be found in desert pyramids and ruined portals.");
i_artifacts(<item:artifacts:umbrella>, "Acts as a shield without durability, and slows your fall when held. Can be found in buried treasure chests, desert pyramids and village tanneries.");
i_artifacts(<item:artifacts:universal_attractor>, "Attracts nearby items. Can be found in desert pyramids, ruined portals and shipwrecks.");
i_artifacts(<item:artifacts:whoopee_cushion>, "Occasionally plays a fart noise when worn. Equipable in any slot. Can be found in desert pyramids, village tanneries and the spawn bonus chest.");
i_artifacts(<item:artifacts:vampiric_glove>, "The player is healed 20% of the damage dealt by melee attacks. Can be found in abandoned mineshafts, desert pyramids and village armorers.");
i_artifacts(<item:artifacts:villager_hat>, "Decreases trading prices with villagers. Can be found in villages.");

Globals.endScript("jei_info/artifacts");