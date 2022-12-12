class Name {
  ///Official name in english.
  final String official;

  ///Common name in english.
  final String common;

  Name({
    required this.official,
    required this.common,
  });

  @override
  String toString() {
    return "{official: $official, common: $common}";
  }

  Map toJson() => {
        "official": official,
        "common": common,
      };
}
