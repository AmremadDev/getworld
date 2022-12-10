
class Name {
  final String official;
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
        "common": common
      };
}
