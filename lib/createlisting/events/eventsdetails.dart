import 'package:flutter/material.dart';
import 'package:sporforya/components/customdialogbox.dart';
import 'package:sporforya/createlisting/createlisting.dart';
import 'package:sporforya/createlisting/events/eventparticipantparticulars.dart';
import 'package:sporforya/createlisting/services/participantparticulars.dart';

class EventDetails extends StatefulWidget {
  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  String _selectedText1;
  String _selectedText2;

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
                                CreateListing()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 75),
                      child: Text(
                        "Event",
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
                        width: 43,
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
                      "Event Details",
                      style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10, right: 40),
                child: Text(
                  "Please tell us about your event.  The more information you provide, the easier it will be for people to book",
                  style: TextStyle(
                      fontFamily: 'SF-Pro',
                      fontSize: 14,
                      color: Color(0xff707070)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Text("Select the Sport or Activity",
                        style:
                            TextStyle(fontFamily: 'SF-Pro-Bold', fontSize: 14)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            icon: ImageIcon(
                              AssetImage("assets/dropdownicon.png"),
                              color: Color(0xFF707070),
                            ),
                            value: _selectedText1,
                            hint: Text(
                              'Select',
                              style:
                                  TextStyle(fontFamily: 'SF-Pro', fontSize: 12),
                            ),
                            items: <String>[
                              'Aerobatics',
                              'Aerobics',
                              'Aeromodeling',
                              'Aikido',
                              'Airsoft',
                              'Archery',
                              'Arm Wrestling'
                            ].map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(
                                  value,
                                  style: TextStyle(
                                      fontFamily: 'SF-Pro',
                                      fontSize: 14,
                                      color: Color(0xff707070)),
                                ),
                              );
                            }).toList(),
                            onChanged: (String val) {
                              setState(() {
                                _selectedText1 = val;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Text("Select the Type of Event",
                        style:
                            TextStyle(fontFamily: 'SF-Pro-Bold', fontSize: 14)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            icon: ImageIcon(
                              AssetImage("assets/dropdownicon.png"),
                              color: Color(0xFF707070),
                            ),
                            value: _selectedText2,
                            hint: Text(
                              'Type of Event',
                              style:
                                  TextStyle(fontFamily: 'SF-Pro', fontSize: 12),
                            ),
                            items: <String>[
                              'Aerobatics',
                              'Aerobics',
                              'Aeromodeling',
                              'Aikido',
                              'Airsoft',
                              'Archery',
                              'Arm Wrestling'
                            ].map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(
                                  value,
                                  style: TextStyle(
                                      fontFamily: 'SF-Pro',
                                      fontSize: 14,
                                      color: Color(0xff707070)),
                                ),
                              );
                            }).toList(),
                            onChanged: (String val) {
                              setState(
                                () {
                                  _selectedText2 = val;
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Text("Name or Title of the Event",
                        style:
                            TextStyle(fontFamily: 'SF-Pro-Bold', fontSize: 14)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 5),
                child: Row(
                  children: [
                    Text("Give your event a short distinct name or title",
                        style: TextStyle(
                            fontFamily: 'SF-Pro',
                            fontSize: 12,
                            color: Color(0xff707070))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
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
                                left: 15, bottom: 11, top: 11, right: 15),
                            hintText: 'Archery for teenager',
                            hintStyle:
                                TextStyle(fontFamily: 'SF-Pro', fontSize: 12)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Text("Event Description",
                        style:
                            TextStyle(fontFamily: 'SF-Pro-Bold', fontSize: 14)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 302,
                      height: 92,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/descriptionbackground.png"),
                              fit: BoxFit.cover)),
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
                                left: 15, bottom: 11, top: 11, right: 25),
                            hintText:
                                'Briefly describe what you are offering, Whats included, the key features, benefits or value that make your event special or unique',
                            hintStyle:
                                TextStyle(fontFamily: 'SF-Pro', fontSize: 12),
                            hintMaxLines: 3),
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
                        height: 100,
                        child: Image.asset(
                          'assets/virtualeventpic.png',
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Text("The Event Venue",
                        style:
                            TextStyle(fontFamily: 'SF-Pro-Bold', fontSize: 14)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 302,
                      height: 92,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/descriptionbackground.png"),
                              fit: BoxFit.cover)),
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
                                left: 15, bottom: 11, top: 11, right: 25),
                            hintText:
                                'Tell the User about the Venue, Facility orCourse that is used for your Event',
                            hintStyle:
                                TextStyle(fontFamily: 'SF-Pro', fontSize: 12),
                            hintMaxLines: 3),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Text("Add Photos for Your Event",
                        style:
                            TextStyle(fontFamily: 'SF-Pro-Bold', fontSize: 14)),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image.asset(
                        'assets/iicon.png',
                        scale: 2.7,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 5),
                child: Row(
                  children: [
                    Text(
                      "Photos help bring your event to life and show people\nthe real experience.",
                      style: TextStyle(
                          fontFamily: 'SF-Pro',
                          fontSize: 10,
                          color: Color(0xff707070)),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, right: 40),
                child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => CustomDialogBox());
                    },
                    child: Image.asset('assets/addphotosbackground.png')),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 40.0, bottom: 40),
                child: SizedBox(
                  height: 46,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Color(0xffABDAEE),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              EventParticipantParticulars()));
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
