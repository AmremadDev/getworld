/// GetWorld is a dart package that helps to get countries, currencies and languages informations of the world.
library getworld;

import 'dart:convert';
import './data/curriences.dart';
import './data/countries.dart';
import './data/languages.dart';
import './scr/vat_rate.dart';

import './scr/city.dart';
import './scr/country.dart';
import './scr/currency.dart';
import './scr/demonym.dart';
import './scr/dialling.dart';
import './scr/enums.dart';
import './scr/extra.dart';
import './scr/geographical.dart';
import './scr/language.dart';
import './scr/latlng.dart';
import './scr/name.dart';
import './scr/population.dart';
import './scr/province.dart';
import './scr/timezone.dart';

export './scr/country.dart';
export './scr/city.dart';
export './scr/currency.dart';
export './scr/dialling.dart';
export './scr/geographical.dart';
export './scr/latlng.dart';
export './scr/name.dart';
export './scr/vat_rate.dart';
export './scr/enums.dart';
export './scr/language.dart';
export './scr/extra.dart';
export './scr/population.dart';
export './scr/province.dart';
export './extensions.dart';

///[Countries] list of Countries informations.
///
///[iso_3166_1_alpha2], [iso_3166_1_alpha3], [iso_3166_1_numeric], [name], [natives], [translations], [alt_spellings], [tld], [cioc], [status], [unMember],
///[dialling], [capital], [geographical], [timezones], [demonyms], [languages], [population], [extra], [provinces],[vat_rates], [cities], [wikiLink], [emoji],[emoji]
final List<Country> Countries = [];

///[Currencies] list of Countries Currencies
///
///[iso_4217_code], [iso_4217_numeric], [iso_4217_name], [iso_4217_minor_unit], [withdrawal_date], [decimal_digits], [full_name], [name_plural], [rounding], [symbol], [symbol_native]
final List<Currency> Currencies = [];

///[Languages] list of Countries Languages
///
///[iso_639_1_alpha2], [iso_639_2_alpha3], [family], [name], [native], [wikiUrl]
final List<Language> Languages = [];

class GetWorld {
  static bool _loaded = false;

  ///[initialize] You  need to call this method if you need to initialize lists.
  void initialize(
      {countires = true,
      currencies = true,
      languages = true,
      alt_spellings = true,
      dialling = true,
      population = true,
      extra = true,
      geographical = true,
      states = true,
      cities = true,
      timezones = true,
      vat_rates = true,
      demonyms = true}) {
    assert(!(states == false && cities == true), "getting cities need states to be true");
    if (_loaded == false) {
      if (languages == true) {
        // List<dynamic> data = jsonDecode(await File("packages/getworld/jsons/languages.json").readAsString());
        List<dynamic> data = jsonDecode(jsonLanguanges());

        // wirtting main languange informations
        Languages.addAll(data.map((element) => Language(
              iso_639_1_alpha2: element["iso_639_1_alpha2"],
              iso_639_2_alpha3: element["iso_639_2_alpha3"],
              family: element["family"] ?? "",
              name: element["name"],
              native: element["native"],
              wikiUrl: element["wikiUrl"] ?? "",
            )));

        // writting translations
        for (var lng in Languages) {
          lng.name_in = Map<Language, List<String>?>.from(data
              .firstWhere((source) => source["iso_639_2_alpha3"] == lng.iso_639_2_alpha3)["name_in"]
              .map((key, value) => MapEntry<Language, List<String>?>(
                  Languages.firstWhere((element) => element.iso_639_2_alpha3 == key), List<String>.from(value))));
        }

        _printLog("Languages list loaded with ${Languages.length} object(s)");
      }
      if (currencies == true) {
        List<dynamic> data = jsonDecode(jsonCurriences());
        //  List<dynamic> data = jsonDecode(await File("./jsons/currencies.json").readAsString());
        Currencies.addAll(List<Currency>.from(data.map((element) => Currency(
              iso_4217_code: element["iso_4217_code"],
              iso_4217_numeric: element["iso_4217_numeric"],
              iso_4217_name: element["iso_4217_name"],
              iso_4217_minor_unit: element["iso_4217_minor_unit"],
              withdrawal_date: element["withdrawal_date"],
              decimal_digits: element["decimal_digits"] ?? 0,
              full_name: element["full_name"] ?? "",
              name_plural: element["name_plural"] ?? "",
              rounding: element["rounding"] ?? 0,
              symbol: element["symbol"] ?? "",
              symbol_native: element["symbol_native"] ?? "",
            ))));

        _printLog("Currencies list loaded with ${Currencies.length} object(s)");
      }
      if (countires == true) {
        // List<dynamic> data = jsonDecode(await File("./jsons/data_compact.json").readAsString());
        List<dynamic> data = jsonDecode(jsonCountries());

        Countries.addAll(data
            .map<Country>((element) => Country(
                  // main data
                  iso_3166_1_alpha2: element["iso_3166_1_alpha2"],
                  iso_3166_1_alpha3: element["iso_3166_1_alpha3"],
                  iso_3166_1_numeric: element["iso_3166_1_numeric"],
                  cioc: element["cioc"],
                  name: _Name(element["name"]),
                  capital: List<String>.from(element["capital"]),
                  unMember: element["unMember"],
                  status: element["status"],
                  wikiLink: element["wikiLink"],
                  emoji: element["emoji"],
                  emojiU: element["emojiU"],

                  natives: (languages == false) ? null : _Natives(element["natives"]),
                  alt_spellings: (alt_spellings == false) ? null : List<String>.from(element["alt_spellings"]),
                  translations: _Translations(element["translations"]),

                  demonyms: (demonyms == false) ? null : _Demonym(element["demonyms"]),
                  timezones: (timezones == false) ? null : _TimeZones(element["timezones"]),
                  vat_rates: (vat_rates == false) ? null : _VAT_rates(element["vat_rates"]),
                  dialling: (dialling == false) ? null : _Dialling(element["dialling"]),
                  population: (population == false) ? null : _Population(element["population"]),
                  extra: (extra == false) ? null : _Extra(element["extra"]),
                  geographical: (geographical == false) ? null : _Geographical(element["geographical"]),
                  languages: (languages == false) ? null : _Languages(element["languages"]),
                  currencies: (currencies == false) ? null : _Currencies(element["currencies"]),
                  provinces: (states == false) ? null : _States_Cities(element["states"], cities),
                )..tld.addAll(List<String>.from(element["tld"])))
            .toList());

        //Fill borders
        for (var country in Countries) {
          country.geographical?.borders.addAll(data
              .singleWhere((element) => element["iso_3166_1_alpha3"] == country.iso_3166_1_alpha3)["geographical"]
                  ["borders"]
              .map<Country>((b) => Countries.singleWhere((c) => c.iso_3166_1_alpha3 == b))
              .toList());
        }
        _printLog("Countries list loaded with ${Countries.length} object(s)");
      }

      _printLog("GetWorld initialized");
      _loaded = true;
    } else {
      assert(_loaded != true, "GetWorld is aready intialized");
    }
  }

  VATRate? _VAT_rates(Map<String, dynamic>? country) {
    if (country == null) return null;
    return VATRate(
      standard: country["standard"],
      reduced: country["reduced"] == null ? null : List<double>.from(country["reduced"]),
      super_reduced: country["super_reduced"],
      parking: country["parking"],
    );
  }

  List<Currency>? _Currencies(List<dynamic> country) {
    if (Currencies.isEmpty || country.isEmpty) return null;
    return country.map<Currency>((cur) => Currencies.singleWhere((element) => element.iso_4217_code == cur)).toList();
  }

  List<Language>? _Languages(List<dynamic> country) {
    if (Languages.isEmpty) return null;
    return country.map<Language>((lan) => Languages.singleWhere((element) => element.iso_639_2_alpha3 == lan)).toList();
  }

  List<TimeZone>? _TimeZones(List<dynamic>? country) {
    if (country == null) return null;
    return country
        .map<TimeZone>((t) => TimeZone(
              zoneName: t["zoneName"],
              gmtOffset: t["gmtOffset"],
              gmtOffsetName: t["gmtOffsetName"],
              tzName: t["tzName"],
              abbreviation: t["abbreviation"],
            ))
        .toList();
  }

  Demonym? _Demonym(Map<String, dynamic>? country) {
    if (country == null) return null;
    return Demonym(
      male: country["male"]?.map<Language, String>((k, v) =>
          MapEntry<Language, String>(Languages.firstWhere((e) => e.iso_639_2_alpha3 == k.toUpperCase()), v.toString())),
      female: country["female"]?.map<Language, String>((k, v) =>
          MapEntry<Language, String>(Languages.firstWhere((e) => e.iso_639_2_alpha3 == k.toUpperCase()), v.toString())),
    );
  }

  List<Province>? _States_Cities(List<dynamic>? country, [bool cities = true]) {
    if (country == null) return null;
    return country
        .map<Province>((s) => Province(
              name: s["name"],
              province_code: s["state_code"],
              type: s["type"],
              latLng: LatLng(latitude: s["latLng"]["latitude"] ?? "", longitude: s["latLng"]["longitude"] ?? ""),
              cities: (cities == false)
                  ? null
                  : s["cities"]
                      ?.map<City>((c) => City(
                            name: c["name"],
                            latLng: LatLng(latitude: c["latLng"]["latitude"], longitude: c["latLng"]["longitude"]),
                          ))
                      .toList(),
            ))
        .toList();
  }

  Map<Language, Name>? _Translations(Map<String, dynamic> country) {
    if (Languages.isEmpty) return null;

    //   country.keys.forEach((element) {
    //     if ( Languages.where((lan) => lan.iso_639_2_alpha3 == element.toUpperCase()).isEmpty) {
    //         print(element);

    //     }

    //   });
    // return null;
    return Map<Language, Name>.from(country.map<Language, Name>((key, value) => MapEntry<Language, Name>(
        Languages.firstWhere((element) => element.iso_639_2_alpha3 == key.toUpperCase()),
        Name(official: value["official"], common: value["common"]))));
  }

  Map<Language, Name>? _Natives(Map<String, dynamic> country) {
    if (Languages.isEmpty) return null;
    return Map<Language, Name>.from(country.map<Language, Name>((key, value) => MapEntry<Language, Name>(
        Languages.firstWhere((element) => element.iso_639_2_alpha3 == key.toUpperCase()),
        Name(official: value["official"], common: value["common"]))));
  }

  Dialling? _Dialling(Map<String, dynamic> country, [bool dialling = true]) {
    if (dialling == false) return null;
    return Dialling(calling_code: country["calling_code"], national_number_lengths: country["national_number_lengths"]);
  }

  Population? _Population(Map<String, dynamic> country, [bool population = true]) {
    if (population == false) return null;
    return Population(count: country["count"], worldPercentage: country["worldPercentage"]);
  }

  Name _Name(Map<String, dynamic> country) {
    return Name(
      official: country["official"],
      common: country["common"],
    );
  }

  Extra? _Extra(Map<String, dynamic> country, [bool extra = true]) {
    if (extra == false) return null;
    return Extra(
      geonameid: country["geonameid"],
      edgar: country["edgar"].toString(),
      itu: country["itu"].toString(),
      marc: country["marc"].toString(),
      wmo: country["wmo"].toString(),
      ds: country["ds"].toString(),
      fifa: country["fifa"].toString(),
      fips: country["fips"].toString(),
      gaul: country["gaul"],
      ioc: country["ioc"].toString(),
      cowc: country["cowc"].toString(),
      cown: country["cown"],
      fao: country["fao"],
      imf: country["imf"],
      ar5: country["ar5"].toString(),
      address_format: country["address_format"],
      eu_member: country["eu_member"].toString(),
    );
  }

  Geographical? _Geographical(dynamic country, [bool geographical = true]) {
    if (geographical == false) return null;
    return Geographical(
      latLng_dms: LatLng(
          latitude: country["latLng_dmc"]["latitude"] ?? "", longitude: country["latLng_dmc"]["longitude"] ?? ""),
      latLng_dec: LatLng(
          latitude: country["latLng_dec"]["latitude"] ?? "", longitude: country["latLng_dec"]["longitude"] ?? ""),
      latLng_max: LatLng(
          latitude: country["latLng_min"]["latitude"] ?? "", longitude: country["latLng_min"]["longitude"] ?? ""),
      latLng_min: LatLng(
          latitude: country["latLng_max"]["latitude"] ?? "", longitude: country["latLng_max"]["longitude"] ?? ""),
      area: country["area"].toDouble(),
      region: country["region"],
      subregion: country["subregion"],
      region_code: country["region_code"],
      subregion_code: country["subregion_code"],
      postal_code: country["postal_code"],
      world_region: country["world_region"],
      landlocked: country["landlocked"],
      independent: country["independent"] ?? "",
    )..continent.addAll(country["continent"]
        .map<Continents>((element) => Continents.values.singleWhere((continent) => element == continent.value))
        .toList());
  }

  void _printLog(String message) {
    print('\x1B[2m\x1B[33m[GetWorld]:\x1B[0m\x1B[33m $message\x1B[0m');
  }
}



  // void _writeJsonFile(String path, Object object) {
  //   final File file = File(path);
  //   file.writeAsStringSync(json.encode(object));
  //   print("${object.runtimeType} exported at $path");
  // }
  // void _printJson(Object object) {
  //   print(JsonEncoder.withIndent("  ").convert(object));
  // }