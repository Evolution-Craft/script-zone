/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 */

Globals.startScript("jei_info/mini_utilities");
Globals.priorityScript("Null");

packJeiDescripton(<item:miniutilities:blessed_earth>, "Spawns more neutral mobs.");
packJeiDescripton(<item:miniutilities:blursed_earth>, "Spawns more hostile and neutral mobs, light level of five and above stops spawns.");
packJeiDescripton(<item:miniutilities:cursed_earth>, "Spawns more hostile mobs, light level of five and above stops spawns.");
packJeiDescripton(<item:miniutilities:lapis_lamp>, "Lights up without blocking the spawn.");
packJeiDescripton(<item:miniutilities:quantum_quarry>, "Using on extra planet, for dropping a specific ore.");
packJeiDescripton(<item:miniutilities:speed_upgrade>, "Using for increase speed on Quantum Quarry, right click for adding and shift right click for removing.");

Globals.endScript("jei_info/mini_utilities");