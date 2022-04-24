import 'package:flutter/material.dart';
import '../InstAddCS.dart';

import '../HomeWidgets.dart';
import '../InstaAddCSWidgets.dart';
import '../InputField.dart';

class PrtcLoadingPage extends StatelessWidget {
  static const String ScreenRoute= 'PrtcLoadingPage';
  const PrtcLoadingPage({Key? key}) : super(key: key);

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

              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Container(
                          child: Image.asset(
                            'assets/blogo.png',
                            width: 250,
                            height: 250,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                      ),


                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [


                         TextButton(onPressed: (){},
                              child: Text(
                                'Powered By',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            ),

                          Center(
                            child: Container(
                              child: Image.asset(
                                'assets/KSU.png',
                                width: 200,
                                height: 200,

                              ),
                            ),
                          ),


                        ],

                      ),


                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0x75F7F6F5),
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
