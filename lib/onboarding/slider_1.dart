import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sporforya/signup/signup.dart';

class Slider_1 extends StatefulWidget {
  @override
  _Slider_1State createState() => _Slider_1State();
}

class _Slider_1State extends State<Slider_1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/slide_1_bg.png"),
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
                  Color.fromRGBO(82, 164, 199, 0),
                  Color.fromRGBO(51, 180, 235, 0.78),
                  Color.fromRGBO(0, 136, 255, 1),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 200),
            child: Column(
              children: [
                Center(
                    child: Text(
                  "Welcome To",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'SF-Pro-Bold'),
                )),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Center(
                      child: Text(
                    "SPORFORYA",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 43,
                        color: Colors.white,
                        fontFamily: 'SF-Pro-Bold'),
                  )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 180.0, left: 10, right: 10),
                    child: Text(
                      "Find, compare and book sports activities easily",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SF-Pro-Bold'),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 80.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => SignUp()));
                    },
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                          fontSize: 19,
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontFamily: 'SF-Pro'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
