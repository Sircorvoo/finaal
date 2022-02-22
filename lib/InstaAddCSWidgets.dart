import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String image;
  final String title;

  Header(this.image, this.title);

  @override
  Widget build(BuildContext context) {
    final LengthSized = MediaQuery.of(context).size.height;
    final WidthSized = MediaQuery.of(context).size.width;
    return Container(
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
            color: Color(0xFFE9E9E7),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(26),
                bottomRight: Radius.circular(26))),
        width: LengthSized * 0.28,
        height: WidthSized * 0.15,
        child: Opacity(
          opacity: 0.6,
          child: Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(image),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                child: Container(
                  //margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 9.5,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
    ;
  }
}

class CSfield extends StatelessWidget {
  final String _title;
  final String _hint;
  const CSfield(this._title,this._hint);

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
          child: Container(child: Text(_title,
          style: TextStyle(
            color: Colors.black45
          ),),),
        ),

        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 2, 15, 8),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black45))),
              child: TextFormField(

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




