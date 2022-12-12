class Language {
  ///Iso_639_1_alpha2 language code
  final String iso_639_1_alpha2;

  ///Iso_639_1_alph32 language code
  final String iso_639_2_alpha3;

  ///Language family
  final String family;

  ///language name.
  final String name;

  ///Set of all native translation names.
  String? native;

  ///Relative link to language wikipedia page.
  final String wikiUrl;

  ///Set of all available translation names.
  Map<Language, List<String>?>? name_in = {};

  Language({
    required this.iso_639_1_alpha2,
    required this.iso_639_2_alpha3,
    required this.family,
    required this.name,
    this.native,
    required this.wikiUrl,
    this.name_in,
  });

  Map toJson() => {
        "iso_639_1_alpha2": iso_639_1_alpha2,
        "iso_639_2_alpha3": iso_639_2_alpha3,
        "family": family,
        "name": name,
        "native": native,
        "name_in": name_in!.map((key, value) => MapEntry(key.iso_639_2_alpha3, value)),
        "wikiUrl": wikiUrl
      };
}
