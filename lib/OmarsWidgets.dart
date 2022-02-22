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
  CSButton(this._text);
  final String _text;
  @override
  Widget build(BuildContext context) {
    final LengthSized = MediaQuery.of(context).size.height;
    final WidthSized = MediaQuery.of(context).size.width;
    return Container(
        child: OutlinedButton(
      child: Text(_text),
      onPressed: () {},
    ));
  }
}

class CSPhoneFiled extends StatelessWidget {
  final String _title;
  final String _hint;
  const CSPhoneFiled(this._title, this._hint);

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
                keyboardType: TextInputType.phone,
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

class CSPassword extends StatefulWidget {
  final String _title;
  final String _hint;
  const CSPassword(this._title, this._hint);

  @override
  State<CSPassword> createState() => _CSPasswordState();
}

class _CSPasswordState extends State<CSPassword> {
  bool _isObscure = true;
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
              widget._title,
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
                obscureText: _isObscure,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),

                    //labelText:_Text ,
                    fillColor: Color(0xFFECECEA),
                    filled: true,
                    hintText: widget._hint,
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

