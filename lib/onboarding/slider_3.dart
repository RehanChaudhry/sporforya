import 'package:flutter/material.dart';
import 'package:sporforya/signup/signup.dart';

class Slider_3 extends StatefulWidget {
  @override
  _Slider_3State createState() => _Slider_3State();
}

class _Slider_3State extends State<Slider_3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/slide_3_bg.png"),
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
                  Color.fromRGBO(255, 255, 255, 0),
                  Color.fromRGBO(21, 103, 147, 0.58),
                  Color.fromRGBO(56, 90, 151, 1),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 470, left: 10, right: 10),
            child: Column(
              children: [
                Text(
                  "Join manage and share the sports you love all in one place",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SF-Pro-Bold'),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 80.0,
                  ),
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
