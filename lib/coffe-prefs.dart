import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
      color: Colors.brown[50],
      child: Column(
        children: [
          Row(children: [Text("Strength: "), Text('3'), SizedBox(width: 50)]),
          Row(children: [Text("Sugars: "), Text('2'), SizedBox(width: 50)]),
        ],
      ),
    );
  }
}
