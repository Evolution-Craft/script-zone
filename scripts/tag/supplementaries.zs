/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : First Issue
 */

#priority 983

Globals.startScript("tag/supplementaries");
Globals.priorityScript("983");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Fire Sources
<tag:items:supplementaries:fire_sources>.add(<item:netherite_shears_and_flint_and_steel:netherite_flint_and_steel>);

Globals.endScript("tag/supplementaries");