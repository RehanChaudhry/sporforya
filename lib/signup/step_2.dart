import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sporforya/home/popup_1.dart';

class Step_2 extends StatefulWidget {
  @override
  _Step_2State createState() => _Step_2State();
}

class _Step_2State extends State<Step_2> {
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
                padding: EdgeInsets.only(top: 160),
                child: Image.asset(
                  "assets/ic_mail.png",
                  scale: 3.0,
                )),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                "Confirm Your Email",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'SF-Pro-Bold'),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                child: Text(
                  "We sent an email to dd@sporforya.com. Please click the link in the message to confirm your email.",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontFamily: 'SF-Pro'),
                )),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 200.0),
              child: SizedBox(
                height: 46,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Color(0xff65C51F),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Popup_1()));
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.bold),
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
