import 'package:flutter/material.dart';
import '../InstAddCS.dart';
import 'InstHomePage.dart';
import '../InstHomeWidgets.dart';
import 'InstLoginPage.dart';
import 'InstRegisterPage.dart';
import '../InstaAddCSWidgets.dart';
import '../InputField.dart';

class InstPage1 extends StatelessWidget {
  static const String ScreenRoute= 'InstPage1';
  const InstPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0x47705C53), Color(0x9E36251D)],
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
                          'assets/wlogo.png',
                          width: 150,
                          height: 150,
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
                      CSButton('Institution Sign In', 0xFFF7F6F5, 0xFF9B9A93,() {Navigator.pushNamed(context, InstLoginPage.ScreenRoute);}),
                      CSButton(
                          'Institution Registration', 0x9E36251D, 0xFFF7F6F5,() {Navigator.pushNamed(context, InstRegisterPage.ScreenRoute);}),
                      Center(
                        child: TextButton(onPressed: (){},
                          child: Text(
                            'Enter As a Particpent',
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
