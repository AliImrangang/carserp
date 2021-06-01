import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/08/28/16/38/stars-912134_960_720.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 5,
            color: Colors.black,
            margin: EdgeInsets.symmetric(horizontal: 130, vertical: 25),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              width: double.infinity,
              height: 650.0,
              child: Padding(
                padding: EdgeInsets.all(35.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
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
                              height: 20.0,
                            ),
                            buildCustomTestField("Email Address",
                                "you@example.com", Icons.mail, false),
                            SizedBox(
                              height: 25,
                            ),
                            buildCustomTestField("Password",
                                "Enter your password", Icons.lock, true),
                            SizedBox(height: 25),
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
                            SizedBox(height: 10.0),
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
                    SizedBox(width: 25),
                    Expanded(
                        flex: 2,
                        child: Center(
                          child: Material(
                            borderRadius: BorderRadius.circular(17.0),
                            child: Image.asset(
                              "images/loginn.png",
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
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
