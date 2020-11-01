import 'package:MiniProject/model/coffeeModel.dart';
import 'package:flutter/material.dart';
import 'menuItemcard.dart';


class HotCoffeePage extends StatefulWidget {
  HotCoffeePage({Key key}) : super(key: key);

  @override
  _HotCoffeePageState createState() => _HotCoffeePageState();
}
class _HotCoffeePageState extends State<HotCoffeePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return MenuItemCard(index: key);
        },
      ),
    );
  }
}