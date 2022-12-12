import 'language.dart';

class Demonym {
  Map<Language, String>? male;
  Map<Language, String>? female;

  Demonym({this.male, this.female});

  Map toJson() => {
        "male": male?.map((key, value) => MapEntry(key.iso_639_2_alpha3, value)),
        "female": female?.map((key, value) => MapEntry(key.iso_639_2_alpha3, value)),
      };
}
