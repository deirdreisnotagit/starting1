import 'package:flutter/material.dart';

class DistrictItem {
  DistrictItem(
      {this.lowerID, this.upperID, this.lowerName, this.upperName, this.state});

  static const LOWERID = "24";
  static const UPPERID = "13";
  static const STATE = 'CA ';
  static const LOWERNAME = "Assembly 24";
  static const UPPERNAME = "Senate 13";
  final int lowerID;
  final int upperID;
  final String state;
  final String lowerName;
  final String upperName;
  final Education data = Education();

  static DistrictItem pareJson(json) {
    var item = DistrictItem(
        lowerID: json[LOWERID],
        upperID: json[UPPERID],
        lowerName: json[LOWERNAME],
        upperName: json[UPPERNAME],
        state: json(STATE));
    return item;
  }
}

class Education {
  final AgeRange  ageRange = AgeRange();
  final EducationType educationType = EducationType();
  double data;

}


class EducationType {
  static const NO_HS_DIPLOMA = "< HS";
  static const HS_DIPLOMA = "HS graduate";
  static const SOME_COLLEGE = "Some college or associate's degree";
  static const DEGREE = ">=BA";

}

class AgeRange{
  static const EIGHTEEN_TO_TWENTY_FOUR = "18 to 24 years";
  static const TWENTY_FIVE_AND_OVER = "25 and over";

}
