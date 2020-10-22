import 'package:flutter/material.dart';
import 'package:sporforya/bottomnav/bottomnav.dart';

class Popup_3 extends StatefulWidget {
  @override
  _Popup_3State createState() => _Popup_3State();
}

class _Popup_3State extends State<Popup_3> {
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
                Color.fromRGBO(82, 164, 199, 0),
                Color.fromRGBO(51, 180, 235, 0.78),
                Color.fromRGBO(0, 136, 255, 1),
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
                "Share your skills",
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
                    "Private Lessons and Training",
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
                        builder: (BuildContext context) => Bottom_Nav()));
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
