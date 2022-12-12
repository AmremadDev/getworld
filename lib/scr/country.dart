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
  final String iso_3166_1_alpha2;

  ///ISO 3166-1 alpha-3 code.
  final String iso_3166_1_alpha3;

  ///ISO 3166-1 numeric code.
  final String iso_3166_1_numeric;

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
  final List<String> tld = [];

  ///International Olympic Committee code.
  String cioc;

  ///
  final String status;

  ///United Nations member `true` and `false`
  final bool unMember;

  ///List of official currencies.
  final List<Currency>? currencies;

  ///Dialing code and national number lengths.
  final Dialling? dialling;

  ///Capital city
  final List<String>? capital;

  /// Geographical informations.
  final Geographical? geographical;

  ///List of official languages.
  final List<Language>? languages;

  /// Population informations.
  final Population? population;

  ///Extra informations.
  final Extra? extra;

  ///States/Provinces information.
  final List<Province>? provinces;

  ///8-bit Unicode Transformation Format
  final String emoji;

  ///Formal_Unicode_Notation
  final String emojiU;

  ///VAT rates.
  final VATRate? vat_rates;

  ///Time zones
  List<TimeZone>? timezones = [];

  ///A name used to denote the inhabitants of a place
  final Demonym? demonyms;

  ///Relative link to country wikipedia page
  final String wikiLink;

  Country({
    required this.iso_3166_1_alpha2,
    required this.iso_3166_1_alpha3,
    required this.iso_3166_1_numeric,
    required this.name,
    this.natives,
    this.translations,
    this.alt_spellings,
    required this.cioc,
    required this.status,
    this.capital,
    // required this.tld,
    this.unMember = false,
    this.currencies,
    this.dialling,
    this.geographical,
    this.languages,
    this.population,
    this.extra,
    this.provinces,
    this.vat_rates,
    this.timezones,
    required this.emoji,
    required this.emojiU,
    required this.wikiLink,
    this.demonyms,
  });

  Map toJson() {
    return {
      "iso_3166_1_alpha2": iso_3166_1_alpha2,
      "iso_3166_1_alpha3": iso_3166_1_alpha3,
      "iso_3166_1_numeric": iso_3166_1_numeric,
      "name": name.toJson(),
      "alt_spellings": alt_spellings,
      "natives": natives?.map((key, value) => MapEntry(key.iso_639_2_alpha3, value)),
      "translations": translations?.map((key, value) => MapEntry(key.iso_639_2_alpha3, value)),
      "emoji": emoji,
      "emojiU": emojiU,
      "cioc": cioc,
      "status": status,
      "capital": capital,
      "tld": tld,
      "unMember": unMember,
      "timezones": timezones,
      "demonyms": demonyms,
      "currencies":
          currencies == null ? null : List<String>.from(currencies!.map((e) => e.iso_4217_code)),
      "dialling": dialling?.toJson(),
      "geographical": geographical?.toJson(),
      "languages": List<String>.from(languages!.map((e) => e.iso_639_2_alpha3)),
      "population": population?.toJson(),
      "extra": extra?.toJson(),
      "wikiLink": wikiLink,
      "vat_rates": vat_rates,
      "states": provinces?.map((e) => e.toJson()).toList(),
    };
  }
}
