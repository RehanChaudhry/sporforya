import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sporforya/bottomnav/bottomnav.dart';
import 'package:sporforya/createlisting/createlisting.dart';
import 'package:sporforya/createlisting/list.dart';
import 'package:sporforya/createlisting/services/scheduleandprice.dart';
import 'package:sporforya/createlisting/services/servicedetails.dart';
import 'package:sporforya/onboarding/slider_1.dart';
import 'package:sporforya/onboarding/slider_2.dart';
import 'package:sporforya/onboarding/slider_3.dart';

void main() => runApp(new MaterialApp(
      home: new Bottom_Nav(),
      debugShowCheckedModeBanner: false,
//  theme: ThemeData(
//    // primarySwatch: Color(0xff611fce),
//      cursorColor: Color(0xff611fce),
//      accentColor: Color(0xff611fce)
//  ),
    ));

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController(viewportFraction: 1.0);
  int currentIndexPage;
  int pageLength;

  @override
  void initState() {
    currentIndexPage = 0;
    pageLength = 4;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          PageView(
            controller: controller,
            children: <Widget>[Slider_1(), Slider_2(), Slider_3()],
            onPageChanged: (value) {
              setState(() => currentIndexPage = value);
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 120.0),
            child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                    controller: controller, // PageController
                    count: 3,
                    effect: WormEffect(
                      activeDotColor: Colors.white,
                      dotWidth: 8,
                      dotHeight: 8,
                      radius: 8,
                      spacing: 5,
                    ), // your preferred effect
                    onDotClicked: (index) {})),
          ),
        ],
      )),
    );
  }
}
