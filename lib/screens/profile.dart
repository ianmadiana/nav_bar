import 'package:flutter/material.dart';
import 'package:to_do_cats/methods/generate_item.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: generatedContainer,
            ),
          ),
        )
      ],
    );
  }
}
