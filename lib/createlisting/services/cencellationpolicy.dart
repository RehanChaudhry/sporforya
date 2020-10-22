import 'package:flutter/material.dart';
import 'package:sporforya/createlisting/services/createpolicy.dart';
import 'package:sporforya/createlisting/services/nicejob.dart';
import 'package:sporforya/createlisting/services/scheduleandprice.dart';

class CencellationPolicy extends StatefulWidget {
  @override
  _CencellationPolicyState createState() => _CencellationPolicyState();
}

class _CencellationPolicyState extends State<CencellationPolicy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF8FAFF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 35, right: 0, top: 30, bottom: 10),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Image.asset("assets/backarrow.png"),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ScheduleAndPrice()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text(
                        "Service",
                        style: TextStyle(
                            fontFamily: 'SF-Pro-Bold',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //top progressbar
              Stack(
                children: [
                  SizedBox(
                    height: 10.0,
                    child: new Center(
                      child: new Container(
                        margin: new EdgeInsetsDirectional.only(
                            start: 1.0, end: 1.0),
                        height: 2.0,
                        color: Color(0xffE5E5E5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Container(
                        width: 375,
                        height: 4,
                        child: LinearProgressIndicator(
                            backgroundColor: Color(0xff21D17F),
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Color(0xff21D17F)))),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      "Cancellation Policy",
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
                padding: const EdgeInsets.only(left: 30, top: 10, right: 40),
                child: Text(
                  "Please choose your cancellation and refund policy that works best for your service",
                  style: TextStyle(
                      fontFamily: 'SF-Pro',
                      fontSize: 14,
                      color: Color(0xff3D3D3D)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 302,
                      height: 100,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/policybackground.png',
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/selectedicon.png',
                                  scale: 2.8,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 20, right: 30),
                                    child: Text(
                                      "Users can cancel and receive a refund up",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 20, top: 5),
                                    child: Text(
                                      "to ",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "\"24 hours\"",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro-Bold',
                                          color: Colors.black,
                                          fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      " before the start date ",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 20),
                                    child: Text(
                                      "(excluding processing fees).",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 302,
                      height: 100,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/policybackground.png',
                            fit: BoxFit.fill,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 20, right: 30),
                                    child: Text(
                                      "Users can cancel and receive a refund up",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 20, top: 5),
                                    child: Text(
                                      "to ",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "\"7 days\"",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro-Bold',
                                          color: Colors.black,
                                          fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      " before the start date ",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 20),
                                    child: Text(
                                      "(excluding processing fees).",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 302,
                      height: 100,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/policybackground.png',
                            fit: BoxFit.fill,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 20, right: 30),
                                    child: Text(
                                      "Users can cancel and receive a refund up",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 20, top: 5),
                                    child: Text(
                                      "to ",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "\"30 days\"",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro-Bold',
                                          color: Colors.black,
                                          fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      " before the start date ",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 20),
                                    child: Text(
                                      "(excluding processing fees).",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          color: Color(0xff707070),
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      width: 302,
                      height: 50,
                      child: Image.asset(
                        'assets/createpolicybutton.png',
                        fit: BoxFit.fill,
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => CreatePolicy()));
                },
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: 37.0, right: 37.0, top: 10.0, bottom: 70),
                child: SizedBox(
                  height: 46,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Color(0xffABDAEE),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => NiceJob()));
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'SF-Pro-Bold'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
