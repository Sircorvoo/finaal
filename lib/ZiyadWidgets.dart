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

    return Container();
  }
}
