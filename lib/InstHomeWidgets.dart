import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class wLogo extends StatelessWidget {
  const wLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/wlogo.png',
              width: 100,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}

class InstLogo extends StatelessWidget {
  //late String Logo ;
  //InstLogo({required String Logo});

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
              topLeft: Radius.circular(26), bottomRight: Radius.circular(26))),
      width: WidthSized * 0.35,
      height: LengthSized * 0.13,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/MOH.png',
        ),
      ),
    );
  }
}

class InatMainBtn extends StatelessWidget {
  final String _image;
  final IconData _icon;
  final String _title;
  final double _sized;

  //final Length = MediaQuery.of(context).size.height ;

  InatMainBtn(this._icon, this._image, this._title, this._sized);

  @override
  Widget build(BuildContext context) {
    final LengthSized = MediaQuery.of(context).size.height;
    final WidthSized = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: WidthSized * 0.65,
          height: LengthSized * 0.129,
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
              )),
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
                      _image,
                      width: _sized,
                      height: _sized,
                    ),
                  ),
                  Text(_title,
                      style: TextStyle(fontSize: 10, color: Colors.black45))
                ],
              )
            ],
          ),
        ),
        Container(
          width: WidthSized * 0.22,
          height: LengthSized * 0.129,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _icon,
                color: Colors.white,
                size: 32,
              ),
              Text(
                'Fuck omar <#',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ],
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,

                spreadRadius: 0,
                blurRadius: 1,
                offset: Offset(0, 1.25), // changes position of shadow
              ),
            ],
            color: Color(0xFFC4C4C4),
            border: Border.all(color: Color(0xFF898274), width: 1.5),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(11),
                bottomRight: Radius.circular(11)),
          ),
          //width: 80,
        )
      ],
    );
  }
}
