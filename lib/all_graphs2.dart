import 'package:flutter/material.dart';
import 'grouped_bar_target_line_chart.dart';
import 'simple_series_legend.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class AllGraphs2 extends StatelessWidget {
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
        SimpleSeriesLegend(_createSampleVoterData()),
        GroupedBarTargetLineChart(_createSampleEducAttData()),
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






List<charts.Series<VoterRec2, String>> _createSampleVoterData() {
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
      id: 'Democratic',
      domainFn: (VoterRec2 votes2, _) => votes2.year,
      measureFn: (VoterRec2 votes2, _) => votes2.votes2,
      data: votedDemData,
    ),
    new charts.Series<VoterRec2, String>(
      id: 'Republican',
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
      id: 'Didn\'t Vote',
      domainFn: (VoterRec2 votes2, _) => votes2.year,
      measureFn: (VoterRec2 votes2, _) => votes2.votes2,
      data: didNotVoteData,
    ),
  ];
}

/// Sample ordinal data type.
class VoterRec2 {
  final String year;
  final int votes2;

  VoterRec2(this.year, this.votes2);
}

List<charts.Series<EducationalAttainment, String>> _createSampleEducAttData() {
  final whitesData = [
    new EducationalAttainment('HS Grad', 97.9),
    new EducationalAttainment('BA or Higher', 72.3),
  ];

  final blacksData = [
    new EducationalAttainment('HS Grad', 89.0),
    new EducationalAttainment('BA or Higher', 29.8),
  ];

  final natAmsData = [
    new EducationalAttainment('HS Grad', 66.4),
    new EducationalAttainment('BA or Higher', 18.8),
  ];
  final asiansData = [
    new EducationalAttainment('HS Grad', 96.3),
    new EducationalAttainment('BA or Higher', 80.2),
  ];

  final pacIslandersData = [
    new EducationalAttainment('HS Grad', 89.5),
    new EducationalAttainment('BA or Higher', 18.1),
  ];

  final otherRacesData = [
    new EducationalAttainment('HS Grad', 53.3),
    new EducationalAttainment('BA or Higher', 12.5),
  ];

  final hispanicsData = [
    new EducationalAttainment('HS Grad', 61.0),
    new EducationalAttainment('BA or Higher', 19.5),
  ];

  final whitesMedianData = [
    new EducationalAttainment('HS Grad', 95.0),
    new EducationalAttainment('BA or Higher', 43.9),
  ];

  final blacksMedianData = [
    new EducationalAttainment('HS Grad', 89.6),
    new EducationalAttainment('BA or Higher', 25.6),
  ];

  final natAmsMedianData = [
    new EducationalAttainment('HS Grad', 77.2),
    new EducationalAttainment('BA or Higher', 13.7),
  ];

  final asiansMedianData = [
    new EducationalAttainment('HS Grad', 87.5),
    new EducationalAttainment('BA or Higher', 52.5),
  ];

  final pacIslandersMedianData = [
    new EducationalAttainment('HS Grad', 87.5),
    new EducationalAttainment('BA or Higher', 20.8),
  ];

  final otherRacesMedianData = [
    new EducationalAttainment('HS Grad', 60.8),
    new EducationalAttainment('BA or Higher', 10.1),
  ];

  final hispanicsMedianData = [
    new EducationalAttainment('HS Grad', 64.8),
    new EducationalAttainment('BA or Higher', 13.0),
  ];

  return [
    new charts.Series<EducationalAttainment, String>(
      id: 'W',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: whitesData,
    ),
    new charts.Series<EducationalAttainment, String>(
      id: 'B',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: blacksData,
    ),
    new charts.Series<EducationalAttainment, String>(
      id: 'NA',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: natAmsData,
    ),
    new charts.Series<EducationalAttainment, String>(
      id: 'A',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: asiansData,
    ),
    new charts.Series<EducationalAttainment, String>(
      id: 'PI',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: pacIslandersData,
    ),
    new charts.Series<EducationalAttainment, String>(
      id: 'O',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: otherRacesData,
    ),
    new charts.Series<EducationalAttainment, String>(
      id: 'H',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: hispanicsData,
    )
    // Configure our custom bar target renderer for this series.
      ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
    new charts.Series<EducationalAttainment, String>(
      id: 'White Median Line',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: whitesMedianData,
    )
    // Configure our custom bar target renderer for this series.
      ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
    new charts.Series<EducationalAttainment, String>(
      id: 'Black Median Line',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: blacksMedianData,
    )
    // Configure our custom bar target renderer for this series.
      ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
    new charts.Series<EducationalAttainment, String>(
      id: 'Nat Am Median Line',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: natAmsMedianData,
    )
    // Configure our custom bar target renderer for this series.
      ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
    new charts.Series<EducationalAttainment, String>(
      id: 'Asian Median Line',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: asiansMedianData,
    )
    // Configure our custom bar target renderer for this series.
      ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
    new charts.Series<EducationalAttainment, String>(
      id: 'Hawaii/Pac Is Median Line',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: pacIslandersMedianData,
    )
    // Configure our custom bar target renderer for this series.
      ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
    new charts.Series<EducationalAttainment, String>(
      id: 'Other Races Median Line',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: otherRacesMedianData,
    )
    // Configure our custom bar target renderer for this series.
      ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
    new charts.Series<EducationalAttainment, String>(
      id: 'Hispanic Median Line',
      domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
      measureFn: (EducationalAttainment percent, _) => percent.percent,
      data: hispanicsMedianData,
    )
    // Configure our custom bar target renderer for this series.
      ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
  ];
}


/// Sample ordinal data type.
class EducationalAttainment {
  final String eduAttain;
  final double percent;

  EducationalAttainment(this.eduAttain, this.percent);
}