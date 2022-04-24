import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AdminHeader_R extends StatelessWidget {

  final String text;

  AdminHeader_R(this.text);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 950,
      height: 60,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black38,

              spreadRadius: 0,
              blurRadius: 1,
              offset: Offset(0, 1.25), // changes position of shadow
            ),
          ],
          border: Border.all(color: Color(0xFF898274), width: 1.5),
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(26), topRight: Radius.circular(26))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(text, style: TextStyle(fontSize: 17, color: Colors.black45, fontWeight: FontWeight.bold,))),
      ),
    );
  }
}


class AdminHeader_p extends StatelessWidget {

  final String photo;
  final String text;

  AdminHeader_p(this.photo, this.text);


  @override
  Widget build(BuildContext context) {

    return Container(
      width: 950,
      height: 75,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black38,

              spreadRadius: 0,
              blurRadius: 1,
              offset: Offset(0, 1.25), // changes position of shadow
            ),
          ],
          border: Border.all(color: Color(0xFF898274), width: 1.5),
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(26), topRight: Radius.circular(26))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
              children: [
                Image.asset(photo,width: 40,),
                Text(text, style: TextStyle(fontSize: 13, color: Colors.black45, fontWeight: FontWeight.bold,)),
              ],
            )
        ),
      ),
    );
  }
}

class Field extends StatelessWidget {
  // const CSprofile({Key? key}) : super(key: key);

  Field(this.nPoints, this.CSdescription, this.imgStr, this.location,
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
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x4c000000),
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Colors.white, // color of big container
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: WidthSized * 0.0383,
                      top: LengthSized * 0.0502,
                      child: SizedBox(
                        width: WidthSized * 0.4719,
                        height: LengthSized * 0.0588,
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
                      left: WidthSized * 0.0382,
                      top: LengthSized * 0.1011,
                      child: SizedBox(
                        width: WidthSized * 0.4719,
                        height: LengthSized * 0.0490,
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
                      left: WidthSized * 0.6530,
                      top: LengthSized * 0.0102,
                      child: Container(
                        width: WidthSized * 0.1607,
                        height: LengthSized * 0.0699,
                        child: Image.asset(imgStr),
                      ),
                    ),

                    Positioned(
                      top: 0,
                      left: 0,
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

                    Positioned(
                      left: WidthSized * 0.6454,
                      bottom: 0,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: WidthSized * 0.1913,
                          height: LengthSized * 0.0435,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(11),
                            ),
                            border: Border.all(
                              color: Color(0xff909090),
                              width: 1,
                            ),
                            color: Colors.red,
                          ),
                          child: TextButton(
                            child: Text(
                              'Dissapprove',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: WidthSized / LengthSized * 20),
                            ),
                            onPressed: () {
                              print('Pressed');
                            }, // on pressed
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: WidthSized * 0.4540,
                      bottom: 0,
                      child: Container(
                        width: WidthSized * 0.1913,
                        height: LengthSized * 0.0435,
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
                          color: Colors.green,
                        ),
                        child: TextButton(
                          child: Text(
                            'Approve',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: WidthSized / LengthSized * 20),
                          ),
                          onPressed: () {
                            print('Pressed');
                          }, // on pressed
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
              width: WidthSized * 0.4719,
              height: LengthSized * 0.0490,
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

