import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            body: Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/images.png'),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.black,
                    prefixIcon: Icon(Icons.person),
                    labelText: "Enter your username",
                    border: OutlineInputBorder())),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.black,
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Enter your Password",
                    border: OutlineInputBorder())),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      child: Text("If You Dont Have Account"),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("SignUp");
                        },
                        child: Text("Click Here",
                            style: TextStyle(color: Colors.blue))),
                  ],
                )),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("HomePage");
              },
              color: Colors.black,
              child: Text("Login", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    ));
  }
}