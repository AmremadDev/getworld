/// GetWorld is a dart package that helps to get countries, currencies and languages informations of the world.
library getworld;

import 'dart:convert';
import 'dart:developer' as developer;
import 'package:getworld/data/curriences.dart';
import 'package:getworld/data/data_compact.dart';
import 'package:getworld/data/languages.dart';

import 'scr/city.dart';
import 'scr/country.dart';
import 'scr/currency.dart';
import 'scr/dialling.dart';
import 'scr/enums.dart';
import 'scr/extra.dart';
import 'scr/geographical.dart';
import 'scr/language.dart';
import 'scr/latlng.dart';
import 'scr/name.dart';
import 'scr/population.dart';
import 'scr/province.dart';

export 'scr/country.dart';
export 'scr/city.dart';
export 'scr/currency.dart';
export 'scr/dialling.dart';
export 'scr/geographical.dart';
export 'scr/latlng.dart';
export 'scr/name.dart';
export 'scr/vat_rate.dart';
export 'scr/enums.dart';
export 'scr/language.dart';
export 'scr/extra.dart';
export 'scr/population.dart';
export 'scr/province.dart';
export 'extensions.dart';

///[Countries] list of Countries informations.
///
///[iso_3166_1_alpha2], [iso_3166_1_alpha3], [iso_3166_1_numeric], [name], [natives], [translations], [alt_spellings], [tld], [cioc], [status], [unMember],
///[currencies], [dialling], [capital], [geographical], [flag_symbol], [languages], [population], [extra], [provinces],[vat_rates], [cities]
final List<Country> Countries = [];

///[Countries] list of Countries Currencies
final List<Currency> Currencies = [];

///[Countries] list of Countries Languages
final List<Language> Languages = [];

class GetWorld {
  static bool _loaded = false;

  ///[initialize] You  need to call this method if you need to initialize lists.
  void initialize({
    bool countires = true,
    bool currencies = true,
    bool languages = true,
    bool name = true,
    bool alt_spellings = true,
    bool dialling = true,
    bool population = true,
    bool extra = true,
    bool geographical = true,
    bool states = true,
    bool cities = true,
  }) {
    assert(!(states == false && cities == true), "getting cities need states to be true");
    if (_loaded == false) {
      if (languages == true) _initial_Languages();
      if (currencies == true) _initial_Currency();
      if (countires == true) _initialCountries();

      developer.log("GetWorld initialized", name: "GetWorld");
      _loaded = true;
    } else {
      assert(_loaded != true, "GetWorld is aready intialized");
    }
  }

  void _initial_Languages() {
    // List<dynamic> data = jsonDecode(await File("packages/getworld/jsons/languages.json").readAsString());
    List<dynamic> data = jsonDecode(jsonLanguanges());

    // wirtting main languange informations
    Languages.addAll(data.map((e) => Language(
          iso_639_1_alpha2: e["iso_639_1__alpha2"],
          iso_639_2_alpha3: e["iso_639_2__alpha3"],
          family: e["family"],
          name: e["name"],
          native: e["nativeName"],
          wikiUrl: e["wikiUrl"],
        )));

    // writting translations
    for (var e in Languages) {
      e.name_in = Map<Language, List<String>?>.from(data
          .firstWhere((source) => source["iso_639_2__alpha3"] == e.iso_639_2_alpha3)["name_in"]
          .map((key, value) => MapEntry<Language, List<String>?>(
              Languages.firstWhere((element) => element.iso_639_2_alpha3 == key),
              List<String>.from(value))));
    }

    developer.log("Languages initialized with ${Languages.length} object(s)", name: "GetWorld");
  }

  void _initial_Currency() {
    List<dynamic> data = jsonDecode(jsonCurriences());
    //  List<dynamic> data = jsonDecode(await File("./jsons/currencies.json").readAsString());
    Currencies.addAll(List<Currency>.from(data.map((currency) => Currency(
          iso_4217_code: currency["iso_4217_code"],
          iso_4217_numeric: currency["iso_4217_numeric"].toString(),
          iso_4217_name: currency["iso_4217_name"],
          iso_4217_minor_unit: currency["iso_4217_minor_unit"],
          withdrawal_date: currency["withdrawal_date"],
          decimal_digits: currency["decimal_digits"],
          full_name: currency["full_name"],
          name_plural: currency["name_plural"],
          rounding: currency["rounding"],
          symbol: currency["symbol"],
          symbol_native: currency["symbol_native"],
        ))));
    developer.log("Currencies initialized with ${Currencies.length} object(s)", name: "GetWorld");
  }

  void _initialCountries(
      [bool alt_spellings = true,
      bool dialling = true,
      bool population = true,
      bool extra = true,
      bool geographical = true,
      bool states = true,
      bool cities = true]) {
    // List<dynamic> data = jsonDecode(await File("./jsons/data_compact.json").readAsString());
    List<dynamic> data = jsonDecode(jsonCountries());
    Countries.addAll(data
        .map((country) => Country(
            iso_3166_1_alpha2: country["iso_3166_1_alpha2"],
            iso_3166_1_alpha3: country["iso_3166_1_alpha3"],
            iso_3166_1_numeric: country["iso_3166_1_numeric"],
            cioc: country["cioc"],
            name: _Name(country),
            natives: _Natives(country),
            alt_spellings:
                (alt_spellings == false) ? null : List<String>.from(country["alt_spellings"]),
            translations: (Languages.isEmpty) ? null : _translations(country),
            capital: List<String>.from(country["capital"]),
            unMember: country["unMember"],
            status: country["status"],
            flag_symbol: country["flag_symbol"],
            tld: List<String>.from(country["tld"]),
            dialling: (dialling == false) ? null : _Dialling(country),
            population: (population == false) ? null : _Population(country),
            extra: (extra == false) ? null : _Extra(country),
            geographical: (geographical == false) ? null : _Geographical(country),
            languages: (Languages.isEmpty) ? null : _Languages(country),
            currencies: (Currencies.isEmpty) ? null : _Currencies(country),
            provinces: (states == false) ? null : _States_Cities(country, cities)))
        .toList());

    //Fill borders
    for (var country in Countries) {
      country.geographical!.borders = data
          .singleWhere((element) => element["iso_3166_1_alpha3"] == country.iso_3166_1_alpha3)[
              "geographical"]["borders"]
          .map<Country>((b) => Countries.singleWhere((c) => c.iso_3166_1_alpha3 == b))
          .toList();
    }

    developer.log("Countries initialized with ${Countries.length} object(s)", name: "GetWorld");
  }

  List<Currency>? _Currencies(country) {
    return country["currencies"]
        .map<Currency>((cur) => Currencies.singleWhere((element) => element.iso_4217_code == cur))
        .toList();
  }

  List<Language>? _Languages(country) {
    return country["languages"]
        .map<Language>((lan) => Languages.singleWhere((element) => element.iso_639_2_alpha3 == lan))
        .toList();
  }

  List<Province>? _States_Cities(country, [bool cities = true]) {
    return country["states"]
        ?.map<Province>((s) => Province(
              name: s["name"],
              state_code: s["state_code"],
              type: s["type"],
              latLng: LatLng(latitude: s["latitude"], longitude: s["longitude"]),
              cities: (cities == false)
                  ? null
                  : s["cities"]
                      ?.map<City>((c) => City(
                            name: c["name"],
                            latLng: LatLng(latitude: c["latitude"], longitude: c["longitude"]),
                          ))
                      .toList(),
            ))
        .toList();
  }

  Map<Language, Name>? _translations(dynamic country) {
    if (country == null || Languages.isEmpty) return null;
    return Map<Language, Name>.from(country["translations"].map<Language, Name>((key, value) =>
        MapEntry<Language, Name>(
            Languages.firstWhere((element) => element.iso_639_2_alpha3 == key.toUpperCase()),
            Name(official: value["official"], common: value["common"]))));
  }

  Map<Language, Name>? _Natives(dynamic country) {
    if (country == null || Languages.isEmpty) return null;
    return Map<Language, Name>.from(country["natives"].map<Language, Name>((key, value) =>
        MapEntry<Language, Name>(
            Languages.firstWhere((element) => element.iso_639_2_alpha3 == key.toUpperCase()),
            Name(official: value["official"], common: value["common"]))));
  }

  Dialling _Dialling(country) {
    return Dialling(
        calling_code: country["dialling"]["calling_code"],
        national_number_lengths: country["dialling"]["national_number_lengths"]);
  }

  Population _Population(country) {
    return Population(
        count: country["population"]["count"],
        worldPercentage: country["population"]["worldPercentage"]);
  }

  Name _Name(dynamic country) {
    return Name(
      official: country["name"]["official"],
      common: country["name"]["common"],
    );
  }

  Extra _Extra(dynamic country) {
    return Extra(
      geonameid: country["extra"]["geonameid"],
      edgar: country["extra"]["edgar"].toString(),
      itu: country["extra"]["itu"].toString(),
      marc: country["extra"]["marc"].toString(),
      wmo: country["extra"]["wmo"].toString(),
      ds: country["extra"]["ds"].toString(),
      fifa: country["extra"]["fifa"].toString(),
      fips: country["extra"]["fips"].toString(),
      gaul: country["extra"]["gaul"],
      ioc: country["extra"]["ioc"].toString(),
      cowc: country["extra"]["cowc"].toString(),
      cown: country["extra"]["cown"],
      fao: country["extra"]["fao"],
      imf: country["extra"]["imf"],
      ar5: country["extra"]["ar5"].toString(),
      address_format: country["extra"]["address_format"],
      eu_member: country["extra"]["eu_member"].toString(),
    );
  }

  Geographical _Geographical(dynamic country) {
    return Geographical(
      latLng_dms: LatLng(
          latitude: country["geographical"]["latLng_dmc"]["latitude"],
          longitude: country["geographical"]["latLng_dmc"]["longitude"]),
      latLng_dec: LatLng(
          latitude: country["geographical"]["latLng_dec"]["latitude"],
          longitude: country["geographical"]["latLng_dec"]["longitude"]),
      latLng_max: LatLng(
          latitude: country["geographical"]["latLng_min"]["latitude"],
          longitude: country["geographical"]["latLng_min"]["longitude"]),
      latLng_min: LatLng(
          latitude: country["geographical"]["latLng_max"]["latitude"],
          longitude: country["geographical"]["latLng_max"]["longitude"]),
      area: country["geographical"]["area"].toDouble(),
      region: country["geographical"]["region"],
      subregion: country["geographical"]["subregion"],
      region_code: country["geographical"]["region_code"],
      subregion_code: country["geographical"]["subregion_code"],
      postal_code: country["geographical"]["postal_code"],
      world_region: country["geographical"]["world_region"],
      landlocked: country["geographical"]["landlocked"],
      independent: country["geographical"]["independent"],
      continent: country["geographical"]["continent"]
          .map<Continents>(
              (element) => Continents.values.singleWhere((continent) => element == continent.value))
          .toList(),
    );
  }

  // void _writeJsonFile(String path, Object object) {
  //   final File file = File(path);
  //   file.writeAsStringSync(json.encode(object));
  //   print("${object.runtimeType} exported at $path");
  // }
  // void _printJson(Object object) {
  //   print(JsonEncoder.withIndent("  ").convert(object));
  // }

}
