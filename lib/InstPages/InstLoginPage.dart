import 'package:flutter/material.dart';
import '../InstAddCS.dart';
import 'InstHomePage.dart';
import '../InstHomeWidgets.dart';
import 'InstRegisterPage.dart';
import '../InstaAddCSWidgets.dart';
import '../InputField.dart';

class InstLoginPage extends StatelessWidget {
  static const String ScreenRoute= 'InstLoginPage';
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
              Container(
                child: Mu3eenWightLogo(),
              ),
              SizedBox(
                height: 75,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F6F5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [Header('assets/PPL.png','Login as Institution')],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CSfieldEmail('Email',''),
                      CSPassword('Password', ''),
                      CSButton('Login',0xFFF7F6F5,0xFF9B9A93,() {Navigator.pushNamed(context, InstHomePage.ScreenRoute);}),
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
