/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue.
 */

Globals.startScript("jei_info/flint_instead_of_wood");
Globals.priorityScript("Null");

import mods.jei.JEI as JEI;

JEI.addDescription(<item:fiow:flint_knife>, ("Knives are lightweight melee weapon. They can harvest Straw from grasses, and guarantee secondary drops from animals."));

Globals.endScript("jei_info/flint_instead_of_wood");