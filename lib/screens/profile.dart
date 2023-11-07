import 'package:flutter/material.dart';

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
              children: [
                Container(
                  height: 50,
                  width: 200,
                  child: Text('data'),
                  color: Colors.red,
                ),
                SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 200,
                  child: Text('data'),
                  color: Colors.green,
                ),
                SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 200,
                  child: Text('data'),
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 200,
                  child: Text('data'),
                  color: Colors.purple,
                ),
                SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 200,
                  child: Text('data'),
                  color: Colors.amber,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
