import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i_baubley_heart_canisters(m_baubley_heart_canisters as IItemStack, s_baubley_heart_canisters as string) as void {
	JEI.addDescription(m_baubley_heart_canisters, [s_baubley_heart_canisters]);	
}

i_baubley_heart_canisters(<item:bhc:red_heart>, "Red Heart, drop from hostile mobs.");
i_baubley_heart_canisters(<item:bhc:yellow_heart>, "Yellow Heart, drop from the Wither boss.");
i_baubley_heart_canisters(<item:bhc:green_heart>, "Green Heart, drop from the Ender Dragon boss.");
i_baubley_heart_canisters(<item:bhc:blue_heart>, "Blue Hearts, drop from the Evokers.");
i_baubley_heart_canisters(<item:bhc:wither_bone>, "Wither Bone, drop from Wither Skeleton mobs.");