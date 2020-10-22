import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomDialogBox extends StatefulWidget {
  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  final controller = PageController(viewportFraction: 1.0);
  int currentIndexPage = 0;
  int pageLength;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)), //this right here
      child: Container(
          height: 302.0,
          width: 233.0,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 242, top: 7),
                child: Image.asset(
                  'assets/dialogueboxclose.png',
                  scale: 2.7,
                ),
              ),
              Image.asset(
                'assets/dialogueboxpic.png',
                scale: 2.7,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Photo Tips',
                  style: TextStyle(fontFamily: 'SF-Pro-Bold', fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: WormEffect(
                    activeDotColor: Color(0xff2C99C6),
                    dotColor: Color(0xffABDAEE),
                    dotWidth: 10,
                    dotHeight: 10,
                    radius: 8,
                    spacing: 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Container(
                  width: 302,
                  height: 50,
                  child: PageView(
                    controller: controller,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "Take all photos in landscape, if you are using your smartphone, turn it horizontal.",
                          style: TextStyle(
                              fontFamily: 'SF-Pro',
                              fontSize: 12,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "Showcase your Services with action shots in a clean and presentable environment.",
                          style: TextStyle(
                              fontFamily: 'SF-Pro',
                              fontSize: 12,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "Keep it bright and sharp, if inside, turn on the lights, open blinds, and stay in focus.",
                          style: TextStyle(
                              fontFamily: 'SF-Pro',
                              fontSize: 12,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "JPEG and PNG are the recommended formats for the images.",
                          style: TextStyle(
                              fontFamily: 'SF-Pro',
                              fontSize: 12,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                    onPageChanged: (value) {
                      setState(() => currentIndexPage = value);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/backbutton.png',
                          scale: 2.5,
                        ),
                        onTap: () {
                          currentIndexPage += 1;
                          print(currentIndexPage);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/nextbutton.png',
                          scale: 2.5,
                        ),
                        onTap: () {
                          currentIndexPage -= 1;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
