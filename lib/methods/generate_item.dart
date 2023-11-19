import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/container_item.dart';

Random random = Random();
List<Widget> generatedContainer = [];

void generateItem(List<Widget> generatedContainer) {
  for (int i = 0; i < 10; i++) {
    generatedContainer.add(ContainerItem(
      itemColor: Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      ),
      textData: '${i + 1}',
      // containerHeight: 150.0,
    ));
  }
}
