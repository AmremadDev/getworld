import './language.dart';

class Demonym {
  ///Name of males residents
  Map<Language, String>? male = {};

  ///Name of females residents
  Map<Language, String>? female = {};

  Demonym({required this.male, required this.female});

  Map toJson() => {
        "male": male?.map((key, value) => MapEntry(key.iso_639_2_alpha3, value)),
        "female": female?.map((key, value) => MapEntry(key.iso_639_2_alpha3, value)),
      };
}
