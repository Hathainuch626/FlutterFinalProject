import 'package:MiniProject/Screens/SignIn.dart';
import 'package:MiniProject/Views/home.dart';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF574141),
        title: Text("My Firebase App", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              color: Colors.white,
              onPressed: () {
                LoginPage();
                signOut(context);
              })
        ],
      ),
      backgroundColor: Color((0xFF7d5d5d)),
      
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(" Account User",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage('assets/049coffee.png'),
                height: 130,
                width: 130,
              ),
              SizedBox(
                height: 20,
              ),
              Text("ชื่อ: user123",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              Text("ชื่อผู้ใช้: Jessica",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
        onPressed: () {
          MaterialPageRoute route =
              MaterialPageRoute(builder: (value) => Home());
          Navigator.push(context, route);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                ],
              ),

              // Right Tab bar icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void signOut(BuildContext context) {
    //_auth.signOut();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
        ModalRoute.withName('/'));
  }
}
