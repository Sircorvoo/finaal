import 'package:flutter/material.dart';
import 'PrtcPage/PrtcHomePage.dart';
import 'PrtcPage/PrtcLoadingPage.dart';
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
import 'PrtcPage/PrtcIntroPage.dart';
import 'PrtcPage/PrtcLoginPage.dart';
import 'PrtcPage/PrtcOTPPage.dart';
import 'PrtcPage/PrtcRegisterPage.dart';
import 'PrtcPage/PrtcHomePage.dart';

void main() => runApp(MaterialApp(
      initialRoute: PrtcHomePage.ScreenRoute ,
      routes: {

        PrtcHomePage.ScreenRoute: (Context) =>PrtcHomePage(),

        PrtcOTPPage.ScreenRoute: (Context) =>PrtcOTPPage(),
        PrtcRegisterPage.ScreenRoute: (Context) =>PrtcRegisterPage(),
        PrtcLoginPage.ScreenRoute: (Context) =>PrtcLoginPage(),
        PrtcIntroPage.ScreenRoute: (Context) =>PrtcIntroPage(),
        PrtcLoadingPage.ScreenRoute: (Context) =>PrtcLoadingPage(),
        InstIntroPage.ScreenRoute: (Context) => InstIntroPage(),
        InstRegisterPage.ScreenRoute: (Context) => InstRegisterPage(),
        InstLoginPage.ScreenRoute: (Context) => InstLoginPage(),
        InstRewardService.ScreenRoute: (Context) => InstRewardService(),
        InstHomePage.ScreenRoute: (Context) => InstHomePage(),
        InstEditpage.ScreenRoute: (Context) => InstEditpage(),
        InstAddRewardedService.ScreenRoute: (Context) => InstAddRewardedService(),
        InstAddCS.ScreenRoute: (Context) => InstAddCS(),
      },


    ));
