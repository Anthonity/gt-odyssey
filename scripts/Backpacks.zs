import mods.tconstruct.Drying;

//Bound Leather
recipes.removeShaped(<backpack:bound_leather>, [[<minecraft:string>, <minecraft:string>, <minecraft:string>],[<minecraft:leather>, <minecraft:string>, <minecraft:leather>], [<minecraft:string>, <minecraft:string>, <minecraft:string>]]);

recipes.addShaped(<backpack:bound_leather>, [[<ore:string>, <ore:itemLeather>, <ore:string>],[<ore:materialCloth>, <ore:toolMallet>, <ore:materialCloth>], [<ore:string>, <ore:itemLeather>, <ore:string>]]);

recipes.addShaped(<backpack:bound_leather>, [[<ore:string>, <ore:materialCloth>, <ore:string>],[<ore:itemLeather>, <ore:toolMallet>, <ore:itemLeather>], [<ore:string>, <ore:materialCloth>, <ore:string>]]);

//Tanned Leather
furnace.remove(<backpack:tanned_leather>, <backpack:bound_leather>);

mods.tconstruct.Drying.addRecipe(<backpack:tanned_leather>,<backpack:bound_leather>, 6000);