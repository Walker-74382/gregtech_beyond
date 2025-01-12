import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import crafttweaker.item.IItemCondition;

chemReactor.recipeBuilder()
	.inputs(<ore:dustSodiumHydroxide>)
	.fluidInputs(<liquid:acetic_acid>*144, <liquid:propylene>*600, <liquid:water>*144)
	.fluidOutputs(<liquid:glycidol>*500)
	.duration(200)
	.EUt(480)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:benzene>*720, <liquid:methanol>*720)
	.fluidOutputs(<liquid:toluene>*720, <liquid:water>*720)
	.duration(200)
	.EUt(180)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:acetone>*500, <liquid:hydrofluoric_acid>*3000)
	.fluidOutputs(<liquid:hexafluoroacetone>*500, <liquid:hydrochloric_acid>*3000)
	.duration(200)
	.EUt(180)
	.buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:hexafluoroacetone>*100, <liquid:toluene>*600)
    .fluidOutputs(<liquid:glycidol_preparation_mixture>*500)
    .duration(60)
    .EUt(20)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:glycidol>*800, <liquid:phenol>*1000, <liquid:glycidol_preparation_mixture>*1000)
	.fluidOutputs(<liquid:glycidol_ether>*800)
    .notConsumable(<ore:dustAluminiumChloride>)
	.duration(400)
	.EUt(480)
	.buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2017>)
	.fluidInputs(<liquid:nitric_acid>*144)
	.outputs(<gtadditions:ga_dust:32232>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:370>)
    .fluidInputs(<liquid:water>*500)
	.fluidOutputs(<liquid:cyandiamide>*720)
    .outputs(<gtadditions:ga_dust:24>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:ammonia>*1000, <liquid:cyandiamide>*1000)
	.fluidOutputs(<liquid:dicyandiamide>*1000, <gtadditions:ga_dust:32233>, <liquid:hydrogen>*1000)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:sulfur_hexafluoride>*144, <liquid:water>*1000, <liquid:dicyandiamide>*1000)
    .fluidOutputs(<liquid:resin_enhancer>*3000)
    .duration(60)
    .EUt(20)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32232>)
    .fluidInputs(<liquid:glycidol_ether>*1000, <liquid:resin_enhancer>*1000)
    .fluidOutputs(<liquid:unrefined_epoxy_resin>*2000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:unrefined_epoxy_resin>, <liquid:acetone>*1000)
    .fluidOutputs(<liquid:epoxid>*1000)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [], [<liquid:epoxid>*288], false);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:epoxid>*1000], false);
Utils.removeRecipeByOutput(lcr, [], [<liquid:epoxid>*288], false);
Utils.removeRecipeByOutput(lcr, [], [<liquid:epoxid>*1000], false);

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:chloroform>*1000, <liquid:hydrofluoric_acid>*500)
	.fluidOutputs(<liquid:chlorodifluoromethane>*1000)
	.duration(2400)
	.EUt(120)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2013>*2)
	.fluidInputs(<liquid:sulfuric_acid>*1000)
	.outputs(<gtadditions:ga_dust:32234>*5)
	.fluidOutputs(<liquid:hydrogen_sulfide>*1000, <liquid:oxygen>*1000)
	.duration(300)
	.EUt(120)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32234>*2)
	.fluidInputs(<liquid:chlorodifluoromethane>*1000)
	.fluidOutputs(<liquid:trifluoroethylene>*1000)
	.duration(2400)
	.EUt(120)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2772>*2)
	.fluidInputs(<liquid:trifluoroethylene>*1000)
	.fluidOutputs(<liquid:tetrafluoroethylene_mixture>*1000)
	.duration(1200)
	.EUt(350)
	.buildAndRegister();

pyro.recipeBuilder()
	.fluidInputs(<liquid:tetrafluoroethylene_mixture>*1000)
	.fluidOutputs(<liquid:tetrafluoroethylene>*1000)
	.duration(400)
	.EUt(200)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:hydrogen>*1000, <liquid:nonene>*500)
	.fluidOutputs(<liquid:nonanol>*1000)
	.notConsumable(<gregtech:meta_item_1:2044>)
	.duration(400)
	.EUt(500)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2373>)
	.fluidInputs(<liquid:phenol>*1000, <liquid:ethylene_oxide>*144, <liquid:nonanol>*500)
	.fluidOutputs(<liquid:peg_alkylphenol>*1000)
	.duration(1200)
	.EUt(450)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2373>)
	.fluidInputs(<liquid:peg_alkylphenol>*500, <liquid:sulfuric_acid>*1000)
	.fluidOutputs(<liquid:triton_x100>*1000, <liquid:water>*500)
	.duration(600)
	.EUt(350)
	.buildAndRegister();

mixer.recipeBuilder()
	.fluidInputs(<liquid:water>*1000, <liquid:ammonium_persulfate>*144, <liquid:triton_x100>*200)
	.fluidOutputs(<liquid:ptfe_preparation_mixture>*1000)
	.duration(1200)
	.EUt(120)
	.buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:tetrafluoroethylene>*1000, <liquid:ptfe_preparation_mixture>*1000)
    .fluidOutputs(<liquid:polytetrafluoroethylene>*2000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(polymerization_tank, [], [<liquid:polytetrafluoroethylene>*144], false);
Utils.removeRecipeByOutput(polymerization_tank, [], [<liquid:polytetrafluoroethylene>*288], false);
Utils.removeRecipeByOutput(polymerization_tank, [], [<liquid:polytetrafluoroethylene>*432], false);
Utils.removeRecipeByOutput(polymerization_tank, [], [<liquid:polytetrafluoroethylene>*576], false);
Utils.removeRecipeByOutput(lcr, [], [<liquid:tetraethylene>*1000], false);
Utils.removeRecipeByOutput(lcr, [], [<liquid:tetrafluoroethylene>*1000], false);