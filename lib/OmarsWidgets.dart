import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'InstAddCS.dart';
import 'InstHomePage.dart';
import 'InstHomeWidgets.dart';
import 'InstaAddCSWidgets.dart';

class CSfieldEmail extends StatelessWidget {
  final String _title;
  final String _hint;
  const CSfieldEmail(this._title, this._hint);

  @override
  Widget build(BuildContext context) {
    final LengthSized = MediaQuery.of(context).size.height;
    final WidthSized = MediaQuery.of(context).size.width;

    return Column(
      //mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Container(
            child: Text(
              _title,
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 2, 15, 8),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black45))),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    //labelText:_Text ,
                    fillColor: Color(0xFFECECEA),
                    filled: true,
                    hintText: _hint,
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CSButton extends StatelessWidget {
  const CSButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      child: Text("Login"),
      onPressed: () {},
    ));
  }
}
