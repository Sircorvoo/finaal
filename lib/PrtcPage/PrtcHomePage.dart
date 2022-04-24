

import 'package:flutter/material.dart';
import '../InstAddCS.dart';
//import 'InstHomePage.dart';
import '../HomeWidgets.dart';
//import 'InstRegisterPage.dart';
import '../InstPages/InstHomePage.dart';
import '../InstaAddCSWidgets.dart';
import '../InputField.dart';
import '../PrtcHomeWidgets.dart';
import 'PrtcOTPPage.dart';


class PrtcHomePage extends StatelessWidget {
  static const String ScreenRoute= 'PrtcHomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFE9EAC6), Color(0xFF94B48F)],
              stops: [0.1, 0.9],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Column(
            children: [
              Container(
                child: Mu3eenBlackLogo(),
              ),
              SizedBox(
                height: 75,
              ),
              Expanded(
                child: Container(   // container to put all the buttons
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F6F5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26)),
                  ),
                  child: Column(
                    children: [



                      prtcSearchBar('Serach here',''),

                      Center(
                        child: TextButton(onPressed: (){},
                          child: Text(
                            'Forget Password',
                            style: TextStyle(decoration: TextDecoration.underline,
                                fontSize: 12, color: Color(0x9E36251D)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          //child: InstHomePageWidgets(),
        ),
      ),
    );
  }
}



