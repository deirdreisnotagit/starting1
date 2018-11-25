import 'package:flutter/material.dart';



class KnowDistrictBar extends StatelessWidget {
  final double height;

  const KnowDistrictBar({Key key, this.height}) : super(key: key);
  // const KnowDistrictBar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column (
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
       Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color(0xFF0731AF), const Color(0xFF276FFB)],),
          ),
         height: height,
        ),
       AppBar(

          title: Text(
            "Know Your District",
            style: TextStyle(fontFamily: 'NothingYouCouldDo', fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    );
  }
}