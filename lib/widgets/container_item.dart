import 'package:flutter/material.dart';

class ContainerItem extends StatelessWidget {
  ContainerItem({
    super.key,
    required this.itemColor,
    required this.textData,
  });

  final Color itemColor;
  final String textData;
  late double containerHeight = 100;
  late double containerWidth = 200;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: itemColor, borderRadius: BorderRadius.circular(20)),
        height: containerHeight,
        width: containerWidth,
        child: Center(
          child: Text(textData),
        ),
      ),
    );
  }
}
