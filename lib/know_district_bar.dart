import 'package:flutter/material.dart';



class KnowDistrictBar extends StatelessWidget {
  final double height;

  const KnowDistrictBar({Key key, this.height}) : super(key: key);
  // const KnowDistrictBar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
       AppBar(
         title: Text(
            "Know Your District",
            style: TextStyle(fontFamily: 'NothingYouCouldDo', fontWeight: FontWeight.bold, color: Colors.white),
          ),
        );
    }
}