import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/user_screen/rented.dart';
import 'package:hci_booking_pt/screens/user_screen/user_screen.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class CallVideo extends StatefulWidget {
  CallVideo({Key key}) : super(key: key);

  @override
  _CallVideoState createState() => _CallVideoState();
}

class _CallVideoState extends State<CallVideo> {
  bool isHide = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MainColors.kDark,
      body: ScreenWithBackground(
          opacity: 1,
          pathBackground: "asset/images/background/video.jpg",
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Container(
                      width: 150,
                      height: 200,
                      child: Image.asset(
                        "asset/images/background/caller.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                    padding: EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Container(
                        //   decoration: BoxDecoration(
                        //       color: MainColors.kDark, shape: BoxShape.circle),
                        //   width: 60,
                        //   height: 60,
                        //   child: InkWell(
                        //     child: Icon(
                        //       Icons.videocam_off,
                        //       color: MainColors.kLight,
                        //     ),
                        //     onTap: () {
                        //       Navigator.pop(context);
                        //     },
                        //   ),
                        // ),
                        Container(
                          decoration: BoxDecoration(
                              color: MainColors.kMain, shape: BoxShape.circle),
                          width: 60,
                          height: 60,
                          child: InkWell(
                            child: Icon(
                              Icons.stop,
                              color: MainColors.kLight,
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //       color: MainColors.kMain, shape: BoxShape.circle),
                        //   width: 60,
                        //   height: 60,
                        //   child: InkWell(
                        //     child: Icon(
                        //       Icons.mic_off,
                        //       color: MainColors.kLight,
                        //     ),
                        //     onTap: () {
                        //       Navigator.pop(context);
                        //     },
                        //   ),
                        // ),
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}
