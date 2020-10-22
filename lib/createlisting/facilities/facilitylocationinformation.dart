import 'package:flutter/material.dart';
import 'package:sporforya/createlisting/events/eventfacilities.dart';
import 'package:sporforya/createlisting/events/eventparticipantparticulars.dart';
import 'package:sporforya/createlisting/facilities/facilityfacilities.dart';
import 'package:sporforya/createlisting/facilities/facilityparticipantparticulars.dart';
import 'package:sporforya/createlisting/services/facilities.dart';
import 'package:sporforya/createlisting/services/participantparticulars.dart';

class FacilityLocationInformation extends StatefulWidget {
  @override
  _FacilityLocationInformationState createState() =>
      _FacilityLocationInformationState();
}

class _FacilityLocationInformationState
    extends State<FacilityLocationInformation> {
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
                                FacilityParticipantParticulars()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text(
                        "Facilities",
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
                        width: 223,
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
                      "Location Information",
                      style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10, right: 40),
                child: Text(
                  "Please tell us where your facility is located",
                  style: TextStyle(
                      fontFamily: 'SF-Pro',
                      fontSize: 14,
                      color: Color(0xff3D3D3D)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Row(
                  children: [
                    Container(
                      width: 302,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/dropdownbackground.png"),
                              fit: BoxFit.fill)),
                      child: TextFormField(
                        cursorColor: Color(0xff707070),
                        style: TextStyle(
                            color: Color(0xff707070),
                            fontFamily: 'SF-Pro',
                            fontSize: 14),
                        keyboardType: TextInputType.text,
                        decoration: new InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 11, top: 16, right: 15),
                            hintText: 'Find a location',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xff707070),
                            ),
                            hintStyle:
                                TextStyle(fontFamily: 'SF-Pro', fontSize: 12)),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      "Search results",
                      style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

//list of locations

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 270,
                        child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: Image.asset(
                                            'assets/locationmarker.png',
                                            scale: 2.8,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Enqueue Sports Islamabad",
                                            style: TextStyle(
                                                fontFamily: 'SF-Pro-Bold',
                                                color: Colors.black,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            "45 Street, Sector B, Expressway",
                                            style: TextStyle(
                                                color: Color(0xff707070),
                                                fontFamily: 'SF-Pro',
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 50, top: 10),
                                      child: Image.asset(
                                          'assets/seperatorline.png'),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 70.0, bottom: 70),
                child: SizedBox(
                  height: 46,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Color(0xffABDAEE),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              FacilityFacilities()));
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
