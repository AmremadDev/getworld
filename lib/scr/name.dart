

class Name {
  final String official;
  final String common;

  Name({
    required this.official,
    required this.common,
  });

  // Name native(String lan) {
  //   if (natives == null)
  //     return Name();
  //   else if (natives![lan] == null)
  //     return Name();
  //   else
  //     return Name(official: natives![lan]["official"], common: natives!["$lan"]["common"]);
  // }

  // Name translation(String lang) {
  //   if (translations == null)
  //     return Name();
  //   else if (translations![lang] == null)
  //     return Name();
  //   else
  //     return Name(official: translations![lang]["official"], common: translations![lang]["common"]);
  // }

  Map toJson() => {
        "official": official,
        "common": common,
      };
}
