import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'InstAddCS.dart';
import 'InstHomePage.dart';
import 'InstHomeWidgets.dart';
import 'InstaAddCSWidgets.dart';
import 'InputField.dart';

class CSprofile extends StatelessWidget {
  // const CSprofile({Key? key}) : super(key: key);

  CSprofile(this.nPoints, this.CSdescription, this.imgStr, this.location,
      this.startDate, this.endDate);

  final int nPoints;
  final String CSdescription;
  final String imgStr;
  final String startDate;
  final String endDate;
  final String location;

  @override
  Widget build(BuildContext context) {
    final LengthSized = MediaQuery.of(context).size.height;
    final WidthSized = MediaQuery.of(context).size.width;

    return Container(
      width: WidthSized * 0.9,
      height: LengthSized * 0.2,
      decoration: BoxDecoration(
          color: Color(0xFFCDCDCD),
          borderRadius: BorderRadius.all(Radius.circular(26))),
      child: Column(
        children: [
          Row( // first row for points
            children: [
              Container(
                width: WidthSized * 0.3,
                height: LengthSized * 0.08,
                decoration: BoxDecoration(
                  color: Color(0xFF8D8D8D),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      bottomRight: Radius.circular(26)),
                ),
                child: Row(
                  // child row for container
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18,
                        bottom: 18,
                        left: 12,
                        right: 4,
                      ),
                      child: Image.asset(
                        'assets/Token.png',
                      ),
                    ),
                    Text(
                      nPoints.toString(),
                      style: TextStyle(
                          fontSize: WidthSized * 0.05,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
                // Row for Number of points****
              ),

              SizedBox(
                width: WidthSized * 0.45,
              ),




              Column( // column for image
                children: [
                  Container(
                      width: WidthSized * 0.09,
                      height: LengthSized * 0.08,

                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                          imgStr,
                          width: WidthSized * 0.2,
                          height: LengthSized * 0.2,
                        ),
                      )
                  ),
                ],
              ),





            ], //children
          ),
          SizedBox(
            height: LengthSized * 0.01,
          ),
          Row(
            //2nd row
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                        width: LengthSized * 0.17,
                        child: Text(
                          CSdescription,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF797979)),
                        )),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: LengthSized * 0.01,
          ),
          Row(
            // 3rd row for dates
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                    width: LengthSized * 0.17,
                    child: Text(
                      "$startDate " + "-" + "$endDate",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF797979)),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: LengthSized * 0.01,
          ),
          Row( // 4th row

            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                        width: LengthSized * 0.17,
                        child: Text(
                          location,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF797979)),
                        )),
                  ),
                ],
              ),


              SizedBox(
                width: WidthSized * 0.3,

              ),

              Container(

              ),









            ],
          ),


        ], // children of first big column that contains everything
      ),
    );
  }
}
