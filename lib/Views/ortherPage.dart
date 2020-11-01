
import 'package:MiniProject/Views/menuortherItemcard.dart';
import 'package:MiniProject/model/coffeeortherModel.dart';
import 'package:flutter/material.dart';

class OrtherPage extends StatefulWidget {
  OrtherPage({Key key}) : super(key: key);

  @override
  _OrtherPageState createState() => _OrtherPageState();
}

class _OrtherPageState extends State<OrtherPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menuorther.length,
        itemBuilder: (context, int key) {
          return MenuOrtherItemCard(index: key);
        },
      ),
    );
  }
}
