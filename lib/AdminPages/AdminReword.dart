import 'package:flutter/material.dart';


import '../HomeWidgets.dart';
import '../AdminWedgets.dart';


class AdminReword extends StatelessWidget {
  static const String ScreenRoute= 'AdminReword';
  const AdminReword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xBE8D8D8D), Color(0xFF343434)],
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
                      AdminHeader_p('assets/Token.png','Reword Service'),
                      SizedBox(
                        height: 15,
                      ),
                      Field(70, 'Noon', 'assets/Noon.png', ' ', '25% ',
                          ' coupon'),
                      SizedBox(height: 16),
                      Field(70, 'Noon', 'assets/Noon.png', ' ', '25% ',
                          ' coupon'),
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