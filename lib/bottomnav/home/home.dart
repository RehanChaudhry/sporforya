import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sporforya/bottomnav/home/messageslist.dart';
import 'package:sporforya/bottomnav/home/notificationlist.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffF8FAFF),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/sporforya.png',
                            scale: 2.6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: GestureDetector(
                            child: Image.asset(
                              'assets/messageicon.png',
                              scale: 2.6,
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          MessagesList()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: GestureDetector(
                            child: Image.asset(
                              'assets/notification.png',
                              scale: 2.6,
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          NotificationList()));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset('assets/seperatorline.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              fontFamily: 'SF-Pro-Bold', fontSize: 32),
                        ),
                        Text(
                          " John!",
                          style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              fontSize: 32,
                              color: Color(0xff2C99C6)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: GestureDetector(
                      child: Image.asset(
                        'assets/createyourlisting.png',
                        fit: BoxFit.cover,
                        scale: 2.9,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Image.asset(
                      'assets/payoutmethod.png',
                      fit: BoxFit.cover,
                      scale: 2.9,
                    ),
                  ),
                ],
              ),
            )));
  }
}
