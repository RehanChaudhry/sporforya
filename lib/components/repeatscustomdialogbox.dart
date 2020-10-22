import 'package:flutter/material.dart';

class RepeatsCustomDialogBox extends StatefulWidget {
  @override
  _RepeatsCustomDialogBoxState createState() => _RepeatsCustomDialogBoxState();
}

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

class _RepeatsCustomDialogBoxState extends State<RepeatsCustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)), //this right here
      child: Container(
          height: 139.0,
          width: 302.0,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Never",
                      style: TextStyle(fontFamily: 'SF-Pro', fontSize: 14),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "On",
                      style: TextStyle(fontFamily: 'SF-Pro', fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, top: 10),
                    child: GestureDetector(
                      onTap: () => _selectedFromDate(context),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                  width: 132,
                                  height: 36,
                                  child: Image.asset(
                                    'assets/dialogdatepickerbackground.png',
                                    fit: BoxFit.fill,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 13),
                                child: Text(
                                    "${selectedFromDate.toLocal()}"
                                        .split(' ')[0],
                                    style: TextStyle(
                                        fontFamily: 'SF-Pro',
                                        fontSize: 12,
                                        color: Color(0xff707070))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "After, occurrences",
                      style: TextStyle(fontFamily: 'SF-Pro', fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Container(
                      width: 43,
                      height: 36,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/dialogtextfieldbackground.png"),
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
                                left: 15, bottom: 16, top: 10, right: 15),
                            hintText: '1',
                            hintStyle:
                                TextStyle(fontFamily: 'SF-Pro', fontSize: 12)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
