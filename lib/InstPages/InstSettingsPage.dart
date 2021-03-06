import 'package:flutter/material.dart';
import '../InstAddCS.dart';
import 'InstHomePage.dart';
import '../HomeWidgets.dart';
import '../InstaAddCSWidgets.dart';
import '../InputField.dart';
import '../MainCardWidgets.dart';


class InstEditpage extends StatelessWidget {
  static const String ScreenRoute= 'InstEditpage';
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
                            Header('assets/PPL.png', 'Add Community Services')
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        for(int i = 0 ; i <10; i++)
                        mainCard(1, 'Organizing the vaccine center',
                            'assets/MOH.png', 'Riyadh', '24 Nov', '30 Nov','Edit',0xff909090 , 'Delete',0xFFAF2E2E)
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
