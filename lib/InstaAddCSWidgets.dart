import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  final String image;
  final String title;

  Header(this.image,this.title);

  @override
  Widget build(BuildContext context) {
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
        width: 170,
        height: 60,
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

              Container(child: Text(title,
              style: TextStyle(
                fontSize: 9
              ),),)
            ],
          ),
        ));
    ;
  }
}
