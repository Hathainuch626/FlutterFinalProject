import 'package:MiniProject/Screens/SignIn.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name, username, password, conpass;
  final database = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFb39c85),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 0,
                        ),
                        Text(
                          "สร้างบัญชีผู้ใช้ใหม่",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF574141),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 330,
                          child: TextField(
                            onChanged: (value) => name = value.trim(),
                            decoration: InputDecoration(
                                fillColor: Colors.orange[200],
                                filled: true,
                                labelText: 'ชื่อ :',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: 330,
                          child: TextField(
                            onChanged: (value) => username = value.trim(),
                            decoration: InputDecoration(
                                fillColor: Colors.orange[200],
                                filled: true,
                                labelText: 'ชื่อผู้ใช้:',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: 330,
                          child: TextField(
                            onChanged: (value) => password = value.trim(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.orange[200],
                                filled: true,
                                labelText: 'รหัสผ่าน:',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
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
                                if (name == null ||
                                    name.isEmpty ||
                                    username == null ||
                                    username.isEmpty ||
                                    password == null ||
                                    password.isEmpty ||
                                    conpass == null ||
                                    conpass.isEmpty) {
                                } else if (password != conpass ||
                                    conpass != password &&
                                        password.length >= 6) {
                                } else {
                                  var data = database.child("user");
                                  data
                                      .child(username)
                                      .once()
                                      .then((DataSnapshot snapshot) {
                                    if ('${snapshot.value}' == 'null') {
                                      signIn();
                                    } else {}
                                  });
                                }
                              },
                              color: Color(0xFF7d5d5d),
                              child: Text(
                                'สมัครสมาชิก',
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "เป็นสมาชิกอยู่แล้ว?",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "เข้าสู่ระบบ",
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
    );
  }

  Future<Null> signIn() async {
    var data = database.child("user");
    data.child(username).set({
      'Name': name,
      'Username': username,
      'Password': password,
    });
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => LoginPage(),
    );
    Navigator.pushAndRemoveUntil(context, route, (route) => false);
  }

//   signUp() {
//     String email = emailController.text.trim();
//     String password = passwordController.text.trim();
//     String confirmPassword = confirmController.text.trim();
//     if (password == confirmPassword && password.length >= 6) {
//       _auth
//           .createUserWithEmailAndPassword(email: email, password: password)
//           .then((user) {
//         print("Sign up user successful.");
//         Navigator.pushAndRemoveUntil(
//             context,
//             MaterialPageRoute(builder: (context) => HomePage()),
//             ModalRoute.withName('/'));
//       }).catchError((error) {
//         print(error.message);
//       });
//     } else {
//       print("Password and Confirm-password is not match.");
//     }
//   }
}
