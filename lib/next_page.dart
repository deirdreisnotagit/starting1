import 'package:flutter/material.dart';
import 'all_graphs.dart';
import 'all_graphs2.dart';

class NextPage extends StatefulWidget {
  final String lower;
  final String upper;

  NextPage({Key key, this.lower, this.upper}) : super(key: key);

  @override
  _NextPageState createState() => new _NextPageState();
}



class _NextPageState extends State<NextPage> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
            Text("Upper Chamber: ${widget.upper}"),
            Text("Lower Chamber: ${widget.lower}"),
              ],
            ),
            title: Text("You are in ${widget.upper} upper house and ${widget
                .lower} Lower House", style: TextStyle(inherit: true, fontSize: 12.0, fontFamily: 'NothingYouCouldDo'),),
          ),
          body: TabBarView(
           children: <Widget>[
              AllGraphs(),
              AllGraphs2(),
           ],
          ),
        ),
      ),
    );

  }
}

