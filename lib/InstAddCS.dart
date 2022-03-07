import 'package:flutter/material.dart';
import 'InstAddCS.dart';
import 'InstHomePage.dart';
import 'InstHomeWidgets.dart';
import 'InstRegisterPage.dart';
import 'InstaAddCSWidgets.dart';
import 'OmarsWidgets.dart';

class InstAddCS extends StatelessWidget {
  static const String ScreenRoute= 'InstAddCS';
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

          child: Padding(
            padding: const EdgeInsets.all(0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: wLogo(),
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
                        Row(
                          children: [Header('assets/PPL.png','Add Community Serveice')],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CSfield('Community Serveice Name', ''),
                        CSPhoneFiled('Amount of Point', ''),
                        CSDateFiled('Expire Date', ''),
                        CSfield('Classification', ''),
                        CSPhoneFiled('People Quantity', ''),
                        CSfield('Description', ''),
                        CSfield('Logo', ''),
                        CSButton('Sumbit',0xFFF7F6F5,0xFF9B9A93,() {Navigator.pushNamed(context, InstRegisterPage.ScreenRoute);}),
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
