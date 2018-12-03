/// Bar chart example
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GroupedBarTargetLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  GroupedBarTargetLineChart(this.seriesList, {this.animate});

  factory GroupedBarTargetLineChart.withSampleData() {
    return new GroupedBarTargetLineChart(
      _createSampleEducAttData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    var charts4 =
     charts.BarChart(seriesList,
        animate: animate,
        barGroupingType: charts.BarGroupingType.grouped,
        // behaviors: [new charts.SeriesLegend()],
        customSeriesRenderers: [
          new charts.BarTargetLineRendererConfig<String>(
            // ID used to link series to this renderer.
              customRendererId: 'customTargetLine',
              groupingType: charts.BarGroupingType.grouped)
        ]);
    var chartWidget4 = Padding(
      padding: EdgeInsets.all(12.0),
      child: SizedBox(
        height: 150.0,
        child: charts4,
      ),
    );
    return chartWidget4 ;
  }

  /// Create series list with multiple series
  static List<charts.Series<EducationalAttainment, String>> _createSampleEducAttData() {
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
        id: 'White',
        domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
        measureFn: (EducationalAttainment percent, _) => percent.percent,
        data: whitesData,
      ),
      new charts.Series<EducationalAttainment, String>(
        id: 'Black',
        domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
        measureFn: (EducationalAttainment percent, _) => percent.percent,
        data: blacksData,
      ),
      new charts.Series<EducationalAttainment, String>(
        id: 'Native Am',
        domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
        measureFn: (EducationalAttainment percent, _) => percent.percent,
        data: natAmsData,
      ),
      new charts.Series<EducationalAttainment, String>(
        id: 'Asian',
        domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
        measureFn: (EducationalAttainment percent, _) => percent.percent,
        data: asiansData,
      ),
      new charts.Series<EducationalAttainment, String>(
        id: 'Hawaii/Pac Island',
        domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
        measureFn: (EducationalAttainment percent, _) => percent.percent,
        data: pacIslandersData,
      ),
      new charts.Series<EducationalAttainment, String>(
        id: 'Other',
        domainFn: (EducationalAttainment percent, _) => percent.eduAttain,
        measureFn: (EducationalAttainment percent, _) => percent.percent,
        data: otherRacesData,
      ),
      new charts.Series<EducationalAttainment, String>(
        id: 'Hispanic',
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
}

/// Sample ordinal data type.
class EducationalAttainment {
  final String eduAttain;
  final double percent;

  EducationalAttainment(this.eduAttain, this.percent);
}