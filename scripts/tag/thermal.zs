/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add new dies.
 * v0.2 : Add priority.
 */

#priority 986

Globals.startScript("tag/thermal");
Globals.priorityScript("986");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Dies
<tag:items:thermal:crafting/dies>.add(<item:contenttweaker:thermal/press_rod_die>);
<tag:items:thermal:crafting/dies>.add(<item:immersiveengineering:mold_wire>); // Temporary Using

Globals.endScript("tag/thermal");