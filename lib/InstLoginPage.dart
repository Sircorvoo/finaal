import 'package:flutter/material.dart';
import 'InstAddCS.dart';
import 'InstHomePage.dart';
import 'InstHomeWidgets.dart';
import 'InstaAddCSWidgets.dart';

class InstLoginPage extends StatelessWidget {
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
                child: wLogo(),
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
                        children: [Header('assets/PPL.png','Add Community Serveice')],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CSfield('Title',''),
                      CSfield('Classification',''),
                      CSfield('Description',''),
                      CSfield('Community Serveice Banner','uploud Image'),

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
