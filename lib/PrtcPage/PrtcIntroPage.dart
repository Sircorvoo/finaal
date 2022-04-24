import 'package:flutter/material.dart';
import '../InstAddCS.dart';
import '../HomeWidgets.dart';
//import 'InstLoginPage.dart';
//import 'InstRegisterPage.dart';
import '../InstPages/InstIntroPage.dart';
import '../InstPages/InstLoginPage.dart';
import '../InstPages/InstRegisterPage.dart';
import '../InstaAddCSWidgets.dart';
import '../InputField.dart';
import 'PrtcLoginPage.dart';
import 'PrtcRegisterPage.dart';

class PrtcIntroPage extends StatelessWidget {
  static const String ScreenRoute= 'PrtcIntroPage';
  const PrtcIntroPage({Key? key}) : super(key: key);

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
              SizedBox(
                height: 100,
              ),
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          'assets/blogo.png',
                          width: 150,
                          height: 150,
                          color: Colors.black.withOpacity(0.8),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      CSButton('Sign In', 0xFFF7F6F5, 0x9E36251D,() {Navigator.pushNamed(context, PrtcLoginPage.ScreenRoute);}),
                      CSButton(
                          'Create Account', 0x90BEE5B9, 0xFFF7F6F5,() {Navigator.pushNamed(context, PrtcRegisterPage.ScreenRoute);}),
                      Center(
                        child: TextButton(onPressed: (){Navigator.pushNamed(context, InstIntroPage.ScreenRoute);},
                          child: Text(
                            'Enter As a Inistitution',
                            style: TextStyle(decoration: TextDecoration.underline,
                                fontSize: 12, color: Color(0x9E36251D)),
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F6F5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26)),
                  ),
                ),
              ),
            ],
          ),
          //child: InstHomePageWidgets(),
        ),
      ),
    );
  }
}
