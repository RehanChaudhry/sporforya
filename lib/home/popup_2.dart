import 'package:flutter/material.dart';
import 'package:sporforya/home/popup_3.dart';

class Popup_2 extends StatefulWidget {
  @override
  _Popup_2State createState() => _Popup_2State();
}

class _Popup_2State extends State<Popup_2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/popup_bg_2.png"),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    maxRadius: 12,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.clear,
                      size: 16,
                      color: Color(0xff65C51F),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 150),
              child: Text(
                "Do you have",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'SF-Pro',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: SizedBox(
                  width: 290.0,
                  child: Text(
                    "Teams, Classes, or Camps?",
                    style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "Promote them here for Free!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'SF-Pro',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 60.0),
              child: SizedBox(
                height: 65,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Color(0xff65C51F),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Popup_3()));
                  },
                  child: Text(
                    "Become a Provider",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    )));
  }
}
