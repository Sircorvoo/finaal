import 'package:flutter/material.dart';
import '../InstAddCS.dart';
import '../HomeWidgets.dart';
//import 'InstLoginPage.dart';
//import 'InstRegisterPage.dart';
import '../InstPages/InstHomePage.dart';
import '../InstPages/InstIntroPage.dart';
import '../InstPages/InstLoginPage.dart';
import '../InstPages/InstRegisterPage.dart';
import '../InstaAddCSWidgets.dart';
import '../InputField.dart';
import 'PrtcLoginPage.dart';
import 'PrtcRegisterPage.dart';



class PrtcOTPPage extends StatelessWidget {
  static const double square = 100;
  static const String ScreenRoute= 'PrtcOTPPage';
  const PrtcOTPPage({Key? key}) : super(key: key);


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
                      SizedBox(
                        height: 50,
                      ),
                      Text('One time password  has been send to confirm your account'),

                    SizedBox(
                      height: 50,
                    )
                      ,Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OTP(1),
                          OTP(2),
                          OTP(3),
                          OTP(4),

                        ],
                      ),
                      CSButton('Confirm',0xFFF7F6F5,0xFF9B9A93,() {Navigator.pushNamed(context, InstHomePage.ScreenRoute);}),

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
