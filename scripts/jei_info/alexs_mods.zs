/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

println("Start script/jei_info/alexs_mobs.");
println("Script Priority Null.");

import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_alexsmobs(m_alexsmobs as IItemStack, s_alexsmobs as string) as void {
	JEI.addDescription(m_alexsmobs, [s_alexsmobs]);	
}

val s_alexsmobs = "Consult an Animal Dictionary for more information.";
i_alexsmobs(<item:alexsmobs:acacia_blossom>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:bear_fur>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:blood_sac>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:bone_serpent_tooth>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:centipede_leg>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:cockroach_ootheca>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:cockroach_wing_fragment>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:crocodile_egg>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:gazelle_horn>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:komodo_spit>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:lobster_tail>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:moose_antler>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:mosquito_larva>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:mosquito_proboscis>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:raccoon_tail>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:rattlesnake_rattle>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:roadrunner_feather>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:soul_heart>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:moose_ribs>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:spiked_scute>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:guster_eye>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:emu_egg>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:emu_feather>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:kangaroo_meat>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:kangaroo_hide>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:straddlite>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:stradpole_bucket>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:straddleboard>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:gongylidia>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:leafcutter_ant_pupa>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:enderiophage_rocket>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:leafcutter_anthill>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:leafcutter_ant_chamber>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:pupfish_locator>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:sombrero>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:hummingbird_feeder>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:flying_fish>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:shed_snake_skin>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:cosmic_cod>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:fish_bones>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:squid_grapple>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:rainbow_jelly>, s_alexsmobs);
i_alexsmobs(<item:alexsmobs:rocky_shell>, s_alexsmobs);

i_alexsmobs(<item:alexsmobs:music_disc_thime>, "Can be acquired from bartering with Seals. Consult an Animal Dictionary for more information.");
i_alexsmobs(<item:alexsmobs:music_disc_daze>, "Can be acquired by placing any Music Disc inside a Capsid.");
i_alexsmobs(<item:alexsmobs:crocodile_scute>, "Sourced from Crocodiles, which spawn in Rivers and Swamps. Crocodiles may kill you. Consult an Animal Dictionary for more information.");
i_alexsmobs(<item:alexsmobs:animal_dictionary>, "Contains information on Alex's Mobs.");
i_alexsmobs(<item:alexsmobs:mimicream>, "Drops from Mimicubes near end cities. Consult an Animal Dictionary for more information.");
i_alexsmobs(<item:alexsmobs:pocket_sand>, "Can be used as a longrange weapon, if you're so inclined.");
i_alexsmobs(<item:alexsmobs:gustmaker>, "When given a redstone signal, sends a sand tornado in the direction it's facing.");
i_alexsmobs(<item:alexsmobs:fedora>, "He's a semi-aquatic, egg-laying mammal of action!");
i_alexsmobs(<item:alexsmobs:capsid>, "Can drop from Enderiophages and used to transport items. Consult an Animal Dictionary for more information.");

println("End script/jei_info/alexs_mobs.");