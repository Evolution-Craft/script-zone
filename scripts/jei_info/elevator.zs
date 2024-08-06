/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 * v0.2 : Rework.
 */

Globals.startScript("jei_info/elevator");
Globals.priorityScript("Null");

for elevatorid_dye_item in Constant.packColours {
	packJeiDescripton(<item:elevatorid:elevator_${elevatorid_dye_item}>, "To use them place two or more elevators in the same X and Z coordinates, to move between them simply jump to go to the elevator above or sneak to go to the one below. Directional: When the `Directional` checkbox is enabled, the elevator will adjust the yaw rotation of players who teleport to it based on the configured direction. You can change the direction by clicking on the desired direction button. The display order of the buttons will match the current direction the player is facing. It will also show an arrow on the elevator to indicate the direction it is facing, this has nothing to do with horizontal movement, it only changes the direction the player is facing. You can hide it by selecting the `Hide arrow` checkbox. Camouflage: You can use any solid block to camouflage the elevator, just right-click on the elevator with the desired block on your hand, most blocks can be used as camouflage with some exceptions.");
}

Globals.endScript("jei_info/elevator");