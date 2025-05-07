import 'package:coffee_card/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
      color: Colors.brown[50],
      child: Column(
        children: [
          Row(
            children: [
              Text("Strength: ", style: TextStyle(fontWeight: FontWeight.bold)),
              for (int i = 0; i < strength; i++)
                Image.asset(
                  "assets/img/coffee_bean.png",
                  width: 25,
                  color: Colors.brown[50],
                  colorBlendMode: BlendMode.multiply,
                ),
              Expanded(child: SizedBox()),  
              StyledButton(
                onPressed: increaseStrength,
                child: Icon(Icons.plus_one),
              ),
            ],
          ),
          Row(
            children: [
              Text("Sugars: ", style: TextStyle(fontWeight: FontWeight.bold)),
              if (sugars == 0)
                const Text(
                  "No sugars...",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              for (int i = 0; i < sugars; i++)
                Image.asset(
                  "assets/img/sugar_cube.png",
                  width: 25,
                  color: Colors.brown[50],
                  colorBlendMode: BlendMode.multiply,
                ),
              Expanded(child: SizedBox()),
              StyledButton(
                onPressed: increaseSugar,
                child: Icon(Icons.plus_one),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
