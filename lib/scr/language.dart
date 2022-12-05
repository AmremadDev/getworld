class Language {

  ///Iso_639_1_alpha2 language code
  String? iso_639_1_alpha2;

  ///Iso_639_1_alph32 language code
  String? iso_639_2_alpha3;

  ///
  String? family;

  ///
  String? name;

  ///
  String? native;

  ///
  String? wikiUrl;

  ///
  Map<Language, List<String>?>? name_in ={};

  Language({
    this.iso_639_1_alpha2,
    this.iso_639_2_alpha3,
    this.family,
    this.name,
    this.native,
    this.wikiUrl,
    this.name_in,
  }) {
    name_in = {};
  }

  Map toJson() => {
        "iso_639_1__alpha2": iso_639_1_alpha2,
        "iso_639_2__alpha3": iso_639_2_alpha3,
        "family": family,
        "name": name,
        "native": native,
        "wikiUrl": wikiUrl,
        "name_in": name_in!.map((key, value) => MapEntry(key.iso_639_2_alpha3, value))
      };
}
