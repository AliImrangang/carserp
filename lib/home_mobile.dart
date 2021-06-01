import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,

        children: [
           Card(
            elevation: 5,
            color: Colors.black,
            margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "KHUSI MOTORS Sign in",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Sign in",
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  buildCustomTestField(
                      "Email Address", "you@example.com", Icons.mail, false),
                  SizedBox(height: 20),
                  buildCustomTestField(
                      "Password", "Enter your password", Icons.lock, true),
                  SizedBox(height: 15.0),
                  Align(
                    alignment: Alignment.topRight,
                    child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot  password?",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600),
                      ),
                      color: Color(0xFFF3630B),
                    ),
                  ),
                  SizedBox(height: 23.0),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            )),
                        TextSpan(
                            text: "Sign up",
                            style: TextStyle(
                              color: Color(0xFFF3630B),
                              fontSize: 18.0,
                            ))
                      ]))

                ],
              ),
            ),
          ),
        ],
        ),
      ),
    );
  }

  Widget buildCustomTestField(
      String title, String hintText, IconData icon, bool isPassword) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        TextFormField(
          obscureText: isPassword,
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              hintText: hintText,
              prefixIcon: Icon(
                icon,
                color: Colors.white,
              ),
              hintStyle: TextStyle(color: Colors.white)),
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
