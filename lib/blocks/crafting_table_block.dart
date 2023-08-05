import 'package:flame/events.dart';
import 'package:minecraft/components/block_component.dart';
import 'package:minecraft/global/global_game_reference.dart';
import 'package:minecraft/global/inventory.dart';
import 'package:minecraft/resources/blocks.dart';

class CraftingTableBlock extends BlockComponent {
  CraftingTableBlock({required super.chunkIndex, required super.blockIndex})
      : super(block: Blocks.craftingTable);

  InventoryManager inventoryManager =
      GlobalGameReference.instance.gameReference.worldData.inventoryManager;

  @override
  bool onTapDown(TapDownEvent event) {
    //PLayer is not holding anyhting
    if (inventoryManager
            .inventorySlots[inventoryManager.currentSelectedInventorySlot.value]
            .block ==
        null) {
      GlobalGameReference.instance.gameReference.worldData.craftingManager
          .craftingInventoryIsOpen.value = true;
    } else {
      //break block
      super.onTapDown(event);
    }

    return true;
  }
}
