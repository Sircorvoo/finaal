import 'package:flutter/material.dart';
import 'InstAddCS.dart';
//import 'InstSettingsPage.dart';
//import 'InstHomePage.dart';
//import 'InstLoginPage.dart';
//import 'InstRegisterPage.dart';
import 'InstPages/InstRewardServicePage.dart';
import 'InstPages/InstIntroPage.dart';
import 'InstPages/InstAddRewardedServicePage.dart';
import 'InstPages/InstHomePage.dart';
import 'InstPages/InstRegisterPage.dart';
import 'InstPages/InstSettingsPage.dart';
import 'InstPages/InstLoginPage.dart';

void main() => runApp(MaterialApp(
      initialRoute: InstPage1.ScreenRoute ,
      routes: {
        InstPage1.ScreenRoute: (Context) => InstPage1(),
        InstRegisterPage.ScreenRoute: (Context) => InstRegisterPage(),
        InstLoginPage.ScreenRoute: (Context) => InstLoginPage(),
        InstRewardService.ScreenRoute: (Context) => InstRewardService(),
        InstHomePage.ScreenRoute: (Context) => InstHomePage(),
        InstEditpage.ScreenRoute: (Context) => InstEditpage(),
        InstAddRewardedService.ScreenRoute: (Context) => InstAddRewardedService(),
        InstAddCS.ScreenRoute: (Context) => InstAddCS(),
      },


    ));
