import 'language.dart';

class Demonym {
  Map<Language, String>? male;
  Map<Language, String>? famale;

  Demonym({this.male, this.famale});

  Map toJson() => {
        "male": male?.map((key, value) => MapEntry(key.iso_639_2_alpha3, value)),
        "famale": famale?.map((key, value) => MapEntry(key.iso_639_2_alpha3, value)),
      };
}
