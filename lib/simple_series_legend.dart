/// Bar chart with series legend example
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SimpleSeriesLegend extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleSeriesLegend(this.seriesList, {this.animate});

  factory SimpleSeriesLegend.withSampleData() {
    return new SimpleSeriesLegend(
      _createSampleVoterData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {

    var charts3 = new charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
      // Add the series legend behavior to the chart to turn on series legends.
      // By default the legend will display above the chart.
      behaviors: [new charts.SeriesLegend()],
    );
    var chartWidget3 = Padding(
      padding: EdgeInsets.all(12.0),
      child: SizedBox(
        height: 150.0,
        child: charts3,
      ),
    );
    return chartWidget3;
  }

  /// Create series list with multiple series
  static List<charts.Series<VoterRec2, String>> _createSampleVoterData() {
    final votedDemData = [
      new VoterRec2('2010', 5),
      new VoterRec2('2012', 25),
      new VoterRec2('2014', 80),
      new VoterRec2('2016', 72),
    ];

    final votedRepData = [
      new VoterRec2('2010', 25),
      new VoterRec2('2012', 50),
      new VoterRec2('2014', 10),
      new VoterRec2('2016', 20),
    ];

    final votedOtherData = [
      new VoterRec2('2010', 0),
      new VoterRec2('2012', 5),
      new VoterRec2('2014', 2),
      new VoterRec2('2016', 10),
    ];

    final didNotVoteData = [
      new VoterRec2('2010', 20),
      new VoterRec2('2012', 35),
      new VoterRec2('2014', 15),
      new VoterRec2('2016', 10),
    ];

    return [
    new charts.Series<VoterRec2, String>(
        id: 'Dem',
        domainFn: (VoterRec2 votes2, _) => votes2.year,
    measureFn: (VoterRec2 votes2, _) => votes2.votes2,
    data: votedDemData,
    ),
    new charts.Series<VoterRec2, String>(
    id: 'Rep',
    domainFn: (VoterRec2 votes2, _) => votes2.year,
    measureFn: (VoterRec2 votes2, _) => votes2.votes2,
    data: votedRepData,
    ),
    new charts.Series<VoterRec2, String>(
    id: 'Other',
    domainFn: (VoterRec2 votes2, _) => votes2.year,
    measureFn: (VoterRec2 votes2, _) => votes2.votes2,
    data: votedOtherData,
    ),
    new charts.Series<VoterRec2, String>(
    id: 'None',
    domainFn: (VoterRec2 votes2, _) => votes2.year,
    measureFn: (VoterRec2 votes2, _) => votes2.votes2,
    data: didNotVoteData,
    ),
    ];
  }
}

/// Sample ordinal data type.
class VoterRec2 {
  final String year;
  final int votes2;

  VoterRec2(this.year, this.votes2);
}