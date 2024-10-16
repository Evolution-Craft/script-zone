/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("jei_info/alexs_mobs");
Globals.priorityScript("Null");

var addingAlexsmobsInfo = [
	"acacia_blossom",
	"bear_fur",
	"blood_sac",
	"bone_serpent_tooth",
	"centipede_leg",
	"cockroach_ootheca",
	"cockroach_wing_fragment",
	"crocodile_egg",
	"gazelle_horn",
	"komodo_spit",
	"lobster_tail",
	"moose_antler",
	"mosquito_larva",
	"mosquito_proboscis",
	"raccoon_tail",
	"rattlesnake_rattle",
	"roadrunner_feather",
	"soul_heart",
	"moose_ribs",
	"spiked_scute",
	"guster_eye",
	"emu_egg",
	"emu_feather",
	"kangaroo_meat",
	"kangaroo_hide",
	"straddlite",
	"stradpole_bucket",
	"straddleboard",
	"gongylidia",
	"leafcutter_ant_pupa",
	"enderiophage_rocket",
	"leafcutter_anthill",
	"leafcutter_ant_chamber",
	"pupfish_locator",
	"sombrero",
	"hummingbird_feeder",
	"flying_fish",
	"shed_snake_skin",
	"cosmic_cod",
	"fish_bones",
	"squid_grapple",
	"rainbow_jelly",
	"rocky_shell"
];
for alexsmobs_add_info in addingAlexsmobsInfo {
	packJeiDescripton(<item:alexsmobs:${alexsmobs_add_info}>, "Consult an Animal Dictionary for more information.");
}

packJeiDescripton(<item:alexsmobs:music_disc_thime>, "Can be acquired from bartering with Seals. Consult an Animal Dictionary for more information.");
packJeiDescripton(<item:alexsmobs:music_disc_daze>, "Can be acquired by placing any Music Disc inside a Capsid.");
packJeiDescripton(<item:alexsmobs:crocodile_scute>, "Sourced from Crocodiles, which spawn in Rivers and Swamps. Crocodiles may kill you. Consult an Animal Dictionary for more information.");
packJeiDescripton(<item:alexsmobs:animal_dictionary>, "Contains information on Alex's Mobs.");
packJeiDescripton(<item:alexsmobs:mimicream>, "Drops from Mimicubes near end cities. Consult an Animal Dictionary for more information.");
packJeiDescripton(<item:alexsmobs:pocket_sand>, "Can be used as a longrange weapon, if you're so inclined.");
packJeiDescripton(<item:alexsmobs:gustmaker>, "When given a redstone signal, sends a sand tornado in the direction it's facing.");
packJeiDescripton(<item:alexsmobs:fedora>, "He's a semi-aquatic, egg-laying mammal of action!");
packJeiDescripton(<item:alexsmobs:capsid>, "Can drop from Enderiophages and used to transport items. Consult an Animal Dictionary for more information.");

Globals.endScript("jei_info/alexs_mobs");