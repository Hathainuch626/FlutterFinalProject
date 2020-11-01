import 'package:MiniProject/Views/menucoldItemcard.dart';
import 'package:MiniProject/model/coffeecoldModel.dart';
import 'package:flutter/material.dart';

class ColdCoffeePage extends StatefulWidget {
  ColdCoffeePage({Key key}) : super(key: key);

  @override
  _ColdCoffeePageState createState() => _ColdCoffeePageState();
}

class _ColdCoffeePageState extends State<ColdCoffeePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menucold.length,
        itemBuilder: (context, int key) {
          return MenuColdItemCard(index: key);
        },
      ),
    );
  }
}
