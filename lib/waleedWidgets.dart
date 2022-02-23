import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'InstAddCS.dart';
import 'InstHomePage.dart';
import 'InstHomeWidgets.dart';
import 'InstaAddCSWidgets.dart';
import 'OmarsWidgets.dart';

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
    print(LengthSized);
    print(WidthSized);

    return Container(
      width: WidthSized * 0.9,
      height: LengthSized * 0.18,
      decoration: BoxDecoration(
          color: Color(0xFFCDCDCD),
          borderRadius: BorderRadius.all(Radius.circular(26))),
      child: Column(
        children: [
          Row(
            // first row for points
            children: [
              Container(
                width: WidthSized * 0.24,
                height: LengthSized * 0.05,
                decoration: BoxDecoration(
                  color: Color(0xFF8D8D8D),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      bottomRight: Radius.circular(26)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
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



                 Row(
                   children: [
                     Container(
                      height: 40,
                      width: 70,
                      child: Image.asset(
                        imgStr,
                      ),
                ),
                   ],
                 ),

            ],
          ),
        ],
      ),
    );
  }
}
