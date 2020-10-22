import 'package:flutter/material.dart';
import 'package:sporforya/createlisting/createlisting.dart';

class FacilityNiceJob extends StatefulWidget {
  @override
  _FacilityNiceJobState createState() => _FacilityNiceJobState();
}

class _FacilityNiceJobState extends State<FacilityNiceJob> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF8FAFF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text(
                      "Nice Job!",
                      style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Your facility is nearly ready\nto go live",
                  style: TextStyle(
                      fontFamily: 'SF-Pro',
                      fontSize: 20,
                      color: Color(0xff707070)),
                  textAlign: TextAlign.center,
                ),
              ),
              Stack(
                children: [
                  Image.asset(
                    'assets/nicejobcontainer.png',
                    fit: BoxFit.fill,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 40, left: 60, right: 30),
                            child: Text(
                              "Archery",
                              style: TextStyle(
                                  fontFamily: 'SF-Pro-Bold',
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 125, top: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/selectedicon.png',
                                  scale: 2.6,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 60, top: 10),
                            child: Image.asset(
                              'assets/locationblue.png',
                              scale: 2.6,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "Islamabad Sports Complex",
                              style: TextStyle(
                                  fontFamily: 'SF-Pro',
                                  color: Colors.black,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 62, right: 30),
                            child: Text(
                              "1 Schedule",
                              style: TextStyle(
                                  fontFamily: 'SF-Pro',
                                  color: Color(0xff707070),
                                  fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 60, top: 26),
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  fontFamily: 'SF-Pro',
                                  color: Color(0xff2C99C6),
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 37.0, right: 37.0, top: 150.0),
                child: SizedBox(
                  height: 46,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Color(0xff2C99C6),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => CreateListing()));
                    },
                    child: Text(
                      "Publish Listing",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'SF-Pro-Bold'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      width: 302,
                      height: 50,
                      child: Image.asset(
                        'assets/createlistingbutton.png',
                        fit: BoxFit.fill,
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => CreateListing()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
