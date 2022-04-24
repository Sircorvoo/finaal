import 'package:flutter/material.dart';
import '../InstAddCS.dart';
import 'InstSettingsPage.dart';
import 'InstHomePage.dart';
import '../InstHomeWidgets.dart';
import 'InstLoginPage.dart';
import 'InstRegisterPage.dart';
import '../InstaAddCSWidgets.dart';
import '../InputField.dart';
import 'InstIntroPage.dart';
import 'InstAddRewardedServicePage.dart';
import '../MainCardWidgets.dart';

class InstRewardService extends StatelessWidget {
  static const String ScreenRoute= 'InstRewardService';
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
                    child: Mu3eenWightLogo(),
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
                          children: [
                            Header('assets/Token.png', 'Add Rewarded Serveice')
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        mainCard(70, 'Noon', 'assets/Noon.png', ' ', '25% ',
                            ' coupon','Edit',0xff909090 , 'Delete',0xFFAF2E2E)
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
