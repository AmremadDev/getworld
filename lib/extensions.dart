import 'dart:core';
import 'package:getworld/getworld.dart';

extension CurrenciesExtensions on List<Currency> {
  List<Currency>? withCode(String iso_4217_code) {
    return where((element) => element.iso_4217_code == iso_4217_code).toList();
  }
}

extension CountriesExtensions on List<Country> {
  ///Whether this [code] equal a match of [iso_3166_1_alpha3].
  List<Country>? equalISO_3166_1_alpha3(String code) {
    return where((element) => element.iso_3166_1_alpha3 == code).toList();
  }

  ///Whether this [Commaon name] equal a match of [name].
  Country equalCommonName(String name) {
    return singleWhere((element) => element.name.common.toLowerCase() == name.toLowerCase());
  }

  ///Whether this [Offical Name] equal a match of [name].
  Country equalOfficialName(String name) {
    return singleWhere((element) => element.name.official.toLowerCase() == name.toLowerCase());
  }

  ///Whether this [Common Name] contains a match of [string].
  List<Country>? containCommonName(String string) {
    return where((element) => element.name.common.toLowerCase().contains(string.toLowerCase())).toList();
  }

  ///Whether this [Offical name] contains a match of [string].
  List<Country>? containOfficialName(String string) {
    return where((element) => element.name.official.toLowerCase().contains(string.toLowerCase())).toList();
  }

  ///Whether this [Common Name] starts with a match of [string].
  List<Country>? startCommonName(String string) {
    return where((element) => element.name.common.toLowerCase().startsWith(string.toLowerCase())).toList();
  }

  ///Whether this [Offical name] starts with a match of [string].
  List<Country>? startOfficialName(String string) {
    return where((element) => element.name.official.toLowerCase().startsWith(string.toLowerCase())).toList();
  }

  /// get the set of all first letters by Common Name.
  ///
  /// Example:
  /// ```dart
  /// {'A' , 'B' , 'C' , 'D' , ....};
  /// ```
  List<String>? alphabetSetByCommonName() {
    List<String>? list = map((e) => e.name.common[0].toUpperCase()).toSet().toList();
    list.sort();
    return list;
  }

  /// get the set of all first letters by Official Name.
  ///
  /// Example:
  /// ```dart
  /// {'A' , 'B' , 'C' , 'D' , ....};
  /// ```
  List<String>? alphabetSetByOfficialName() {
    List<String>? list = map((e) => e.name.official[0].toUpperCase()).toSet().toList();
    list.sort();
    return list;
  }

  List<Country>? startDialCode(String code) {
    return where((element) => element.dialling!.calling_code.toLowerCase().startsWith(code.toLowerCase())).toList();
  }

  List<Country>? equalDialCode(String code) {
    return where((element) => element.dialling!.calling_code.toLowerCase() == code.toLowerCase()).toList();
  }

  List<Country>? containDialCode(String code) {
    return where((element) => element.dialling!.calling_code.toLowerCase() == code.toLowerCase()).toList();
  }



}


