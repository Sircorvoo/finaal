import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'InstAddCS.dart';
import 'InstHomePage.dart';
import 'InstHomeWidgets.dart';
import 'InstaAddCSWidgets.dart';
import 'OmarsWidgets.dart';

class CSmainField extends StatelessWidget {
  // const CSprofile({Key? key}) : super(key: key);

  CSmainField(this.nPoints, this.CSdescription, this.imgStr, this.location,
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
    print(WidthSized);
    print(LengthSized);

    return Container(
      width: WidthSized * 0.839,
      height: LengthSized * 0.1745,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: WidthSized * 0.839,
                height: LengthSized * 0.16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                    color: Color(0xff9b9a93),
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x4c000000),
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Color(0xa3e5e5e5), // color of big container
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 15,
                      top: 39.28,
                      child: SizedBox(
                        width: 185,
                        height: 45.99,
                        child: Text(
                          CSdescription,
                          style: TextStyle(
                            color: Color(0xff727063),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 79,
                      child: SizedBox(
                        width: 185,
                        height: 38.32,
                        child: Text(
                          "$startDate" + "-" + "$endDate",
                          style: TextStyle(
                            color: Color(0xff9b9a93),
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 256,
                      top: 8,
                      child: Container(
                        width: 63,
                        height: 54.61,
                        child: Image.asset(imgStr),
                      ),
                    ),

                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          // the top left container to write the points
                          width: WidthSized * 0.18,
                          height: LengthSized * 0.04,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(11),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(11),
                            ),
                            color: Color(0xff9b9a93),
                          ),
                          child: Row(
                            // child row for container
                            children: [
                              SizedBox(
                                width: WidthSized * 0.03,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Image.asset(
                                  'assets/Token.png',
                                  height: LengthSized * 0.03,
                                  width: WidthSized * 0.03,
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
                        ),
                      ),
                    ),

// ********************************************** put the comment here for position
                    /* Positioned(
                    left: 20,
                    top: 12.46,
                    child: Container(
                      width: 11,
                      height: 10.54,
                      padding: const EdgeInsets.only(left: 2889, bottom: 1861, ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:[
                          Transform.rotate(
                            angle: -0.77,
                            child: Container(
                              width: double.infinity,
                              height: 3.41,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.cyan,
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: -0.77,
                            child: Container(
                              width: double.infinity,
                              height: 3.41,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.cyan,
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: -0.77,
                            child: Container(
                              width: double.infinity,
                              height: 3.41,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.cyan,
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: -0.77,
                            child: Container(
                              width: double.infinity,
                              height: 3.41,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.cyan,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),*/

                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 88,
                          height: 33.53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(11),
                            ),
                            border: Border.all(
                              color: Color(0xff909090),
                              width: 1,
                            ),
                            color: Color(0xffd05d5d),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 152,
                      top: 91,
                      child: Container(
                        width: 88,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(11),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                          ),
                          border: Border.all(
                            color: Color(0xff909090),
                            width: 1,
                          ),
                          color: Color(0xffc1b6b6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: WidthSized * 0.04, //
            top: LengthSized * 0.127,
            child: SizedBox(
              width: 185,
              height: 38.32,
              child: Text(
                location,
                style: TextStyle(
                  color: Color(0xff9b9a93),
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
