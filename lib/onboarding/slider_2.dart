import 'package:flutter/material.dart';
import 'package:sporforya/signup/signup.dart';

class Slider_2 extends StatefulWidget {
  @override
  _Slider_2State createState() => _Slider_2State();
}

class _Slider_2State extends State<Slider_2> {
  Color gradientStart = Color(0xff3B5998); //Change start gradient color here
  Color gradientEnd = Color(0xff0D6B93);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/slide_2_bg.png"),
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
                  Color.fromRGBO(54, 151, 31, 0),
                  Color.fromRGBO(86, 125, 70, 0.68),
                  Color.fromRGBO(57, 108, 36, 1),
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
