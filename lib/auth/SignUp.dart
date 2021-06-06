import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.black,
                    prefixIcon: Icon(Icons.mail),
                    labelText: "Enter your E-mail",
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
                      child: Text("If You Have Account"),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("Login");
                        },
                        child: Text("Click Here",
                            style: TextStyle(color: Colors.blue))),
                  ],
                )),
            MaterialButton(
              onPressed: () {},
              color: Colors.black,
              child: Text("SignUp", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    ));
  }
}
