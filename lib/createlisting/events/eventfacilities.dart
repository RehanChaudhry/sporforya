import 'package:flutter/material.dart';
import 'package:sporforya/components/multiselectdialogitem.dart';
import 'package:sporforya/createlisting/events/eventlocationinformation.dart';
import 'package:sporforya/createlisting/events/eventscheduleandprice.dart';
import 'package:sporforya/createlisting/services/locationinformation.dart';
import 'package:sporforya/createlisting/services/scheduleandprice.dart';

class EventFacilities extends StatefulWidget {
  @override
  _EventFacilitiesState createState() => _EventFacilitiesState();
}

//function to populate the checkedbox dialogue
List<MultiSelectDialogItem<int>> multiItem = List();

final valuestopopulate = {
  1: "Field - Grass",
  2: "Field - artificial",
  3: "Field - lighted",
  4: "Court - outdoor",
  5: "Court - Indoor",
  6: "Fun",
  7: "Stadium",
};

void populateMultiselect() {
  for (int v in valuestopopulate.keys) {
    multiItem.add(MultiSelectDialogItem(v, valuestopopulate[v]));
  }
}

//function to show checked box dialogue
void _showMultiSelect(BuildContext context) async {
  multiItem = [];
  populateMultiselect();
  final items = multiItem;

  // final items = <MultiSelectDialogItem<int>>[
  //   MultiSelectDialogItem(1, 'Dog'),
  //   MultiSelectDialogItem(2, 'Cat'),
  //   MultiSelectDialogItem(3, 'Mouse'),
  // ];

//function to show the selected index of checked box dialogue
  final selectedValues = await showDialog<Set<int>>(
    context: context,
    builder: (BuildContext context) {
      return MultiSelectDialog(
        items: items,
        initialSelectedValues: [1, 3].toSet(),
      );
    },
  );

  print(selectedValues);
  getvaluefromkey(selectedValues);
}

List<String> chip_items;
//function to show the selected values
void getvaluefromkey(Set selection) {
  if (selection != null) {
    chip_items = [];
    for (int x in selection.toList()) {
      print(valuestopopulate[x]);
      // _items.add(valuestopopulate[x]);
      //print(_items);
      chip_items.add(valuestopopulate[x]);
      print(chip_items);
    }
  }
}

class _EventFacilitiesState extends State<EventFacilities> {
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
                                EventLocationInformation()));
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
                      "Facilities, Amenities and\nPreparation",
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
                  "Please tell us what Facilities are used, and any Amenities that maybe available",
                  style: TextStyle(
                      fontFamily: 'SF-Pro',
                      fontSize: 14,
                      color: Color(0xff3D3D3D)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 40, right: 40),
                child: Row(
                  children: [
                    Text(
                      "What Facilities are used for this event?",
                      style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Container(
                          height: 48,
                          width: 302,
                          child: Image.asset(
                            'assets/dropdownwithicon.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 27, left: 20),
                        child: Text("Select Facilities",
                            style: TextStyle(
                                fontFamily: 'SF-Pro',
                                fontSize: 12,
                                color: Color(0xff707070))),
                      )
                    ],
                  ),
                  onTap: () {
                    print("stack tapped");

                    _showMultiSelect(context);
                  }),

              //chips

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: Container(
                              width: 122,
                              height: 30,
                              color: Color(0xff61B2D4),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 10),
                                child: Text(
                                  "Field - Grass",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontFamily: 'SF-Pro'),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 6),
                          child: Image.asset(
                            'assets/dialogueboxclose.png',
                            scale: 2.8,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(3),
                            child: Container(
                                width: 132,
                                height: 30,
                                color: Color(0xff61B2D4),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 10),
                                  child: Text(
                                    "Court - Indoor",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontFamily: 'SF-Pro'),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 110, top: 6),
                            child: Image.asset(
                              'assets/dialogueboxclose.png',
                              scale: 2.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: Container(
                              width: 93,
                              height: 30,
                              color: Color(0xff61B2D4),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 10),
                                child: Text(
                                  "Stadium",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontFamily: 'SF-Pro'),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, top: 6),
                          child: Image.asset(
                            'assets/dialogueboxclose.png',
                            scale: 2.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, right: 40),
                child: Row(
                  children: [
                    Text(
                      "What Amenities are available?",
                      style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Container(
                          height: 48,
                          width: 302,
                          child: Image.asset(
                            'assets/dropdownwithicon.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 27, left: 20),
                        child: Text("Select Amenities",
                            style: TextStyle(
                                fontFamily: 'SF-Pro',
                                fontSize: 12,
                                color: Color(0xff707070))),
                      )
                    ],
                  ),
                  onTap: () {
                    print("stack tapped");

                    _showMultiSelect(context);
                  }),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, right: 40),
                child: Row(
                  children: [
                    Text(
                      "How to Prepare",
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
                                'Include some info on what to bring, what towear, and anything else a User shouldknow before attending',
                            hintStyle:
                                TextStyle(fontFamily: 'SF-Pro', fontSize: 12),
                            hintMaxLines: 3),
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
                              EventScheduleAndPrice()));
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
