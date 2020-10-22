import 'package:flutter/material.dart';
import 'package:sporforya/components/repeatscustomdialogbox.dart';
import 'package:sporforya/createlisting/events/eventcencellationpolicy.dart';
import 'package:sporforya/createlisting/events/eventfacilities.dart';
import 'package:sporforya/createlisting/services/cencellationpolicy.dart';
import 'package:sporforya/createlisting/services/facilities.dart';

class EventScheduleAndPrice extends StatefulWidget {
  @override
  _EventScheduleAndPriceState createState() => _EventScheduleAndPriceState();
}

String _selectedText1;
String _selectedTextWeek;
int _repeatYes = 1;
bool _repeatVisible = true;
bool _discountVisible = true;
bool _paymentVisible = true;
bool isSaturdayButtonPressed = false;
bool isMondayButtonPressed = false;
bool isTuesdayButtonPressed = false;
bool isWednesdayButtonPressed = false;
bool isThursdayButtonPressed = false;
bool isFridayButtonPressed = false;
bool isSundayButtonPressed = false;

/// Which holds the selected date
/// Defaults to today's date.

DateTime selectedFromDate = DateTime.now();

//this isfor date picker

_selectedFromDate(BuildContext context) async {
  final DateTime picked = await showDatePicker(
    context: context,
    initialDate: selectedFromDate, // Refer step 1
    firstDate: DateTime(2000),
    lastDate: DateTime(2025),
  );
  if (picked != null && picked != selectedFromDate)
    // ignore: unused_element
    setState() {
      selectedFromDate = picked;
    }
  ;
}

// _selectedTooDate(BuildContext context) async {
//   final DateTime picked = await showDatePicker(
//     context: context,
//     initialDate: selectedTooDate, // Refer step 1
//     firstDate: DateTime(2000),
//     lastDate: DateTime(2025),
//   );
//   if (picked != null && picked != selectedTooDate)
//     setState(() {
//       selectedTooDate = picked;
//     });
// }

class _EventScheduleAndPriceState extends State<EventScheduleAndPrice> {
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
                                EventFacilities()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text(
                        "Event",
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
                        width: 293,
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
                      "Schedule and Price",
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
                  "Enter the dates, days, times,  and other particulars for your event",
                  style: TextStyle(
                      fontFamily: 'SF-Pro',
                      fontSize: 14,
                      color: Color(0xff3D3D3D)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10, right: 40),
                child: Text(
                  "You have the option to add multiple schedules for your event, using different dates, days, andtimes",
                  style: TextStyle(
                      fontFamily: 'SF-Pro',
                      fontSize: 13,
                      color: Color(0xff707070)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10, right: 40),
                child: Row(
                  children: [
                    Text(
                      "Note:",
                      style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 13,
                          color: Color(0xff3D3D3D)),
                    ),
                    Text(
                      "If your event has multiple locations, then ",
                      style: TextStyle(
                          fontFamily: 'SF-Pro',
                          fontSize: 13,
                          color: Color(0xff3D3D3D)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 0, right: 40),
                child: Row(
                  children: [
                    Text(
                      "a new listing must be created for each location",
                      style: TextStyle(
                          fontFamily: 'SF-Pro',
                          fontSize: 13,
                          color: Color(0xff3D3D3D)),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 0, right: 40),
                child: Row(
                  children: [
                    Text(
                      "Schedule Title",
                      style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 8, right: 40),
                child: Row(
                  children: [
                    Text(
                      "Add a Sub Title or Name for this Schedule,\n(examples: Beginners Class,  Practice Schedule,\nor Morning Camp)",
                      style: TextStyle(
                          fontFamily: 'SF-Pro',
                          fontSize: 13,
                          color: Color(0xff707070)),
                    ),
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
                                left: 15, bottom: 11, top: 16, right: 15),
                            hintText: 'Practice Schedule',
                            hintStyle:
                                TextStyle(fontFamily: 'SF-Pro', fontSize: 12)),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, right: 40),
                child: Row(
                  children: [
                    Text(
                      "Start date",
                      style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: GestureDetector(
                  onTap: () => _selectedFromDate(context),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: 302,
                              height: 46,
                              child: Image.asset(
                                'assets/datepickerbackground.png',
                                fit: BoxFit.fill,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                                "${selectedFromDate.toLocal()}".split(' ')[0],
                                style: TextStyle(
                                    fontFamily: 'SF-Pro',
                                    fontSize: 14,
                                    color: Color(0xff707070))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, right: 40),
                child: Row(
                  children: [
                    Text(
                      "End date",
                      style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: GestureDetector(
                  onTap: () => _selectedFromDate(context),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: 302,
                              height: 46,
                              child: Image.asset(
                                'assets/datepickerbackground.png',
                                fit: BoxFit.fill,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                                "${selectedFromDate.toLocal()}".split(' ')[0],
                                style: TextStyle(
                                    fontFamily: 'SF-Pro',
                                    fontSize: 14,
                                    color: Color(0xff707070))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 20, right: 40),
                    child: Row(
                      children: [
                        Text(
                          "Start time",
                          style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, top: 20, right: 40),
                    child: Row(
                      children: [
                        Text(
                          "End time",
                          style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 138,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/dropdownbackground.png"),
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
                                  '00:00 AM',
                                  style: TextStyle(
                                      fontFamily: 'SF-Pro', fontSize: 12),
                                ),
                                items: <String>[
                                  '01:00 AM',
                                  '02:00 AM',
                                  '03:00 AM',
                                  '04:00 AM',
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
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 138,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/dropdownbackground.png"),
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
                                  '00:00 AM',
                                  style: TextStyle(
                                      fontFamily: 'SF-Pro', fontSize: 12),
                                ),
                                items: <String>[
                                  '01:00 AM',
                                  '02:00 AM',
                                  '03:00 AM',
                                  '04:00 AM',
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
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, right: 40),
                child: Row(
                  children: [
                    Text(
                      "Repeat",
                      style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    Radio(
                        activeColor: Color(0xff21D17F),
                        value: 1,
                        groupValue: _repeatYes,
                        onChanged: (int T) {
                          print(T);
                          setState(() {
                            _repeatYes = T;
                            _repeatVisible = true;
                          });
                        }),
                    Text(
                      "Yes",
                      style: TextStyle(
                        fontFamily: 'SF-Pro',
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Radio(
                          activeColor: Color(0xff21D17F),
                          value: 2,
                          groupValue: _repeatYes,
                          onChanged: (int T) {
                            print(T);
                            setState(() {
                              _repeatYes = T;
                              _repeatVisible = false;
                            });
                          }),
                    ),
                    Text(
                      "No",
                      style: TextStyle(
                        fontFamily: 'SF-Pro',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              Visibility(
                visible: _repeatVisible,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: [
                          Text(
                            "Repeats everyday",
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 138,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/dropdownbackground.png"),
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
                                  hintText: '1',
                                  hintStyle: TextStyle(
                                      fontFamily: 'SF-Pro', fontSize: 12)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Container(
                              width: 138,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/dropdownbackground.png"),
                                      fit: BoxFit.fill)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    icon: ImageIcon(
                                      AssetImage("assets/dropdownicon.png"),
                                      color: Color(0xFF707070),
                                    ),
                                    value: _selectedTextWeek,
                                    hint: Text(
                                      'Week',
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro', fontSize: 12),
                                    ),
                                    items: <String>[
                                      'Day',
                                      'Week',
                                      'Month',
                                      'Year',
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
                                        _selectedTextWeek = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: [
                          Text(
                            "Repeats on",
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              fontSize: 14,
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
                            width: 32,
                            height: 32,
                            child: MaterialButton(
                              child: Text(
                                "S",
                                style: TextStyle(fontFamily: 'SF-Pro'),
                                textAlign: TextAlign.left,
                              ),
                              color: isSaturdayButtonPressed
                                  ? Color(0xff95CCE2)
                                  : Color(0xffE4E6EA),
                              textColor: isSaturdayButtonPressed
                                  ? Colors.white
                                  : Color(0xff707070),
                              padding: EdgeInsets.only(right: 0),
                              shape: CircleBorder(),
                              onPressed: () {
                                setState(() {
                                  isSaturdayButtonPressed =
                                      !isSaturdayButtonPressed;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Container(
                              width: 32,
                              height: 32,
                              child: MaterialButton(
                                child: Text(
                                  "M",
                                  style: TextStyle(fontFamily: 'SF-Pro'),
                                ),
                                color: isMondayButtonPressed
                                    ? Color(0xff95CCE2)
                                    : Color(0xffE4E6EA),
                                textColor: isMondayButtonPressed
                                    ? Colors.white
                                    : Color(0xff707070),
                                padding: EdgeInsets.only(right: 0),
                                shape: CircleBorder(),
                                onPressed: () {
                                  setState(() {
                                    isMondayButtonPressed =
                                        !isMondayButtonPressed;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Container(
                              width: 32,
                              height: 32,
                              child: MaterialButton(
                                child: Text(
                                  "T",
                                  style: TextStyle(fontFamily: 'SF-Pro'),
                                ),
                                color: isTuesdayButtonPressed
                                    ? Color(0xff95CCE2)
                                    : Color(0xffE4E6EA),
                                textColor: isTuesdayButtonPressed
                                    ? Colors.white
                                    : Color(0xff707070),
                                padding: EdgeInsets.only(right: 0),
                                shape: CircleBorder(),
                                onPressed: () {
                                  setState(() {
                                    isTuesdayButtonPressed =
                                        !isTuesdayButtonPressed;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Container(
                              width: 32,
                              height: 32,
                              child: MaterialButton(
                                child: Text(
                                  "W",
                                  style: TextStyle(fontFamily: 'SF-Pro'),
                                ),
                                color: isWednesdayButtonPressed
                                    ? Color(0xff95CCE2)
                                    : Color(0xffE4E6EA),
                                textColor: isWednesdayButtonPressed
                                    ? Colors.white
                                    : Color(0xff707070),
                                padding: EdgeInsets.only(),
                                shape: CircleBorder(),
                                onPressed: () {
                                  setState(() {
                                    isWednesdayButtonPressed =
                                        !isWednesdayButtonPressed;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Container(
                              width: 32,
                              height: 32,
                              child: MaterialButton(
                                child: Text(
                                  "T",
                                  style: TextStyle(fontFamily: 'SF-Pro'),
                                ),
                                color: isThursdayButtonPressed
                                    ? Color(0xff95CCE2)
                                    : Color(0xffE4E6EA),
                                textColor: isThursdayButtonPressed
                                    ? Colors.white
                                    : Color(0xff707070),
                                padding: EdgeInsets.only(),
                                shape: CircleBorder(),
                                onPressed: () {
                                  setState(() {
                                    isThursdayButtonPressed =
                                        !isThursdayButtonPressed;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Container(
                              width: 32,
                              height: 32,
                              child: MaterialButton(
                                child: Text(
                                  "F",
                                  style: TextStyle(fontFamily: 'SF-Pro'),
                                ),
                                color: isFridayButtonPressed
                                    ? Color(0xff95CCE2)
                                    : Color(0xffE4E6EA),
                                textColor: isFridayButtonPressed
                                    ? Colors.white
                                    : Color(0xff707070),
                                padding: EdgeInsets.only(),
                                shape: CircleBorder(),
                                onPressed: () {
                                  setState(() {
                                    isFridayButtonPressed =
                                        !isFridayButtonPressed;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Container(
                              width: 32,
                              height: 32,
                              child: MaterialButton(
                                child: Text(
                                  "S",
                                  style: TextStyle(fontFamily: 'SF-Pro'),
                                ),
                                color: isSundayButtonPressed
                                    ? Color(0xff95CCE2)
                                    : Color(0xffE4E6EA),
                                textColor: isSundayButtonPressed
                                    ? Colors.white
                                    : Color(0xff707070),
                                padding: EdgeInsets.only(),
                                shape: CircleBorder(),
                                onPressed: () {
                                  setState(() {
                                    isSundayButtonPressed =
                                        !isSundayButtonPressed;
                                  });
                                },
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
                          Text(
                            "Ends",
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 25, right: 35),
                      child: Container(
                        height: 50,
                        child: GestureDetector(
                          child: Stack(
                            children: [
                              Image.asset('assets/dropdownwithicon.png'),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 16, left: 20),
                                child: Text(
                                  "Never",
                                  style: TextStyle(
                                      fontFamily: 'SF-Pro',
                                      color: Color(0xff707070)),
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    RepeatsCustomDialogBox());
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Pricing",
                      style: TextStyle(
                        fontFamily: 'SF-Pro-Bold',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 8, right: 40),
                child: Row(
                  children: [
                    Text(
                      "Set the pricing for this Schedule",
                      style: TextStyle(
                          fontFamily: 'SF-Pro',
                          fontSize: 13,
                          color: Color(0xff707070)),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Quantity",
                      style: TextStyle(
                        fontFamily: 'SF-Pro-Bold',
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Price",
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 85),
                      child: Text(
                        "Per",
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 70,
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
                                left: 17, bottom: 11, top: 16, right: 15),
                            hintText: '1',
                            hintStyle:
                                TextStyle(fontFamily: 'SF-Pro', fontSize: 12)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        width: 104,
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
                                  left: 17, bottom: 11, top: 16, right: 15),
                              hintText: '\$ 100',
                              hintStyle: TextStyle(
                                  fontFamily: 'SF-Pro', fontSize: 12)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        width: 104,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/dropdownbackground.png"),
                                fit: BoxFit.fill)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              icon: ImageIcon(
                                AssetImage("assets/dropdownicon.png"),
                                color: Color(0xFF707070),
                              ),
                              value: _selectedTextWeek,
                              hint: Text(
                                'Persons',
                                style: TextStyle(
                                    fontFamily: 'SF-Pro', fontSize: 12),
                              ),
                              items: <String>[
                                'Day',
                                'Week',
                                'Month',
                                'Year',
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
                                  _selectedTextWeek = val;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Row(
                  children: [
                    Text(
                      "Do you want to give a discount for 2 bookings?",
                      style: TextStyle(
                        fontFamily: 'SF-Pro-Bold',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Row(
                  children: [
                    Text(
                      "Allow the Users to invite a friend, so you get two\nbookings and they get a discount",
                      style: TextStyle(
                          fontFamily: 'SF-Pro',
                          fontSize: 13,
                          color: Color(0xff707070)),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    Radio(
                        activeColor: Color(0xff21D17F),
                        value: 3,
                        groupValue: _repeatYes,
                        onChanged: (int T) {
                          print(T);
                          setState(() {
                            _repeatYes = T;
                            _discountVisible = true;
                          });
                        }),
                    Text(
                      "Yes",
                      style: TextStyle(
                        fontFamily: 'SF-Pro',
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Radio(
                          activeColor: Color(0xff21D17F),
                          value: 4,
                          groupValue: _repeatYes,
                          onChanged: (int T) {
                            print(T);
                            setState(() {
                              _repeatYes = T;
                              _discountVisible = false;
                            });
                          }),
                    ),
                    Text(
                      "No",
                      style: TextStyle(
                        fontFamily: 'SF-Pro',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                  visible: _discountVisible,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Quantity",
                              style: TextStyle(
                                fontFamily: 'SF-Pro-Bold',
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Text(
                                "Discounted Price",
                                style: TextStyle(
                                  fontFamily: 'SF-Pro-Bold',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 10),
                        child: Row(children: [
                          Container(
                            width: 138,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/dropdownbackground.png"),
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
                                  hintText: '2',
                                  hintStyle: TextStyle(
                                      fontFamily: 'SF-Pro', fontSize: 12)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              width: 138,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/dropdownbackground.png"),
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
                                        left: 15,
                                        bottom: 11,
                                        top: 16,
                                        right: 15),
                                    hintText: '\$ 80.00',
                                    hintStyle: TextStyle(
                                        fontFamily: 'SF-Pro', fontSize: 12)),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, top: 20, right: 30),
                        child: Row(
                          children: [
                            Text(
                              "Note:",
                              style: TextStyle(
                                  fontFamily: 'SF-Pro-Bold',
                                  fontSize: 12,
                                  color: Color(0xff3D3D3D)),
                            ),
                            Text(
                              " If the User's  friend does not accept the invite",
                              style: TextStyle(
                                  fontFamily: 'SF-Pro',
                                  fontSize: 12,
                                  color: Color(0xff3D3D3D)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, top: 0, right: 40),
                        child: Row(
                          children: [
                            Text(
                              "book, then the User will pay full price by default.",
                              style: TextStyle(
                                  fontFamily: 'SF-Pro',
                                  fontSize: 12,
                                  color: Color(0xff3D3D3D)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10, right: 40),
                child: Text(
                  "Can the User make monthly payments for this event?",
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Bold',
                    fontSize: 14,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10, right: 40),
                child: Row(
                  children: [
                    Text(
                      "Please check here if the User has the option to\nmake monthly payments, instead of making one\npayment in full",
                      style: TextStyle(
                          fontFamily: 'SF-Pro',
                          fontSize: 12,
                          color: Color(0xff3D3D3D)),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    Radio(
                        activeColor: Color(0xff21D17F),
                        value: 5,
                        groupValue: _repeatYes,
                        onChanged: (int T) {
                          print(T);
                          setState(() {
                            _repeatYes = T;
                            _paymentVisible = true;
                          });
                        }),
                    Text(
                      "Yes",
                      style: TextStyle(
                        fontFamily: 'SF-Pro',
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Radio(
                          activeColor: Color(0xff21D17F),
                          value: 6,
                          groupValue: _repeatYes,
                          onChanged: (int T) {
                            print(T);
                            setState(() {
                              _repeatYes = T;
                              _paymentVisible = false;
                            });
                          }),
                    ),
                    Text(
                      "No",
                      style: TextStyle(
                        fontFamily: 'SF-Pro',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              Visibility(
                visible: _paymentVisible,
                child: Column(
                  children: [
                    Container(
                      width: 302,
                      height: 102,
                      color: Color(0xffE8F2FB),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Users monthly payment:  ",
                                      style: TextStyle(
                                          fontFamily: 'SF-Pro',
                                          fontSize: 12,
                                          color: Color(0xff3D3D3D)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 80),
                                      child: Text(
                                        "\$100",
                                        style: TextStyle(
                                          fontFamily: 'SF-Pro-Bold',
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Number of months:",
                                  style: TextStyle(
                                      fontFamily: 'SF-Pro',
                                      fontSize: 12,
                                      color: Color(0xff3D3D3D)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 130),
                                  child: Text(
                                    "12",
                                    style: TextStyle(
                                      fontFamily: 'SF-Pro-Bold',
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 20, right: 20),
                            child: Image.asset('assets/horizontalline.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Total Payment:",
                                  style: TextStyle(
                                      fontFamily: 'SF-Pro-Bold',
                                      fontSize: 12,
                                      color: Color(0xff3D3D3D)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 153),
                                  child: Text(
                                    "12",
                                    style: TextStyle(
                                      fontFamily: 'SF-Pro-Bold',
                                      fontSize: 12,
                                      color: Color(0xff3D3D3D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
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
                        'assets/addschedulebutton.png',
                        fit: BoxFit.fill,
                      )),
                ),
                onTap: () {},
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: 37.0, right: 37.0, top: 20.0, bottom: 70),
                child: SizedBox(
                  height: 46,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Color(0xffABDAEE),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              EventCencellationPolicy()));
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
