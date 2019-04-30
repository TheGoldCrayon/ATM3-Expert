import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.game.IGame;
import mods.thermalexpansion.RedstoneFurnace;

print("Thermal expansion changes");

val copper = <thermalfoundation:material:128>;
val tin = <thermalfoundation:material:129>;
val bronze = <thermalfoundation:material:163>;
val stonegear = <thermalfoundation:material:23>;
val ironplate = <thermalfoundation:material:32>;
val iron = <minecraft:iron_ingot>;
#Override gear recipes removal and iron plate

#compactor removal
recipes.removeShaped(<thermalexpansion:machine:5>);
mods.jei.JEI.hide(<thermalexpansion:machine:5>);
mods.jei.JEI.hideCategory("thermalexpansion.compactor");
mods.jei.JEI.hideCategory("thermalexpansion.compactor_mint");
mods.jei.JEI.hideCategory("thermalexpansion.compactor_gear");

#copper gear
recipes.removeShaped(<thermalfoundation:material:256>);

#bronze gear
recipes.removeShaped(<thermalfoundation:material:291>);

#tin gear
recipes.removeShaped(<thermalfoundation:material:257>);

#iron gear
recipes.removeShaped(<thermalfoundation:material:24>);

#Charcoal
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<thermalfoundation:material:801>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<thermalfoundation:material:801>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:log:3>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:hay_block>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:cactus>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:reeds>);

#thermal coils
recipes.addShaped("CTtransmission", <thermalfoundation:material:514>,
[[null, null, <actuallyadditions:item_crystal>],
[null, <thermalfoundation:material:130>, null],
[<actuallyadditions:item_crystal>, null, null]]);

recipes.addShaped("CTconductance", <thermalfoundation:material:515>, 
[[<actuallyadditions:item_crystal>, null, null],
[null, <thermalfoundation:material:161>, null], 
[null, null, <actuallyadditions:item_crystal>]]);

recipes.addShaped("CTreception", <thermalfoundation:material:513>, 
[[null, null, <actuallyadditions:item_crystal>],
[null, <minecraft:gold_ingot>, null], 
[<actuallyadditions:item_crystal>, null, null]]);

#thermal innovation base parts
recipes.addShaped("CTticasing", <thermalfoundation:material:640>, 
[[<thermalfoundation:material:353>, <actuallyadditions:block_crystal_empowered>, <thermalfoundation:material:353>],
[<thermalfoundation:material:353>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
[<thermalfoundation:material:353>, <thermalfoundation:material:353>, <thermalfoundation:material:353>]]);
recipes.addShaped("CTtidrill", <thermalfoundation:material:656>, 
[[<ic2:itemmisc:303>, <ic2:itemmisc:303>, null],
[<ic2:itemmisc:303>, <thermalfoundation:material:352>, <ic2:itemmisc:303>],
[null, <ic2:itemmisc:303>, <thermalfoundation:material:352>]]);
recipes.addShaped("CTtisaw", <thermalfoundation:material:657>,
[[null, <ic2:itemmisc:303>, null],
[<ic2:itemmisc:303>, <thermalfoundation:material:352>, <ic2:itemmisc:303>], 
[null, <ic2:itemmisc:303>, null]]);

#Leadstone fluxduct
recipes.remove(<thermaldynamics:duct_0>);
recipes.addShaped("CTleadstoneFS", <thermaldynamics:duct_0> * 4,
[[<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>],
[<actuallyadditions:item_crystal>, <thermalfoundation:glass:3>, <actuallyadditions:item_crystal>], 
[<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>]]);

#Redstone Fluxduct
recipes.remove(<thermaldynamics:duct_0:6>);
recipes.addShaped("CTredstoneFD", <thermaldynamics:duct_0:6> * 3,
[[null, null, null],
[<thermalfoundation:material:353>, <thermalfoundation:glass_alloy>, <thermalfoundation:material:353>], 
[null, null, null]]);

#redstone servo
recipes.addShaped(<thermalfoundation:material:512>, 
[[<actuallyadditions:item_crystal>, <minecraft:iron_ingot>, <actuallyadditions:item_crystal>],
[null, <minecraft:iron_ingot>, null], 
[<actuallyadditions:item_crystal>, <minecraft:iron_ingot>, <actuallyadditions:item_crystal>]]);

#machine frame
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped("CTthermalframe", <thermalexpansion:frame>, 
[[<thermalfoundation:material:32>, <extrautils2:decorativeglass:4>, <thermalfoundation:material:32>],
[<extrautils2:decorativeglass:4>, <thermalfoundation:material:290>, <extrautils2:decorativeglass:4>], 
[<thermalfoundation:material:32>, <extrautils2:decorativeglass:4>, <thermalfoundation:material:32>]]);

#device frame
recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped("CTthermaldevice", <thermalexpansion:frame:64>,
[[<thermalfoundation:material:321>, <minecraft:glass_pane>, <thermalfoundation:material:321>],
[<minecraft:glass_pane>, <thermalfoundation:material:256>, <minecraft:glass_pane>], 
[<thermalfoundation:material:321>, <minecraft:glass_pane>, <thermalfoundation:material:321>]]);

#steam dynamo (fixed due to coil moved to t2)
recipes.remove(<thermalexpansion:dynamo>);
recipes.addShaped("CTsteamdynamo", <thermalexpansion:dynamo>,
[[null, <ic2c_extras:heatconductor>, null],
[<ore:plateIron>, <thermalfoundation:material:256>, <ore:plateIron>],
[<thermalfoundation:material:320>, <immersiveengineering:material:6>, <thermalfoundation:material:320>]]);

#steam augment
recipes.remove(<thermalexpansion:augment:640>);
recipes.remove(<thermalexpansion:augment:576>);
recipes.addShaped("CTthermalturbine", <thermalexpansion:augment:640>, 
[[null, <thermalfoundation:material:24>, null],
[<thermalfoundation:material:128>, <ic2c_extras:heatconductor>, <thermalfoundation:material:128>],
[null, <thermalfoundation:material:128>, null]]);

#Reinforced Upgrade Kit changes
recipes.removeShaped(<thermalfoundation:upgrade:1>);

#Signalum Upgrade Kit changes
recipes.removeShaped(<thermalfoundation:upgrade:2>);

#Resonant Upgrade Kit changes
recipes.removeShaped(<thermalfoundation:upgrade:3>);
