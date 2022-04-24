import 'package:flutter/material.dart';
import 'package:mueeen/AdminWedgets.dart';
//import 'main.dart';
import '../HomeWidgets.dart';
import 'AdminCommunity.dart';
import 'AdminReword.dart';


class AdminHomePage extends StatelessWidget {
  static const String ScreenRoute= 'AdminHomePage';
  const AdminHomePage({Key? key}) : super(key: key);

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
                      AdminHeader_R("Administration Panel"),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,

                                spreadRadius: 0,
                                blurRadius: 1,
                                offset: Offset(0, 1.25), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(color: Color(0xFF898274), width: 1.5),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(11),
                              bottomLeft: Radius.circular(11),
                              topRight: Radius.circular(11),
                              bottomRight: Radius.circular(11),
                            )),
                        child: TextButton(
                          onPressed: () {Navigator.pushNamed(context, AdminCommunity.ScreenRoute);},
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Opacity(
                                    opacity: 0.6,
                                    child: Image.asset(
                                      'assets/PPL.png',
                                      width: 260,
                                      height: 60,
                                    ),
                                  ),
                                  Text("Community servise",
                                      style: TextStyle(fontSize: 10, color: Colors.black45))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,

                                spreadRadius: 0,
                                blurRadius: 1,
                                offset: Offset(0, 1.25), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(color: Color(0xFF898274), width: 1.5),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(11),
                              bottomLeft: Radius.circular(11),
                              topRight: Radius.circular(11),
                              bottomRight: Radius.circular(11),
                            )),
                        child: TextButton(
                          onPressed: () {Navigator.pushNamed(context, AdminReword.ScreenRoute);},
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Opacity(
                                    opacity: 0.6,
                                    child: Image.asset(
                                      'assets/Token.png',
                                      width: 260,
                                      height: 60,
                                    ),
                                  ),
                                  Text("Reword servise",
                                      style: TextStyle(fontSize: 10, color: Colors.black45))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
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
