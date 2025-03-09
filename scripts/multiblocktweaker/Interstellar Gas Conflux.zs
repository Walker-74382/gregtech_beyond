import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.MetaTileEntities;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


var loc = "interstellar_gas_conflux";
var meta = 10135;
val interstellar_gas_conflux = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~CCCCC~","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","~CCSCC~")
                .aisle("~CCCCC~","FCPPPCF","~CPPPC~","~CPPPC~","~CPPPC~","~C~P~C~","FC~~~CF","~C~~~C~")
                .aisle("~CCCCC~","FCPPPCF","~CPPPC~","~CPPPC~","~CPPPC~","~CPPPC~","FC~~~CF","~C~~~C~")
                .aisle("~CCCCC~","FCPPPCF","~CPPPC~","~CPPPC~","~CPPPC~","~C~P~C~","FC~~~CF","~C~~~C~")
                .aisle("~CCCCC~","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","~CCCCC~")
                .aisle("~~~~~~~","~FFFFF~","~F~~~F~","~F~~~F~","~F~~~F~","~F~~~F~","~FFFFF~","~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 120)
                .whereOr("C", 
                <metastate:contenttweaker:pressurized_atmospheric_casing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:contenttweaker:pressurized_atmospheric_tank_casing>)
                .where("P", <metastate:contenttweaker:gas_intake_module>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" FFFFFF "," F    F "," F    F "," F    F "," FFFFFF ","        ")
                .aisle("CCCCCCCC","CCCCCCCC","CCCCCCCC","CCCCCCCC","CCCCCCCC"," FFFFFF ")
                .aisle("CCCCCCCC","   PPPPC","  PPPPPC","   PPPPC","CCCCCCCC"," F    F ")
                .aisle("SCCCCCCE","  PPPPPC"," PPPPPPC","  PPPPPC","CCCCCCCC"," F    F ")
                .aisle("CCCCCCCC","   PPPPC","  PPPPPC","   PPPPC","CCCCCCCC"," F    F ")
                .aisle("CCCCCCCC","CCCCCCCC","CCCCCCCC","CCCCCCCC","CCCCCCCC"," FFFFFF ")
                .aisle(" FFFFFF "," F    F "," F    F "," F    F "," FFFFFF ","        ")
                .where("F", <metastate:contenttweaker:pressurized_atmospheric_tank_casing>)
                .where("P", <metastate:contenttweaker:gas_intake_module>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:pressurized_atmospheric_casing>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[5], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(1)
                        .maxOutputs(9)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/pressurized_atmospheric_casing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;
