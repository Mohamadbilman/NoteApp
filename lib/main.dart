import 'package:flutter/material.dart';
import 'package:flutter_app/auth/Login.dart';
import 'package:flutter_app/auth/SignUp.dart';
import 'home/HomePage.dart';
import 'home/addnote.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        "Login": (context) => Login(),
        "SignUp": (context) => SignUp(),
        "HomePage": (context) => HomePage(),
        "AddNote": (context) => AddNote(),
      },
    );
  }
}
