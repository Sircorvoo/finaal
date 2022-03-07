import 'package:flutter/material.dart';
import 'InstAddCS.dart';
import 'InstEditpage.dart';
import 'InstHomePage.dart';
import 'InstLoginPage.dart';
import 'InstRegisterPage.dart';
import 'InstRewardService.dart';
import 'OmarsWidgets.dart';
import 'InstPage1.dart';
import 'InstAddRewardedService.dart';

void main() => runApp(MaterialApp(
      home: InstPage1(),
      initialRoute: InstHomePage.ScreenRoute ,
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
