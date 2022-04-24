import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class prtcSearchBar extends StatelessWidget {
  final String _title;
  final String _hint;
  const prtcSearchBar(this._title, this._hint);

  @override
  Widget build(BuildContext context) {
    final LengthSized = MediaQuery.of(context).size.height;
    final WidthSized = MediaQuery.of(context).size.width;

    return Column(
      //mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            //labelText:_Text ,
            fillColor: Color(0xFFDEDADA),
            filled: true,
            hintText: _title,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(26),
            ),
          ),
        ),
      ],
    );
  }
}
