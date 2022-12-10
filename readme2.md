<p align="center">
  <img src="https://github.com/AmremadDev/getworld/blob/master/logo/logo.png?raw=true" alt="Sublime's custom image"/>
</p>

# getworld
Simple package for getting countries, currenices and languages information.

## Table of Contents
- [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Country Object](#country-object)
  - [Language Object](#language-object)
  - [Currency Object](#currency-object)
  - [Name Object](#name-object)
  - [Dialing Object](#dialing-object)
  - [Province Object](#province-object)
  - [City Object](#city-object)
  - [Geographical Object](#geographical-object)
  - [Extra Object](#extra-object)
  - [Population Object](#population-object)
  - [Json File Example: Egypt](#json-file-example-egypt)


### Installation
Run this command:
With Dart:
```shell
 $ dart pub add getworld
```
With Flutter:
```shell
 $ flutter pub add getworld
```
This will add a line like this to your package's pubspec.yaml (and run an implicit  `dart pub get`):
```yaml
dependencies:
  getworld: ^1.0.1
```
Alternatively, your editor might support  `dart pub get`  or  `flutter pub get`. Check the docs for your editor to learn more.

Now in your Dart code, you can use:
```dart
import 'package:getworld/getworld.dart';
```

### Country Object
The countries data based on ISO_3166 countries codes.
| Object | Type | Description |
|--|--|--|
|`Country.name`|`Name`|detrmine the offical and common name of country.|
|`Country.natives`|`Map<Language, Name>`|Set of all available native names.|
|`Country.translations`|`Map<Language, Name>`|Set of all available translation names.|
|`Country.demonym`|`String`|Set of all available translation names.|
|`Country.demonym`|`String`|Name of residents.|
|`Country.capital`|`String`|Capital city name.|
|`Country.iso_3166_1_alpha2`|`String`|Code ISO 3166-1 alpha-2.|
|`Country.iso_3166_1_alpha3`|`String`|Code ISO 3166-1 alpha-3.|
|`Country.iso_3166_1_numeric`|`String`|Code ISO 3166-1 numeric.|
|`Country.languages`|`Language`|List of official languages.|
|`Country.currencies`|`Currency`|List of official currencies.|
|`Country.tld`|`List<String>`|Country code top-level domains.|
|`Country.alt_spellings`|`List<String>`|Alternative spellings of country name.|
|`Country.provinces`|`List<Province>`|List of States/Provinces and it's cities.|
|`Country.geographical`|`Geographical`|Describe all Geographical information.|
|`Country.dialling`|`Dialling`|Detrmine dialing information.|
|`Country.extra`|`Extra`|Retrive some extra data of country.|
|`Country.population`|`Population`|Retrive pupulation count and country population of world population percentage.|
|`Country.wikiLink`|`String`|Relative link to country wikipedia page.|
<!-- - `Country.name`                            -> ```Name``` object, detrmine the offical and common name of country.
- ```Country.natives```                         -> ```Map<Language, Name>``` object, set of all available native names.
- ```Country.translations```                    -> ```Map<Language, Name>``` object, set of all available translation names.
- ```Country.demonym```                         -> ```String``` object, name of residents
- ```Country.capital```                         -> ```String``` object, capital city
- ```Country.iso_3166_1_alpha2```               -> ```String``` object, code ISO 3166-1 alpha-2
- ```Country.iso_3166_1_alpha3```               -> ```String``` object, code ISO  3166-1 alpha-3
- ```Country.iso_3166_1_numeric```              -> ```String``` object, code ISO 3166-1 numeric
- ```Country.languages```                       -> ```Language``` object, list of official languages.
- ```Country.currencies```                      -> ```Language``` object, list of official currencies.
- ```Country.tld```                             -> ```List<String>``` object, country code top-level domain
- ```Country.alt_spellings```                   -> ```List<String>``` object, alternative spellings of country name.
- ```Country.provinces```                       -> ```List<Province>``` object, alternative spellings of country name. 
- ```Country.geographical```                    -> ```Geographical``` object, describe all Geographical information.
- ```Country.dialling```                        -> ```Dialling``` object, detrmine dialing information.
- ```Country.extra```                           -> ```Extra```  object, retrive extra data of country.
- ```Country.population```                      -> ```Extra```  object, retrive extra data of country.
- ```Country.wikiLink```                        -> ```String``` object, relative link to country wikipedia page. -->

### Language Object
The Languages data based on ISO 639-3 languages codes.
| Object | Type | Description |
|--|--|--|
|`Language.iso_639_1_alpha2`|`String`|Code iso_639_1 alpha-2.|
|`Language.iso_639_2_alpha3`|`String`|Code iso_639_2 alpha-3.|
|`Language.family`|`String`|Language family.|
|`Language.native`|`String`|Set of all available translation names.|
|`Language.wikiUrl`|`String`|Relative link to language wikipedia page.|
|`Language.name_in`|`Map<Language, List<String>>`|Set of all available translation names.|

<!-- - ```Language.iso_639_1_alpha2```               -> ```String``` object, code iso_639_1 alpha-2.
- ```Language.iso_639_2_alpha3```               -> ```String``` object, code iso_639_2 alpha-3.
- ```Language.family```                         -> ```String``` object, language family.
- ```Language.native```                         -> ```String``` object, native language name.
- ```Language.wikiUrl```                        -> ```String``` object, relative link to language wikipedia page.
- ```Language.name_in```                        -> ```Map<Language, List<String>>``` object, set of all available translation names. -->

### Currency Object
The Currencies data based on ISO 4217 languages codes.
| Object | Type | Description |
|--|--|--|
|`Currency.iso_4217_code`|`String`|code iso_4217 alpha3.|
|`Currency.iso_4217_numeric`|`String`|code iso_4217_numeric.|
|`Currency.iso_4217_name`|`String`|code iso_4217_numeric.|
|`Currency.iso_4217_minor_unit`|`String`|The smallest unit of a currency, depending on the number of decimals.|
|`Currency.full_name`|`String`|English full name.|
|`Currency.symbol`|`String`|Currency symbol.|
|`Currency.symbol_native`|`String`|Currency native symbol.|
|`Currency.decimal_digits`|`String`|decimal_digits.|
|`Currency.rounding`|`String`|code iso_4217_numeric.|
|`Currency.name_plural`|`String`|Currency plural name.|
|`Currency.withdrawal_date`|`String`|Date of withdrawal.|

<!-- - ```Currency.iso_4217_code```                  -> ```String``` object, code iso_4217 alpha3.
- ```Currency.iso_4217_numeric```               -> ```String``` object, code iso_4217_numeric.
- ```Currency.iso_4217_name```                  -> ```String``` object,  iso_4217_name.
- ```Currency.iso_4217_minor_unit```            -> ```String``` object,  iso_4217_minor_unit.
- ```Currency.full_name```                      -> ```String``` object,  full_name.
- ```Currency.symbol```                         -> ```String``` object,  iso_639_1.
- ```Currency.symbol_native```                  -> ```String``` object,  iso_639_1.
- ```Currency.decimal_digits```                 -> ```String``` object,  iso_639_1.
- ```Currency.rounding```                       -> ```String``` object,  iso_639_1.
- ```Currency.name_plural```                    -> ```String``` object,  iso_639_1.
- ```Currency.withdrawal_date```                -> ```String``` object,  iso_639_1. -->


### Name Object
| Object | Type | Description |
|--|--|--|
|`Name.common`|`String`|common name in english.|
|`Name.official`|`String`|official name in english.|
<!-- - ```Name.common```                             -> ```String``` object, common name in english.
- ```Name.official```                           -> ```String``` object, official name in english. -->

### Dialing Object
| Object | Type | Description |
|--|--|--|
|`Dialing.calling_code`|`String`|calling code.|
|`Dialing.national_number_lengths`|`int`|national number lengths.|
<!-- 
- ```Dialing.calling_code```                        -> ```String``` object,  calling code.
- ```Dialing.national_number_lengths```             -> ```int``` object,  national number lengths. -->

### LatLng Object
| Object | Type | Description |
|--|--|--|
|`LatLng.latitude`|`String`|Described latitude coordinate point.|
|`LatLng.longitude`|`String`|Described longitude coordinate point.|

### Province Object
| Object | Type | Description |
|--|--|--|
|`Province.id`|`int`|.|
|`Province.name`|`String`|Described longitude coordinate point.|
|`Province.state_code`|`String`|State/Province code.|
|`Province.latLng`|`LatLng`|coordinate point in **decimal** form.|
|`Province.type`|`String`|State/Province type.|
|`Province.cities`|`List<City>`|List of cities in State/Province.|

<!-- - ```Province.id```                             -> ```String``` object, Code iso_639_1.
- ```Province.name```                           -> ```String``` object, Code iso_639_1.
- ```Province.state_code```                     -> ```String``` object, Code iso_639_1.
- ```Province.latLng```                         -> ```String``` object, Code iso_639_1.
- ```Province.type```                           -> ```String``` object, Code iso_639_1.
- ```Currency.cities```                         -> ```String``` object, Code iso_639_1. -->

### City Object
| Object | Type | Description |
|--|--|--|
|`City.id`|`int`|.|
|`City.name`|`String`|name of city.|
|`City.latLng`|`LatLng`|coordinate point in **decimal** form.|

<!-- - ```City.id```                                 -> ```String``` object, Code iso_639_1.
- ```City.name```                               -> ```String``` object, Code iso_639_1.
- ```City.latLng```                             -> ```String``` object, Code iso_639_1. -->

### Geographical Object
| Object | Type | Description |
|--|--|--|
|`Geographical.Continents`|`Continents`|continents that country lies in.|
|`Geographical.postal_code`|`String`|area postal code.|
|`Geographical.latLng_dms`|`LatLng`|coordinate point in **degrees minutes seconds** form.|
|`Geographical.latLng_dec`|`LatLng`|coordinate point in **decimal** form.|
|`Geographical.latLng_min`|`LatLng`|minmum coordinate point in **decimal** form.|
|`Geographical.latLng_max`|`LatLng`|maximum coordinate point in **decimal** form.|
|`Geographical.area`|`double`|land area in km².|
|`Geographical.region`|`String`|geographical region.|
|`Geographical.subregion`|`String`|geographical sub-region.|
|`Geographical.world_region`|`int`|geographical world region.|
|`Geographical.region_code`|`String`|geographical sub-region numeric code .|
|`Geographical.subregion_code`|`LatLng`|geographical sub-region numeric code.|
|`Geographical.landlocked`|`bool`|landlocked status.|
|`Geographical.borders`|`Country`|land borders.|
|`Geographical.independent`|`String`|independent status.|


<!-- - ```Geographical.continent```      -> ```Continents`` enumeration object, continents that country lies in.
- ```Geographical.postal_code```    -> ```LatLng``` object, area postal code
- ```Geographical.latLng_dms```     -> ```LatLng``` object, coordinate point in **degrees minutes seconds** form.
- ```Geographical.latLng_dec```     -> ```LatLng``` object, coordinate point in **decimal** form.
- ```Geographical.latLng_min```     -> ```LatLng``` object, minmum coordinate point in **decimal** form.
- ```Geographical.latLng_max```     -> ```LatLng``` object, maximum coordinate point in **decimal** form.
- ```Geographical.area```           -> ```double``` object, land area in km²
- ```Geographical.region```         -> ```String``` object, geographical region
- ```Geographical.subregion```      -> ```String``` object, geographical sub-region
- ```Geographical.world_region```   -> ```DoubStringle``` object, geographical world region
- ```Geographical.region_code```    -> ```String``` object, geographical region numeric code
- ```Geographical.subregion_code``` -> ```String``` object, geographical sub-region numeric code 
- ```Geographical.landlocked```     -> ```bool``` object, landlocked status
- ```CGeographical.borders```       -> ```Country``` object, land borders
- ```Geographical.independent```    -> ```String``` object, independent status. -->
  

### Extra Object
|`Extra.geonameid`|``|Geoname ID.|
|`Extra.edgar`|``|Electronic Data Gathering, Analysis, and Retrieval system.|
|`Extra.itu`|``|Codes assigned by the International Telecommunications Union.|
|`Extra.marc`|``|MAchine-Readable Cataloging codes from the Library of Congress.|
|`Extra.wmo`|``|Country abbreviations by the World Meteorological Organization.|
|`Extra.ds`|``|Distinguishing signs of vehicles in international traffic.|
|`Extra.fifa`|``|Codes assigned by the Fédération Internationale de Football Association.|
|`Extra.fips`|``|Codes from the U.S. Federal Information Processing Standard.|
|`Extra.gaul`|``|Global Administrative Unit Layers from the Food and Agriculture Organization.|
|`Extra.ioc`|``|Codes assigned by the International Olympics Committee.|
|`Extra.cowc`|``|Correlates of War character.|
|`Extra.cown`|``|Correlates of War numeric.|
|`Extra.fao`|``|Food and Agriculture Organization.|
|`Extra.imf`|``|International Monetary Fund.|
|`Extra.ar5`|``|Fifth Assessment Report (AR5).|
|`Extra.address_format`|``|Address format.|
|`Extra.eu_member`|``|European Union Member.|
|`Extra.vat_rates`|``|Value-Added Tax.|
<!-- 
- ```Extra.geonameid``` - Geoname ID
- ```Extra.edgar``` - Electronic Data Gathering, Analysis, and Retrieval system
- ```Extra.itu``` - Codes assigned by the International Telecommunications Union
- ```Extra.marc``` - MAchine-Readable Cataloging codes from the Library of Congress
- ```Extra.wmo``` - Country abbreviations by the World Meteorological Organization
- ```Extra.ds``` - Distinguishing signs of vehicles in international traffic
- ```Extra.fifa``` - Codes assigned by the Fédération Internationale de Football Association
- ```Extra.fips``` - Codes from the U.S. Federal Information Processing Standard
- ```Extra.gaul``` - Global Administrative Unit Layers from the Food and Agriculture Organization
- ```Extra.ioc``` - Codes assigned by the International Olympics Committee
- ```Extra.cowc``` - Correlates of War character
- ```Extra.cown``` - Correlates of War numeric
- ```Extra.fao``` - Food and Agriculture Organization 
- ```Extra.imf``` - International Monetary Fund 
- ```Extra.ar5``` - Fifth Assessment Report (AR5) 
- ```Extra.address_format``` - Address forma
- ```Extra.eu_member``` - European Union Member
- ```Extra.vat_rates``` - Value-Added Tax. -->
- 

### Population Object
| Object | Type | Description |
|--|--|--|
|`Population.count`|`int`|population number.|
|`Population.worldPercentage`|`double`|country population of world population percentage.|
<!-- 
- ```Population.count```                    -> ```int``` object, population number
- ```Population.worldPercentage```          -> ```double``` object ,country population of world population percentage -->
  





### Json File Example: Egypt
```json
{
  "iso_3166_1_alpha2": "EG",
  "iso_3166_1_alpha3": "EGY",
  "iso_3166_1_numeric": "818",
  "name": {
    "official": "Arab Republic of Egypt",
    "common": "Egypt"
  },
  "alt_spellings": [
    "EG",
    "Arab Republic of Egypt"
  ],
  "natives": {
    "ARA": {
      "official": "جمهورية مصر العربية",
      "common": "مصر"
    }
  },
  "translations": {
    "CES": {
      "official": "Egyptská arabská republika",
      "common": "Egypt"
    },
    "CYM": {
      "official": "Gweriniaeth Arabaidd yr Aifft",
      "common": "Yr Aifft"
    },
    "DEU": {
      "official": "Arabische Republik Ägypten",
      "common": "Ägypten"
    },
    "EST": {
      "official": "Egiptuse Araabia Vabariik",
      "common": "Egiptus"
    },
    "FIN": {
      "official": "Egyptin arabitasavalta",
      "common": "Egypti"
    },
    "FRA": {
      "official": "République arabe d'Égypte",
      "common": "Égypte"
    },
    "HRV": {
      "official": "Arapska Republika Egipat",
      "common": "Egipat"
    },
    "HUN": {
      "official": "Egyiptomi Arab Köztársaság",
      "common": "Egyiptom"
    },
    "ITA": {
      "official": "Repubblica araba d'Egitto",
      "common": "Egitto"
    },
    "JPN": {
      "official": "エジプト·アラブ共和国",
      "common": "エジプト"
    },
    "KOR": {
      "official": "이집트 아랍 공화국",
      "common": "이집트"
    },
    "NLD": {
      "official": "Arabische Republiek Egypte",
      "common": "Egypte"
    },
    "FAS": {
      "official": "جمهوری عربی مصر",
      "common": "مصر"
    },
    "POL": {
      "official": "Arabska Republika Egiptu",
      "common": "Egipt"
    },
    "POR": {
      "official": "República Árabe do Egipto",
      "common": "Egito"
    },
    "RUS": {
      "official": "Арабская Республика Египет",
      "common": "Египет"
    },
    "SLK": {
      "official": "Egyptská arabská republika",
      "common": "Egypt"
    },
    "SPA": {
      "official": "República Árabe de Egipto",
      "common": "Egipto"
    },
    "SWE": {
      "official": "Arabrepubliken Egypten",
      "common": "Egypten"
    },
    "URD": {
      "official": "مصری عرب جمہوریہ",
      "common": "مصر"
    },
    "ZHO": {
      "official": "阿拉伯埃及共和国",
      "common": "埃及"
    }
  },
  "cioc": "EGY",
  "status": "officially-assigned",
  "capital": [
    "Cairo"
  ],
  "tld": [
    ".eg",
    ".مصر"
  ],
  "unMember": true,
  "currencies": [
    "EGP"
  ],
  "dialling": {
    "calling_code": "+20",
    "national_number_lengths": 9
  },
  "geographical": {
    "postal_code": true,
    "area": 1002450.0,
    "region": "Africa",
    "subregion": "Northern Africa",
    "world_region": "EMEA",
    "region_code": "002",
    "subregion_code": "015",
    "landlocked": false,
    "borders": [
      "ISR",
      "LBY",
      "PSE",
      "SDN"
    ],
    "independent": "Yes",
    "latLng_dmc": {
      "latitude": "27 00 N",
      "longitude": "30 00 E"
    },
    "latLng_dec": {
      "latitude": "26.756103515625",
      "longitude": "29.86229705810547"
    },
    "latLng_min": {
      "latitude": "31.916667",
      "longitude": "36.333333"
    },
    "latLng_max": {
      "latitude": "20.383333",
      "longitude": "24.7"
    },
    "continent": [
      "AF"
    ]
  },
  "flag_symbol": "🇪🇬",
  "languages": [
    "ARA"
  ],
  "population": {
    "count": 91774300,
    "worldPercentage": 1.23
  },
  "extra": {
    "geonameid": 357994,
    "edgar": "H2",
    "itu": "EGY",
    "marc": "ua",
    "wmo": "EG",
    "ds": "ET",
    "fifa": "EGY",
    "fips": "EG",
    "gaul": 40765,
    "ioc": "EGY",
    "cowc": "EGY",
    "cown": 651,
    "fao": 59,
    "imf": 469,
    "ar5": "MAF",
    "address_format": "{{recipient}}\n{{street}}\n{{postalcode}} {{city}}\n{{country}}",
    "eu_member": "null",
    "states": null
  },
  "states": [
    {
      "id": 3235,
      "name": "Alexandria",
      "state_code": "ALX",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 149594,
          "name": "Abu Qir",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149595,
          "name": "Agami",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31787,
          "name": "Alexandria",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149596,
          "name": "Ar-Raml",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149597,
          "name": "Borg El Arab",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149598,
          "name": "Montaza",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149599,
          "name": "New Borg El Arab",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149600,
          "name": "Sidi Bishr",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3225,
      "name": "Aswan",
      "state_code": "ASN",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31756,
          "name": "Abu Simbel",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31791,
          "name": "Aswan",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31819,
          "name": "Idfū",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31829,
          "name": "Kawm Umbū",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3236,
      "name": "Asyut",
      "state_code": "AST",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31755,
          "name": "Abnūb",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31758,
          "name": "Abū Tīj",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31764,
          "name": "Al Badārī",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31781,
          "name": "Al Qūşīyah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31792,
          "name": "Asyūţ",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31807,
          "name": "Dayrūţ",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31836,
          "name": "Manfalūţ",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3241,
      "name": "Beheira",
      "state_code": "BH",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31759,
          "name": "Abū al Maţāmīr",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31760,
          "name": "Ad Dilinjāt",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31804,
          "name": "Damanhūr",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31879,
          "name": "Ḩawsh ‘Īsá",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31820,
          "name": "Idkū",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31826,
          "name": "Kafr ad Dawwār",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31830,
          "name": "Kawm Ḩamādah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31857,
          "name": "Rosetta",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3230,
      "name": "Beni Suef",
      "state_code": "BNS",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31768,
          "name": "Al Fashn",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31798,
          "name": "Banī Suwayf",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31801,
          "name": "Būsh",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31869,
          "name": "Sumusţā as Sulţānī",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3223,
      "name": "Cairo",
      "state_code": "C",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 149582,
          "name": "Badr",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149583,
          "name": "Bulaq",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31802,
          "name": "Cairo",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149584,
          "name": "El Mataria",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149585,
          "name": "Fustat",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149586,
          "name": "Hadayek El Kobba",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149587,
          "name": "Heliopolis",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149588,
          "name": "Helwan",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149589,
          "name": "Maadi",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149590,
          "name": "Musturud",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149591,
          "name": "New Administrative Capital of Egypt",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149592,
          "name": "Shubra",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149593,
          "name": "Tura",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3245,
      "name": "Dakahlia",
      "state_code": "DK",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31880,
          "name": "‘Izbat al Burj",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31762,
          "name": "Ajā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31770,
          "name": "Al Jammālīyah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31775,
          "name": "Al Manşūrah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31774,
          "name": "Al Manzalah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31776,
          "name": "Al Maţarīyah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31800,
          "name": "Bilqās",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31808,
          "name": "Dikirnis",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31844,
          "name": "Minyat an Naşr",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31865,
          "name": "Shirbīn",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31876,
          "name": "Ţalkhā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3224,
      "name": "Damietta",
      "state_code": "DT",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31794,
          "name": "Az Zarqā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31805,
          "name": "Damietta",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31815,
          "name": "Fāraskūr",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3238,
      "name": "Faiyum",
      "state_code": "FYM",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31769,
          "name": "Al Fayyūm",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31782,
          "name": "Al Wāsiţah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31818,
          "name": "Ibshawāy",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31823,
          "name": "Iţsā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31877,
          "name": "Ţāmiyah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3234,
      "name": "Gharbia",
      "state_code": "GH",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31777,
          "name": "Al Maḩallah al Kubrá",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31799,
          "name": "Basyūn",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31828,
          "name": "Kafr az Zayyāt",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31855,
          "name": "Quţūr",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31860,
          "name": "Samannūd",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31872,
          "name": "Tanda",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31874,
          "name": "Zefta",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3239,
      "name": "Giza",
      "state_code": "GZ",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31786,
          "name": "Al ‘Ayyāţ",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31766,
          "name": "Al Bawīţī",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31783,
          "name": "Al Ḩawāmidīyah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31795,
          "name": "Aş Şaff",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31793,
          "name": "Awsīm",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31816,
          "name": "Giza",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31833,
          "name": "Madīnat Sittah Uktūbar",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3244,
      "name": "Ismailia",
      "state_code": "IS",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31821,
          "name": "Ismailia",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3222,
      "name": "Kafr el-Sheikh",
      "state_code": "KFS",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31784,
          "name": "Al Ḩāmūl",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31810,
          "name": "Disūq",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31814,
          "name": "Fuwwah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31827,
          "name": "Kafr ash Shaykh",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31837,
          "name": "Markaz Disūq",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31845,
          "name": "Munshāt ‘Alī Āghā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31870,
          "name": "Sīdī Sālim",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3242,
      "name": "Luxor",
      "state_code": "LX",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31832,
          "name": "Luxor",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31840,
          "name": "Markaz al Uqşur",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3231,
      "name": "Matrouh",
      "state_code": "MT",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31785,
          "name": "Al ‘Alamayn",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31843,
          "name": "Mersa Matruh",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31866,
          "name": "Siwa Oasis",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3243,
      "name": "Minya",
      "state_code": "MN",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31757,
          "name": "Abū Qurqāş",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31778,
          "name": "Al Minyā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31797,
          "name": "Banī Mazār",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31806,
          "name": "Dayr Mawās",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31835,
          "name": "Mallawī",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31842,
          "name": "Maţāy",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31861,
          "name": "Samālūţ",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3228,
      "name": "Monufia",
      "state_code": "MNF",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31767,
          "name": "Al Bājūr",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31789,
          "name": "Ash Shuhadā’",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31790,
          "name": "Ashmūn",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31846,
          "name": "Munūf",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31854,
          "name": "Quwaysinā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31863,
          "name": "Shibīn al Kawm",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31871,
          "name": "Talā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3246,
      "name": "New Valley",
      "state_code": "WAD",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31772,
          "name": "Al Khārijah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31852,
          "name": "Qaşr al Farāfirah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3227,
      "name": "North Sinai",
      "state_code": "SIN",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31788,
          "name": "Arish",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3229,
      "name": "Port Said",
      "state_code": "PTS",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31850,
          "name": "Port Said",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3232,
      "name": "Qalyubia",
      "state_code": "KB",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31771,
          "name": "Al Khānkah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31779,
          "name": "Al Qanāţir al Khayrīyah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31796,
          "name": "Banhā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31851,
          "name": "Qalyūb",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31864,
          "name": "Shibīn al Qanāṭir",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31873,
          "name": "Toukh",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3247,
      "name": "Qena",
      "state_code": "KN",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31809,
          "name": "Dishnā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31813,
          "name": "Farshūţ",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31822,
          "name": "Isnā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31831,
          "name": "Kousa",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31847,
          "name": "Naja' Ḥammādī",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31853,
          "name": "Qinā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3240,
      "name": "Red Sea",
      "state_code": "BA",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31780,
          "name": "Al Quşayr",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31811,
          "name": "El Gouna",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31817,
          "name": "Hurghada",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31834,
          "name": "Makadi Bay",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31841,
          "name": "Marsa Alam",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31856,
          "name": "Ras Gharib",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31858,
          "name": "Safaga",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 5067,
      "name": "Sharqia",
      "state_code": "SHR",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 149220,
          "name": "10th of Ramadan",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149228,
          "name": "Al Qurein",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149223,
          "name": "Awlad Saqr",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149224,
          "name": "Bilbeis",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149225,
          "name": "Diyarb Negm",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149226,
          "name": "El Husseiniya",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149229,
          "name": "Faqous",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149230,
          "name": "Hihya",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149231,
          "name": "Kafr Saqr",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149221,
          "name": "Markaz Abū Ḩammād",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149232,
          "name": "Mashtoul El Souk",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149233,
          "name": "Minya El Qamh",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149234,
          "name": "New Salhia",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 149235,
          "name": "Zagazig",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3226,
      "name": "Sohag",
      "state_code": "SHG",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31763,
          "name": "Akhmīm",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31765,
          "name": "Al Balyanā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31773,
          "name": "Al Manshāh",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31824,
          "name": "Jirjā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31825,
          "name": "Juhaynah",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31838,
          "name": "Markaz Jirjā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31839,
          "name": "Markaz Sūhāj",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31867,
          "name": "Sohag",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31875,
          "name": "Ţahţā",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3237,
      "name": "South Sinai",
      "state_code": "JS",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31803,
          "name": "Dahab",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31812,
          "name": "El-Tor",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31849,
          "name": "Nuwaybi‘a",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31859,
          "name": "Saint Catherine",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31862,
          "name": "Sharm el-Sheikh",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    },
    {
      "id": 3233,
      "name": "Suez",
      "state_code": "SUZ",
      "latLng": {
        "latitude": null,
        "longitude": null
      },
      "type": null,
      "cities": [
        {
          "id": 31761,
          "name": "Ain Sukhna",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        },
        {
          "id": 31868,
          "name": "Suez",
          "latLng": {
            "latitude": null,
            "longitude": null
          }
        }
      ]
    }
  ]
}
```


### Usage
A simple usage example:

```dart
import  'package:getworld/getworld.dart';
void  main() async {
await GetWorld().initialize();
print(Countries.length);
print(Currencies.length);
print(Languages.length);
}
```

### Features and bugs
Please file feature requests and bugs at the [issue tracker][tracker].
[issue tracker](https://github.com/AmremadDev/getworld/issues)


### References
 1. [**Countries ISO 3166 code**](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes)
 2. [**Languages ISO 639**](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
 3. [**Currencies ISO_4217**](https://en.wikipedia.org/wiki/ISO_4217)
 4. [**arash16/countries-languages**](https://github.com/arash16/countries-languages/tree/master/lib)
 5. [**ksafranski/Common-Currency.json**](https://gist.github.com/ksafranski/2973986)
 6. [**CryceTruly/currencies.json**](https://gist.github.com/CryceTruly/3ebce5ed665e027c132de1706a3db990)
 7. [**dr5hn/countries-states-cities-database**](https://github.com/dr5hn/countries-states-cities-database)
