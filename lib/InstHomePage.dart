import 'package:flutter/material.dart';
//import 'main.dart';
import 'InstHomeWidgets.dart';

class InstHomePage extends StatelessWidget {
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
                decoration: BoxDecoration(
                  
                ),
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
                        children: [InstLogo()],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InatMainBtn(Icons.settings, 'assets/PPL.png',
                          'Addd Community Serveice', 60),
                      SizedBox(height: 16),
                      InatMainBtn(Icons.settings, 'assets/Token.png',
                          'Add Reword Serveice', 40),
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
