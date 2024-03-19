/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Missing Tags.
 */

#priority 989

Globals.startScript("tag/thermal_extra");
Globals.priorityScript("989");

import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.tag.manager.ITagManager;

// Fluid
<tag:fluids:thermal_extra:dragonsteel>.add(<fluid:thermal_extra:dragonsteel>);
<tag:fluids:thermal_extra:soul_infused>.add(<fluid:thermal_extra:soul_infused>);
<tag:fluids:thermal_extra:shellite>.add(<fluid:thermal_extra:shellite>);
<tag:fluids:thermal_extra:twinite>.add(<fluid:thermal_extra:twinite>);

Globals.endScript("tag/thermal_extra");