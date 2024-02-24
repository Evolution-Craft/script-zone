/*
 * This file is part of the Evolution Craft modpack.
 *
 * The author of this file is Millennium, using CraftTweaker mod code.
 *
 * CHANGELOG:
 * v0.1 : Add Vinery Crops.
 */

println("Start script recipe_botany_pots.");
println("Script Priority Null.");

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.Ingredient;
import crafttweaker.api.recipe.Replacer;

<recipetype:botanypots:crop>.removeByName("botanypots:minecraft/crop/cactus");
<recipetype:botanypots:crop>.addJsonRecipe("botanypots_minecraft_crop_cactus",{
  "seed": {
    "item": "minecraft:cactus"
  },
  "categories": [
    "sand",
	"farmland"
  ],
  "growthTicks": 1200,
  "display": {
    "block": "minecraft:cactus"
  },
  "drops": [
    {
      "chance": 1.00,
      "output": {
        "item": "minecraft:cactus"
      }
    },
    {
      "chance": 0.05,
      "output": {
        "item": "ecologics:prickly_pear"
      },
      "minRolls": 1,
      "maxRolls": 2
    }
  ]
});
<recipetype:botanypots:crop>.addJsonRecipe("botanypots_crops_vinery/red_grape_seeds",{
  "seed": {
    "item": "vinery:red_grape_seeds"
  },
  "categories": [
    "dirt"
  ],
  "growthTicks": 1200,
  "display": {
    "type": "botanypots:aging",
    "block": "vinery:red_grape_bush"
  },
  "drops": [
    {
      "chance": 1.00,
      "output": {
        "item": "vinery:red_grape"
      },
      "minRolls": 1,
      "maxRolls": 2
    },
    {
      "chance": 0.05,
      "output": {
        "item": "vinery:red_grape_seeds"
      },
      "minRolls": 1,
      "maxRolls": 2
    }
  ]
});
<recipetype:botanypots:crop>.addJsonRecipe("botanypots_crops_vinery/white_grape_seeds",{
  "seed": {
    "item": "vinery:white_grape_seeds"
  },
  "categories": [
    "dirt"
  ],
  "growthTicks": 1200,
  "display": {
    "type": "botanypots:aging",
    "block": "vinery:white_grape_bush"
  },
  "drops": [
    {
      "chance": 1.00,
      "output": {
        "item": "vinery:white_grape"
      },
      "minRolls": 1,
      "maxRolls": 2
    },
    {
      "chance": 0.05,
      "output": {
        "item": "vinery:white_grape_seeds"
      },
      "minRolls": 1,
      "maxRolls": 2
    }
  ]
});
<recipetype:botanypots:crop>.addJsonRecipe("botanypots_crops_vinery/savanna_grape_seeds_red",{
  "seed": {
    "item": "vinery:savanna_grape_seeds_red"
  },
  "categories": [
    "dirt"
  ],
  "growthTicks": 1200,
  "display": {
    "type": "botanypots:aging",
    "block": "vinery:savanna_grape_bush_red"
  },
  "drops": [
    {
      "chance": 1.00,
      "output": {
        "item": "vinery:savanna_grapes_red"
      },
      "minRolls": 1,
      "maxRolls": 2
    },
    {
      "chance": 0.05,
      "output": {
        "item": "vinery:savanna_grape_seeds_red"
      },
      "minRolls": 1,
      "maxRolls": 2
    }
  ]
});
<recipetype:botanypots:crop>.addJsonRecipe("botanypots_crops_vinery/savanna_grape_seeds_white",{
  "seed": {
    "item": "vinery:savanna_grape_seeds_white"
  },
  "categories": [
    "dirt"
  ],
  "growthTicks": 1200,
  "display": {
    "type": "botanypots:aging",
    "block": "vinery:savanna_grape_bush_white"
  },
  "drops": [
    {
      "chance": 1.00,
      "output": {
        "item": "vinery:savanna_grapes_white"
      },
      "minRolls": 1,
      "maxRolls": 2
    },
    {
      "chance": 0.05,
      "output": {
        "item": "vinery:savanna_grape_seeds_white"
      },
      "minRolls": 1,
      "maxRolls": 2
    }
  ]
});
<recipetype:botanypots:crop>.addJsonRecipe("botanypots_crops_vinery/taiga_grape_seeds_red",{
  "seed": {
    "item": "vinery:taiga_grape_seeds_red"
  },
  "categories": [
    "dirt"
  ],
  "growthTicks": 1200,
  "display": {
    "type": "botanypots:aging",
    "block": "vinery:taiga_grape_bush_red"
  },
  "drops": [
    {
      "chance": 1.00,
      "output": {
        "item": "vinery:taiga_grapes_red"
      },
      "minRolls": 1,
      "maxRolls": 2
    },
    {
      "chance": 0.05,
      "output": {
        "item": "vinery:taiga_grape_seeds_red"
      },
      "minRolls": 1,
      "maxRolls": 2
    }
  ]
});
<recipetype:botanypots:crop>.addJsonRecipe("botanypots_crops_vinery/taiga_grape_seeds_white",{
  "seed": {
    "item": "vinery:taiga_grape_seeds_white"
  },
  "categories": [
    "dirt"
  ],
  "growthTicks": 1200,
  "display": {
    "type": "botanypots:aging",
    "block": "vinery:taiga_grape_bush_white"
  },
  "drops": [
    {
      "chance": 1.00,
      "output": {
        "item": "vinery:taiga_grapes_white"
      },
      "minRolls": 1,
      "maxRolls": 2
    },
    {
      "chance": 0.05,
      "output": {
        "item": "vinery:taiga_grape_seeds_white"
      },
      "minRolls": 1,
      "maxRolls": 2
    }
  ]
});
<recipetype:botanypots:crop>.addJsonRecipe("botanypots_crops_vinery/jungle_grape_seeds_red",{
  "seed": {
    "item": "vinery:jungle_grape_seeds_red"
  },
  "categories": [
    "dirt"
  ],
  "growthTicks": 1200,
  "display": {
    "type": "botanypots:aging",
    "block": "vinery:jungle_grape_bush_red"
  },
  "drops": [
    {
      "chance": 1.00,
      "output": {
        "item": "vinery:jungle_grapes_red"
      },
      "minRolls": 1,
      "maxRolls": 2
    },
    {
      "chance": 0.05,
      "output": {
        "item": "vinery:jungle_grape_seeds_red"
      },
      "minRolls": 1,
      "maxRolls": 2
    }
  ]
});
<recipetype:botanypots:crop>.addJsonRecipe("botanypots_crops_vinery/jungle_grape_seeds_white",{
  "seed": {
    "item": "vinery:jungle_grape_seeds_white"
  },
  "categories": [
    "dirt"
  ],
  "growthTicks": 1200,
  "display": {
    "type": "botanypots:aging",
    "block": "vinery:jungle_grape_bush_white"
  },
  "drops": [
    {
      "chance": 1.00,
      "output": {
        "item": "vinery:jungle_grapes_white"
      },
      "minRolls": 1,
      "maxRolls": 2
    },
    {
      "chance": 0.05,
      "output": {
        "item": "vinery:jungle_grape_seeds_white"
      },
      "minRolls": 1,
      "maxRolls": 2
    }
  ]
});

println("Start script end_recipe_botany_pot.");