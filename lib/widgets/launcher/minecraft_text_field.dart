import 'package:flutter/material.dart';
import 'package:minecraft/utils/game_methods.dart';

class MinecraftTextField extends StatelessWidget {
  final Size size;
  final TextEditingController textEditingController;
  const MinecraftTextField(
      {Key? key, required this.size, required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Colors.grey,
          width: 3,
        ),
      ),
      child: TextField(
        controller: textEditingController,
        cursorColor: Colors.white,
        style: GameMethods.instance.minecraftTextStyle
            .copyWith(color: Colors.grey[300]),
        decoration: const InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
