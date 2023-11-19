import 'package:flutter/material.dart';

import '../methods/generate_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // EXTRACT METHOD
    generateItem(generatedContainer);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: generatedContainer,
        ),
      ),
    );
  }
}
