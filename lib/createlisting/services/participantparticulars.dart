import 'package:flutter/material.dart';
import 'package:sporforya/components/multiselectdialogitem.dart';
import 'package:sporforya/createlisting/services/locationinformation.dart';
import 'package:sporforya/createlisting/services/servicedetails.dart';

class ParticipantParticulars extends StatefulWidget {
  @override
  _ParticipantParticularsState createState() => _ParticipantParticularsState();
}

class _ParticipantParticularsState extends State<ParticipantParticulars> {
  String _selectedText1;
  String _selectedText2;
  String _selectedText3;

  /// Which holds the selected date
  /// Defaults to today's date.

  DateTime selectedFromDate = DateTime.now();
  DateTime selectedTooDate = DateTime.now();

//function to populate the checkedbox dialogue
  List<MultiSelectDialogItem<int>> multiItem = List();

  final valuestopopulate = {
    1: "Any purpose",
    2: "Charity Events",
    3: "Corporate Events",
    4: "Competition",
    5: "Fitness",
    6: "Fun",
    7: "Rehabilitation",
    8: "Skill Development",
    9: "Social",
    10: "Wellness",
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

  //this isfor date picker

  _selectedFromDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedFromDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedFromDate)
      setState(() {
        selectedFromDate = picked;
      });
  }

  _selectedTooDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedTooDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedTooDate)
      setState(() {
        selectedTooDate = picked;
      });
  }

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
                                ServiceDetails()));
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
                        width: 83,
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
                      "Participant Particulars",
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
                  "Add some particulars to describe who the service is most suited to, and help Users choose what's best for them.",
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
                    Text("Gender",
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
                              'Male',
                              'Female',
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
                    Text("Age",
                        style:
                            TextStyle(fontFamily: 'SF-Pro-Bold', fontSize: 14)),
                  ],
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: GestureDetector(
                      onTap: () => _selectedFromDate(context),
                      child: Stack(
                        children: [
                          Container(
                              width: 138,
                              height: 46,
                              child: Image.asset(
                                'assets/dropdownbackground.png',
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: GestureDetector(
                      onTap: () => _selectedTooDate(context),
                      child: Stack(
                        children: [
                          Container(
                              width: 138,
                              height: 46,
                              child: Image.asset(
                                'assets/dropdownbackground.png',
                                fit: BoxFit.fill,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                                "${selectedTooDate.toLocal()}".split(' ')[0],
                                style: TextStyle(
                                    fontFamily: 'SF-Pro',
                                    fontSize: 14,
                                    color: Color(0xff707070))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Text("Suitable for",
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
                              'Individuals',
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
                              'Arm Wrestling',
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
                                _selectedText2 = val;
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
                    Text("Ability level",
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
                            value: _selectedText3,
                            hint: Text(
                              'Beginner',
                              style:
                                  TextStyle(fontFamily: 'SF-Pro', fontSize: 12),
                            ),
                            items: <String>[
                              'Begginer',
                              'Intermediate',
                              'Advance',
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
                                _selectedText3 = val;
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
                    Text("Good for",
                        style:
                            TextStyle(fontFamily: 'SF-Pro-Bold', fontSize: 14)),
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
                        child: Text("Select",
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
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: Container(
                              width: 90,
                              height: 30,
                              color: Color(0xff61B2D4),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 10),
                                child: Text(
                                  "Fitness",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontFamily: 'SF-Pro'),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 65, top: 6),
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
                                width: 70,
                                height: 30,
                                color: Color(0xff61B2D4),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 10),
                                  child: Text(
                                    "Fun",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontFamily: 'SF-Pro'),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48, top: 6),
                            child: Image.asset(
                              'assets/dialogueboxclose.png',
                              scale: 2.8,
                            ),
                          )
                        ],
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
                              LocationInformation()));
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
