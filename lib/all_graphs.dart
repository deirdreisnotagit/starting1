import 'package:flutter/material.dart';
import 'simple_bar_chart.dart';
import 'horiz_bar_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class AllGraphs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column( crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
    Text('We move under cover and we move as one'),
    Text('Through the night, we have one shot to live another day'),
    Text('We cannot let a stray gunshot give us away'),
    Text('We will fight up close, seize the moment and stay in it'),
    Text('It’s either that or meet the business end of a bayonet'),
    Text('The code word is ‘Rochambeau,’ dig me?'),
    Text('Rochambeau!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
    HorizBarChart(_createSampleHorizData()),
    SimpleBarChart(_createSampleData()),
    ],
    );
  }
  }




/// Create one series with sample hard coded data.
///
List<charts.Series<OrdinalSales, String>> _createSampleData() {
  final data = [
    new OrdinalSales('2014', 5),
    new OrdinalSales('2015', 25),
    new OrdinalSales('2016', 100),
    new OrdinalSales('2017', 75),
  ];

  return [
    new charts.Series<OrdinalSales, String>(
      id: 'Sales',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (OrdinalSales sales, _) => sales.year,
      measureFn: (OrdinalSales sales, _) => sales.sales,
      data: data,
    )
  ];
}


/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}







List<charts.Series<VoterRec, String>> _createSampleHorizData() {

  final voteDemData = [
    new VoterRec('2014', 5),
    new VoterRec('2015', 25),
    new VoterRec('2016', 100),
    new VoterRec('2017', 75),
  ];

  final voteRepData = [
    new VoterRec('2014', 25),
    new VoterRec('2015', 50),
    new VoterRec('2016', 10),
    new VoterRec('2017', 20),
  ];

  final didntVoteData = [
    new VoterRec('2014', 10),
    new VoterRec('2015', 15),
    new VoterRec('2016', 50),
    new VoterRec('2017', 45),
  ];

  return [
    new charts.Series<VoterRec, String>(
      id: 'Voted Dem',
      domainFn: (VoterRec votes, _) => votes.year,
      measureFn: (VoterRec votes, _) => votes.votes,
      data: voteDemData,
    ),
    new charts.Series<VoterRec, String>(
      id: 'Voted Repub',
      domainFn: (VoterRec votes, _) => votes.year,
      measureFn: (VoterRec votes, _) => votes.votes,
      data: voteRepData,
    ),
    new charts.Series<VoterRec, String>(
      id: 'Didnot Vote',
      domainFn: (VoterRec votes, _) => votes.year,
      measureFn: (VoterRec votes, _) => votes.votes,
      data: didntVoteData,
    ),
  ];
}
/// Sample ordinal data type.
class VoterRec {
  final String year;
  final int votes;

  VoterRec(this.year, this.votes);
}

