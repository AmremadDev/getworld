class TimeZone {
  final String zoneName;
  final int gmtOffset;
  final String gmtOffsetName;
  final String abbreviation;
  final String tzName;

  TimeZone({
    ///Zone name.
    required this.zoneName,

    ///The time differs from Greenwich Mean Time.
    required this.gmtOffset,

    ///Greenwich Mean Time name.
    required this.gmtOffsetName,

    ///Time zone abbreviation.
    required this.abbreviation,

    ///Time zone name.
    required this.tzName,
  });

  Map toJson() => {
        "zoneName": zoneName,
        "gmtOffset": gmtOffset,
        "gmtOffsetName": gmtOffsetName,
        "abbreviation": abbreviation,
        "tzName": tzName,
      };
}
