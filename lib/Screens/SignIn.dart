import 'package:MiniProject/Screens/HomePage.dart';
import 'package:MiniProject/Screens/ResetPassword.dart';
import 'package:MiniProject/Screens/normal_Dialog.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'SignUp.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username, password;
  final database = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFb39c85),
                  Color(0xFFffdfbe),
                ],
              ),
            ),
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: Image(
                          image: AssetImage('assets/food.png'),
                          height: 130,
                          width: 130,
                        )),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Text(
                            "MyAppCoffee",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF415741),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xFF415741),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //Text("Firebase Login Assignment",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 330,
                          child: TextField(
                            onChanged: (value) => username = value.trim(),
                            decoration: InputDecoration(
                                fillColor: Colors.orange[200],
                                filled: true,
                                labelText: 'ชื่อผู้ใช้ :',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 330,
                          child: TextField(
                            onChanged: (value) => password = value.trim(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.orange[200],
                                filled: true,
                                labelText: 'รหัสผ่าน :',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        InkWell(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "ลืมรหัสผ่าน ?",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ResetPage();
                            }));
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              onPressed: () {
                                if (username == null ||
                                    username.isEmpty ||
                                    password == null ||
                                    password.isEmpty) {
                                  normalDialog(
                                      context, 'กรุณากรอกข้อมูลต่อไปนี้');
                                } else {
                                  logIn();
                                }
                              },
                              color: Color(0xFF707d5d),
                              child: Text(
                                'เข้าสู่ระบบ',
                                style: TextStyle(
                                    color: Color(0xFFefffef), fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "ยังไม่มีบัญชี?",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignUp();
                              }));
                            },
                            child: Text(
                              "สมัครสมาชิก",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF415741),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<Null> logIn() async {
    var data = database.child("user");
    await data.child(username).once().then((DataSnapshot snapshot) {
      if (username == '${snapshot.value['Username']}' &&
          password == '${snapshot.value['Password']}') {
        MaterialPageRoute route = MaterialPageRoute(
          builder: (context) => HomePage(),
        );
        Navigator.pushAndRemoveUntil(context, route, (route) => false);
      } else if (username != '${snapshot.value['Username']}' ||
          password != '${snapshot.value['Password']}') {
        //normalDialog(context, 'Invalid username or password.');
      }
    });
  }
}
