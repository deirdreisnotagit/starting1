import 'package:flutter/material.dart';
import 'know_district_bar.dart';
import 'next_page.dart';

class HomePage extends StatelessWidget {
  var _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          KnowDistrictBar(height: 110.0),
        Text(
            "Find information from the latest census projections for any state legislative district",
            style: TextStyle(inherit: true, color: Colors.blue, fontSize: 20.0),
          ),
          Image.asset('assets/images/mapPin.png'),
          TextField(
            controller: _textController,
            decoration: InputDecoration(
                contentPadding:  EdgeInsets.all(20.0),
                hintText:
                    'Enter a street address (minimum of zipcode), or leave blank to use your GPS co-ordinates'),
          ),
          RaisedButton(
            child: Text("Find My District"),
            onPressed: () {
              var route = MaterialPageRoute(
                builder: (BuildContext context) =>
                    NextPage(lower: _textController.text, upper: "district 22"),
              );
              Navigator.of(context).push(route);
            },
          ), //Raised Button
        ], // Widget
      ),
    );
  }
}
