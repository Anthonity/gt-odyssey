#loader gregtech

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.material.Material;
import mods.gregtech.material.Elements;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.ore.OrePrefix;

//Thaumium
var element_thaumium = Elements.add(26, 30, -1, null, "Thaumium", "Fe*", false);

var thaumium = MaterialBuilder(32001, "thaumium")
    .element("Thaumium")
    .ingot().fluid()
    .color(0x5A4B89).iconSet("metallic")
    .flags(["generate_plate", "disable_decomposition"])
    .build();

//Void Metal
var element_void_metal = Elements.add(0, 0, -1, null, "Void", "Vo", false);

var void_metal = MaterialBuilder(32002, "void_metal")
    .element("Void")
    .ingot().fluid()
    .color(0x220F3A).iconSet("metallic")
    .flags(["generate_plate", "disable_decomposition"])
    .build();

//Ichorium
var element_ichorium = Elements.add(16, 18, -1, null, "Ichorium", "Ic", false);

var ichorium = MaterialBuilder(32003, "ichorium")
    .element("Ichorium")
    .ingot().fluid()
    .color(0xFF9900).iconSet("shiny")
    .flags(["generate_plate", "disable_decomposition"])
    .build();

//Amber
val amber = MaterialBuilder(32004, "amber")
    .gem()
    .color(0xF67B00).iconSet("ruby")
    .flags(["generate_plate", "generate_rod", "decomposition_by_electrolyzing"])
    .components([<material:carbon> * 10, <material:hydrogen> * 10, <material:oxygen> * 16])
    .build();

//Tanzanite
val tanzanite = MaterialBuilder(32005, "tanzanite")
    .gem()
    .color(0x7701D3).iconSet("gem_vertical")
    .flags(["generate_plate", "generate_rod", "decomposition_by_electrolyzing"])
    .components([<material:calcium> * 2, <material:aluminium> * 3, <material:silicon> * 3, <material:hydrogen> * 1, <material:oxygen> * 13])
    .build();

//Peridot
val peridot = MaterialBuilder(32006, "peridot")
    .gem()
    .color(0x92BB5C).iconSet("gem_horizontal")
    .flags(["generate_plate", "generate_rod", "decomposition_by_electrolyzing"])
    .components([<material:magnesium> * 2, <material:iron> * 1, <material:silicon_dioxide> * 2])
    .build();

//Manasteel
val manasteel = MaterialBuilder(32007, "manasteel")
    .ingot().fluid()
    .color(0x3389FF).iconSet("shiny")
    .flags(["generate_plate", "disable_decomposition"])
    .build();

//Elementium
val elven_elementium = MaterialBuilder(32008, "elven_elementium")
    .ingot().fluid()
    .color(0xF15CAE).iconSet("shiny")
    .flags(["generate_plate", "disable_decomposition"])
    .build();

//Terrasteel
val terrasteel = MaterialBuilder(32009, "terrasteel")
    .ingot().fluid()
    .color(0x5CFF0E).iconSet("shiny")
    .flags(["generate_plate", "disable_decomposition"])
    .build();

//Aquamarine
val aquamarine = MaterialBuilder(32010, "aquamarine")
    .gem()
    .color(0x0094FF).iconSet("gem_horizontal")
    .flags(["generate_plate", "generate_rod", "decomposition_by_electrolyzing"])
	.components([<material:beryllium> * 3, <material:aluminium> * 2, <material:silicon> * 6, <material:oxygen> * 18])
    .build();

//Starmetal
val astral_starmetal = MaterialBuilder(32011, "astral_starmetal")
    .ingot().fluid()
    .color(0x102454).iconSet("bright")
	.blastTemp(2000, "MID", 120, 800)
    .flags(["generate_plate", "disable_decomposition"])
    .build();

//Ardite
var element_ardite = Elements.add(27, 32, -1, null, "Ardite", "Ai", false);

var ardite = MaterialBuilder(32012, "ardite")
    .element("Ardite")
    .ingot().fluid()
    .color(0xF95300).iconSet("metallic")
    .flags(["generate_plate", "disable_decomposition"])
    .build();
	
//Manyullyn
var manyullyn = MaterialBuilder(32013, "manyullyn")
    .ingot().fluid()
    .color(0xBD7FFF).iconSet("metallic")
    .flags(["generate_plate"])
    .components([<material:cobalt> * 1, <material:ardite> * 1])
    .build();

//Conductive Iron
var conductive_iron = MaterialBuilder(32014, "conductive_iron")
    .ingot().fluid()
    .color(0xA85C5E).iconSet("metallic")
    .flags("generate_plate")
    .components([<material:iron> * 1, <material:copper> * 1, <material:redstone> * 1])
    .build();
	
//Energetic Alloy
var energetic_alloy = MaterialBuilder(32015, "energetic_alloy")
    .ingot().fluid()
    .color(0xD9934C).iconSet("shiny")
    .flags("generate_plate")
    .components([<material:ardite> * 1, <material:rose_gold> * 1, <material:redstone> * 1, <material:glowstone> * 1])
    .build();
	
//Vibrant Alloy
var vibrant_alloy = MaterialBuilder(32016, "vibrant_alloy")
    .ingot().fluid()
    .color(0xB6C870).iconSet("shiny")
    .flags("generate_plate")
    .components([<material:energetic_alloy> * 1, <material:ender_pearl> * 1])
    .build();
	
//Electrical Steel
var electrical_steel = MaterialBuilder(32017, "electrical_steel")
    .ingot().fluid()
    .color(0xA9A9A9).iconSet("metallic")
    .flags("generate_plate")
    .components([<material:steel> * 1, <material:nickel> * 1, <material:silicon> * 1])
    .build();

//Pulsating Iron
var pulsating_iron = MaterialBuilder(32018, "pulsating_iron")
    .ingot().fluid()
    .color(0x2C9044).iconSet("metallic")
    .flags("generate_plate")
    .components([<material:iron> * 1, <material:invar> * 1, <material:ender_pearl> * 1])
    .build();