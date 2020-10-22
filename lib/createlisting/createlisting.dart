import 'package:flutter/material.dart';
import 'package:sporforya/createlisting/events/eventsdetails.dart';
import 'package:sporforya/createlisting/facilities/facilitydetails.dart';
import 'package:sporforya/createlisting/services/servicedetails.dart';

class CreateListing extends StatefulWidget {
  @override
  _CreateListingState createState() => _CreateListingState();
}

class _CreateListingState extends State<CreateListing> {
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
                padding:
                    EdgeInsets.only(left: 35, right: 0, top: 30, bottom: 10),
                child: Row(
                  children: [
                    Image.asset("assets/backarrow.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 75),
                      child: Text(
                        "Create a listing",
                        style: TextStyle(
                            fontFamily: 'SF-Pro-Bold',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
                child: new Center(
                  child: new Container(
                    margin:
                        new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                    height: 2.0,
                    color: Color(0xffE5E5E5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 35, top: 20, right: 60, bottom: 10),
                child: Text(
                  "Let's get your listings online.  Add the Services, Events, or Facilities you want offer, so people can book them",
                  style: TextStyle(
                      color: Color(0xff707070),
                      fontFamily: 'SF-Pro',
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ServiceDetails()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Image.asset(
                      'assets/listingpic1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: GestureDetector(
                  child: Image.asset('assets/listingpic2.png'),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => EventDetails()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: GestureDetector(
                  child: Image.asset('assets/listingpic3.png'),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => FacilityDetails()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
