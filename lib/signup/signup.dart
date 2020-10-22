import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sporforya/signup/step_1.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/ic_popup_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Color.fromRGBO(59, 89, 152, 1).withOpacity(0.9),
                Color.fromRGBO(13, 107, 147, 1).withOpacity(0.9),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      "Let's get started!",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'SF-Pro-Bold'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: SizedBox(
                      width: 270,
                      child: Text(
                        "Sign up or log in to find sports near you",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'SF-Pro'),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                    child: SizedBox(
                      height: 46,
                      child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/ic_facebook.png",
                              scale: 3.0,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Continue with Facebook",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'SF-Pro'),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                    child: SizedBox(
                      height: 46,
                      child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/ic_google.png",
                              scale: 3.0,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Text("Continue with Google",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'SF-Pro')))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                    child: SizedBox(
                      height: 46,
                      child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/ic_wechat.png",
                              scale: 3.0,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Text("Continue with WeChat",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'SF-Pro')))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            height: 1.0,
                            width: 100,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'SF-Pro'),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            height: 1.0,
                            width: 100,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                    child: SizedBox(
                      height: 46,
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        color: Color(0xff65C51F),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Step_1()));
                        },
                        child: Text(
                          "Create an account",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'SF-Pro-Bold'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      "Continue as guest",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF-Pro-Bold'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Text(
                      "By continuing, you agree to our",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'SF-Pro'),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                    child: SizedBox(
                      width: 260,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Terms of Service",
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'SF-Pro')),
                          TextSpan(
                              text: " and our ",
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'SF-Pro')),
                          TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  fontFamily: 'SF-Pro')),
                        ]),
                      ),
                    ),
                  ),
                  Container(
                    height: 20.0,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    )));
  }
}
