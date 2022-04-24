import 'package:flutter/material.dart';
import '../InstPages/InstHomePage.dart';
//import 'InstHomePage.dart';
import '../HomeWidgets.dart';
import '../InstaAddCSWidgets.dart';
import '../InputField.dart';
import 'PrtcOTPPage.dart';

class PrtcRegisterPage extends StatelessWidget {
  static const String ScreenRoute= 'PrtcRegisterPage';
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

          child: Padding(
            padding: const EdgeInsets.all(0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Mu3eenBlackLogo(),
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F6F5),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(26),
                          topRight: Radius.circular(26)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        CSfield('First Name', ''),
                        CSfield('Last Name', ''),
                        CSfieldEmail('Email', ''),
                        CSPhoneFiled('Phone Number', ''),
                        CSPassword('Password', ''),
                        CSPassword('Confirm Password', ''),
                        CSButton('Create Account',0xFFF7F6F5,0xFF9B9A93,() {Navigator.pushNamed(context, PrtcOTPPage.ScreenRoute);}),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //child: InstHomePageWidgets(),
        ),
      ),
    );
  }
}
