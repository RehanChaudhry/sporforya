import 'package:flutter/material.dart';
import 'package:sporforya/bottomnav/home/home.dart';
import 'package:sporforya/bottomnav/list.dart';
import 'package:sporforya/bottomnav/mail.dart';
import 'package:sporforya/bottomnav/profile.dart';

class Bottom_Nav extends StatefulWidget {
  @override
  _Bottom_NavState createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: IndexedStack(
          index: _currentIndex, children: [Home(), Mail(), List(), Profile()]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Image.asset("assets/ic_home.png",
                    scale: 3.5, color: Colors.grey[300])),
            activeIcon: Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Image.asset(
                  "assets/ic_home.png",
                  scale: 3.5,
                  color: Color(0xff2C99C6),
                )),
            title: Text("",
                style: TextStyle(color: Color(0xff000000), fontSize: 12)),
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Image.asset(
                  "assets/ic_mail_btm.png",
                  scale: 3.5,
                )),
            activeIcon: Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Image.asset(
                  "assets/ic_mail_btm.png",
                  scale: 3.5,
                  color: Color(0xff2C99C6),
                )),
            title: Text("",
                style: TextStyle(color: Color(0xff000000), fontSize: 12)),
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Image.asset("assets/ic_list.png",
                    scale: 3.5, color: Colors.grey[300])),
            activeIcon: Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Image.asset(
                  "assets/ic_list.png",
                  scale: 3.5,
                  color: Color(0xff2C99C6),
                )),
            title: Text(
              "",
              style: TextStyle(color: Color(0xff000000), fontSize: 12),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Image.asset(
                  "assets/ic_person.png",
                  scale: 3.5,
                )),
            activeIcon: Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Image.asset("assets/ic_person.png",
                    scale: 3.5, color: Color(0xff2C99C6))),
            title: Text(
              "",
              style: TextStyle(color: Color(0xff000000), fontSize: 12),
            ),
          ),
        ],
      ),
    ));
  }
}
