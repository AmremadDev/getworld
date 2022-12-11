/// GetWorld is a dart package that helps to get countries, currencies and languages informations of the world.
library getworld;

import 'dart:convert';
import 'dart:developer' as developer;
import 'package:getworld/data/curriences.dart';
import 'package:getworld/data/countries.dart';
import 'package:getworld/data/languages.dart';

import 'scr/city.dart';
import 'scr/country.dart';
import 'scr/currency.dart';
import 'scr/demonym.dart';
import 'scr/dialling.dart';
import 'scr/enums.dart';
import 'scr/extra.dart';
import 'scr/geographical.dart';
import 'scr/language.dart';
import 'scr/latlng.dart';
import 'scr/name.dart';
import 'scr/population.dart';
import 'scr/province.dart';
import 'scr/timezone.dart';

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

class GetWorld {
  ///[Countries] list of Countries informations.
  ///
  ///[iso_3166_1_alpha2], [iso_3166_1_alpha3], [iso_3166_1_numeric], [name], [natives], [translations], [alt_spellings], [tld], [cioc], [status], [unMember],
  ///[Countries], [dialling], [capital], [geographical], [flag_symbol], [languages], [population], [extra], [provinces],[vat_rates], [cities]
  static final  List<Country> Countries = [];

  ///[Currencies] list of Countries Currencies
  static final List<Currency> Currencies = [];

  ///[Languages] list of Countries Languages
 static final List<Language> Languages = [];

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
    Languages.addAll(data.map((element) => Language(
          iso_639_1_alpha2: element["iso_639_1_alpha2"],
          iso_639_2_alpha3: element["iso_639_2_alpha3"],
          family: element["family"],
          name: element["name"],
          native: element["native"],
          wikiUrl: element["wikiUrl"],
        )));

    // writting translations
    for (var lng in Languages) {
      lng.name_in = Map<Language, List<String>?>.from(data
          .firstWhere((source) => source["iso_639_2_alpha3"] == lng.iso_639_2_alpha3)["name_in"]
          .map((key, value) => MapEntry<Language, List<String>?>(
              Languages.firstWhere((element) => element.iso_639_2_alpha3 == key),
              List<String>.from(value))));
    }

    developer.log("Languages initialized with ${Languages.length} object(s)", name: "GetWorld");
  }

  void _initial_Currency() {
    List<dynamic> data = jsonDecode(jsonCurriences());
    //  List<dynamic> data = jsonDecode(await File("./jsons/currencies.json").readAsString());
    Currencies.addAll(List<Currency>.from(data.map((element) => Currency(
          iso_4217_code: element["iso_4217_code"],
          iso_4217_numeric: element["iso_4217_numeric"].toString(),
          iso_4217_name: element["iso_4217_name"],
          iso_4217_minor_unit: element["iso_4217_minor_unit"],
          withdrawal_date: element["withdrawal_date"],
          decimal_digits: element["decimal_digits"],
          full_name: element["full_name"],
          name_plural: element["name_plural"],
          rounding: element["rounding"],
          symbol: element["symbol"],
          symbol_native: element["symbol_native"],
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
        .map((element) => Country(
            iso_3166_1_alpha2: element["iso_3166_1_alpha2"],
            iso_3166_1_alpha3: element["iso_3166_1_alpha3"],
            iso_3166_1_numeric: element["iso_3166_1_numeric"],
            cioc: element["cioc"],
            name: _Name(element),
            natives: _Natives(element),
            alt_spellings:
                (alt_spellings == false) ? null : List<String>.from(element["alt_spellings"]),
              // translations:  _translations(element),
            capital: List<String>.from(element["capital"]),
            unMember: element["unMember"],
            status: element["status"],
            flag_symbol: element["flag_symbol"],
            wikiLink: element["wikiLink"],
            emoji: element["emoji"],
            emojiU: element["emojiU"] ,
            demonyms: Demonym(
            male: element["demonyms"]?.map<Language, String>((k, v) => MapEntry<Language, String>(
                Languages.firstWhere((e) => e.iso_639_2_alpha3 == k.toUpperCase()),
                v["m"].toString())),
            famale: element["demonyms"]?.map<Language, String>((k, v) => MapEntry<Language, String>(
                Languages.firstWhere((e) => e.iso_639_2_alpha3 == k.toUpperCase()),
                v["f"].toString()))),
            timezones:List<TimeZone>.from(element["timezones"].map((t) => TimeZone(
              zoneName: t["zoneName"],
              gmtOffset: t["gmtOffset"],
              gmtOffsetName: t["gmtOffsetName"],
              tzName: t["tzName"],
              abbreviation: t["abbreviation"],
            ))) ,
            // vat_rates: ,
            tld: List<String>.from(element["tld"]),
            dialling: (dialling == false) ? null : _Dialling(element),
            population: (population == false) ? null : _Population(element),
            extra: (extra == false) ? null : _Extra(element),
            geographical: (geographical == false) ? null : _Geographical(element),
            languages: (Languages.isEmpty) ? null : _Languages(element),
            currencies: (Currencies.isEmpty) ? null : _Currencies(element),
            provinces: (states == false) ? null : _States_Cities(element, cities)))
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
    print(country["translations"].keys);
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
