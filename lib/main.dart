import 'package:flutter/material.dart';
import 'InstAddCS.dart';
import 'InstSettingsPage.dart';
import 'InstHomePage.dart';
import 'InstLoginPage.dart';
import 'InstRegisterPage.dart';
import 'InstRewardServicePage.dart';
import 'InstIntroPage.dart';
import 'InstAddRewardedServicePage.dart';

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
