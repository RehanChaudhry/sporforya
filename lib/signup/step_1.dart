import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sporforya/signup/step_2.dart';

class Step_1 extends StatefulWidget {
  @override
  _Step_1State createState() => _Step_1State();
}

class _Step_1State extends State<Step_1> {
  Color gradientStart = Color(0xff3B5998); //Change start gradient color here
  Color gradientEnd = Color(0xff0D6B93); //Change end gradient color here

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [gradientStart, gradientEnd],
            begin: const FractionalOffset(0.5, 0.0),
            end: const FractionalOffset(0.0, 0.5),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Image.asset(
                  "assets/ic_logo.png",
                  scale: 3.0,
                )),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'SF-Pro-Bold'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email address",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SF-Pro-Bold',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Theme(
                data:
                    Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: TextFormField(
                  autofocus: false,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(fontSize: 18, fontFamily: 'SF-Pro'),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 10.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'SF-Pro-Bold'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Theme(
                data:
                    Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: TextFormField(
                  autofocus: false,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(fontSize: 18, fontFamily: 'SF-Pro'),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 10.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 200.0),
              child: SizedBox(
                height: 46,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Color(0xff65C51F),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Step_2()));
                  },
                  child: Text(
                    "Done",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'SF-Pro-Bold'),
                  ),
                ),
              ),
            ),
            Container(
              height: 60.0,
            )
          ],
        ),
      ),
    )));
  }
}
