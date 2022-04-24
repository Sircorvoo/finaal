import 'package:flutter/material.dart';
//import 'main.dart';
import '../InstAddCS.dart';
import 'InstAddRewardedServicePage.dart';
import 'InstSettingsPage.dart';
import '../InstHomeWidgets.dart';
import 'InstRewardServicePage.dart';

class InstHomePage extends StatelessWidget {
  static const String ScreenRoute= 'InstHomePage';
  const InstHomePage({Key? key}) : super(key: key);

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
                        children: [InstLogo('assets/MOH.png')],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AddServeiceBtn(Icons.settings, 'assets/PPL.png',
                          'Add Omar Serveice', 60,() {Navigator.pushNamed(context, InstAddCS.ScreenRoute);},() {Navigator.pushNamed(context, InstEditpage.ScreenRoute);}),
                      SizedBox(height: 16),
                      AddServeiceBtn(Icons.settings, 'assets/Token.png',
                          'Add Reword Serveice', 40, () {Navigator.pushNamed(context, InstAddRewardedService.ScreenRoute);}, () {Navigator.pushNamed(context, InstRewardService.ScreenRoute);}),
                      //SizedBox(height: 120),
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
