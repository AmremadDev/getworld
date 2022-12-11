import 'currency.dart';
import 'demonym.dart';
import 'dialling.dart';
import 'geographical.dart';

import 'name.dart';
import 'timezone.dart';
import 'vat_rate.dart';

import 'language.dart';
import 'extra.dart';
import 'population.dart';
import 'province.dart';

class Country {
  ///ISO 3166-1 alpha-2 code.
  String iso_3166_1_alpha2;

  ///ISO 3166-1 alpha-3 code.
  String iso_3166_1_alpha3;

  ///ISO 3166-1 numeric code.
  String iso_3166_1_numeric;

  ///Name in english contains official name and common name.
  final Name name;

  ///List of all native names
  ///key:   [Language] object.
  ///
  ///value: [Name] object.
  ///
  ///          official - official name.
  ///          common   - common name.
  final Map<Language, Name>? natives;

  ///List of of name translation
  ///key:   [Language] object.
  ///
  ///value: [Name] object.
  ///
  ///          official - official name translation.
  ///          common   - common name translation.
  final Map<Language, Name>? translations;

  ///Alternative spellings
  final List<String>? alt_spellings;

  ///Country code top-level domain
  List<String>? tld = [];

  ///International Olympic Committee code.
  String? cioc;

  ///
  String? status;

  ///United Nations member `true` and `false`
  bool unMember;

  ///List of official currencies.
  List<Currency>? currencies;

  ///Dialing code and national number lengths.
  Dialling? dialling;

  ///Capital city
  List<String>? capital;

  /// Geographical informations.
  Geographical? geographical;

  String? flag_symbol;

  ///List of official languages.
  List<Language>? languages;

  /// Population informations.
  Population? population;

  ///Extra informations.
  Extra? extra;

  ///
  List<Province>? provinces;

  ///8-bit Unicode Transformation Format
  String? emoji;

  ///Formal_Unicode_Notation
  String? emojiU;

  ///
  VATRate? vat_rates;

  ///
  List<TimeZone>? timezones = [];

  ///A name used to denote the inhabitants of a place
  Demonym? demonyms;

  ///Relative link to country wikipedia page
  String? wikiLink = "";
  Country({
    required this.iso_3166_1_alpha2,
    required this.iso_3166_1_alpha3,
    required this.iso_3166_1_numeric,
    required this.name,
    this.natives,
    this.translations,
    this.alt_spellings,
    this.cioc,
    this.status,
    this.capital,
    this.tld,
    this.unMember = false,
    this.currencies,
    this.dialling,
    this.geographical,
    this.flag_symbol,
    this.languages,
    this.population,
    this.extra,
    this.provinces,
    this.vat_rates,
    this.timezones,
    this.emoji,
    this.emojiU,
    this.wikiLink,
    this.demonyms,
  });

  Map toJson() => {
        "iso_3166_1_alpha2": iso_3166_1_alpha2,
        "iso_3166_1_alpha3": iso_3166_1_alpha3,
        "iso_3166_1_numeric": iso_3166_1_numeric,
        "name": name.toJson(),
        "alt_spellings": alt_spellings,
        "natives": natives?.map((key, value) => MapEntry(key.iso_639_2_alpha3, value)),
        "translations": translations?.map((key, value) => MapEntry(key.iso_639_2_alpha3, value)),
        "flag_symbol": flag_symbol,
        "emoji": emoji,
        "emojiU": emojiU,
        "cioc": cioc,
        "status": status,
        "capital": capital,
        "tld": tld,
        "unMember": unMember,
        "timezones": timezones,
        // "demonyms": demonyms,
        "currencies": List<String>.from(currencies!.map((e) => e.iso_4217_code)),
        "dialling": dialling?.toJson(),
        "geographical": geographical?.toJson(),
        "languages": List<String>.from(languages!.map((e) => e.iso_639_2_alpha3)),
        "population": population?.toJson(),
        "extra": extra?.toJson(),
        "wikiLink": wikiLink,
        "vat_rates": vat_rates,
        // "states": provinces?.map((e) => e.toJson()).toList(),
      };
}
