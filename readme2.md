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
- ```Country.name```                            -> ```Name``` object, detrmine the offical and common name of country.
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
- ```Country.wikiLink```                        -> ```String``` object, relative link to country wikipedia page.

### Language Object
The Languages data based on ISO 639-3 languages codes.
- ```Language.iso_639_1_alpha2```               -> ```String``` object, code iso_639_1 alpha-2.
- ```Language.iso_639_2_alpha3```               -> ```String``` object, code iso_639_2 alpha-3.
- ```Language.family```                         -> ```String``` object, language family.
- ```Language.native```                         -> ```String``` object, native language name.
- ```Language.wikiUrl```                        -> ```String``` object, relative link to language wikipedia page.
- ```Language.name_in```                        -> ```Map<Language, List<String>>``` object, set of all available translation names.

### Currency Object
- ```Currency.iso_4217_code```                  -> ```String``` object, code iso_4217 alpha3.
- ```Currency.iso_4217_numeric```               -> ```String``` object, code iso_4217_numeric.
- ```Currency.iso_4217_name```                  -> ```String``` object,  iso_4217_name.
- ```Currency.iso_4217_minor_unit```            -> ```String``` object,  iso_4217_minor_unit.
- ```Currency.full_name```                      -> ```String``` object,  full_name.
- ```Currency.symbol```                         -> ```String``` object,  iso_639_1.
- ```Currency.symbol_native```                  -> ```String``` object,  iso_639_1.
- ```Currency.decimal_digits```                 -> ```String``` object,  iso_639_1.
- ```Currency.rounding```                       -> ```String``` object,  iso_639_1.
- ```Currency.name_plural```                    -> ```String``` object,  iso_639_1.
- ```Currency.withdrawal_date```                -> ```String``` object,  iso_639_1.


### Name Object
- ```Name.common```                             -> ```String``` object, common name in english.
- ```Name.official```                           -> ```String``` object, official name in english.

### Dialing Object
- ```Dialing.calling_code```                        -> ```String``` object,  calling code.
- ```Dialing.national_number_lengths```             -> ```int``` object,  national number lengths.

### Province Object
- ```Province.id```                             -> ```String``` object, Code iso_639_1.
- ```Province.name```                           -> ```String``` object, Code iso_639_1.
- ```Province.state_code```                     -> ```String``` object, Code iso_639_1.
- ```Province.latLng```                         -> ```String``` object, Code iso_639_1.
- ```Province.type```                           -> ```String``` object, Code iso_639_1.
- ```Currency.cities```                         -> ```String``` object, Code iso_639_1.

### City Object
- ```City.id```                                 -> ```String``` object, Code iso_639_1.
- ```City.name```                               -> ```String``` object, Code iso_639_1.
- ```City.latLng```                             -> ```String``` object, Code iso_639_1.

### Geographical Object
- ```Geographical.continent```      -> ```Continents`` enumeration object, continents that country lies in.
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
- ```Geographical.independent```    -> ```String``` object, independent status.
  

### Extra Object
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
- ```Extra.vat_rates``` - Value-Added Tax.
- 

### Population Object
- ```Population.count```                    -> ```int``` object, population number
- ```Population.worldPercentage```          -> ```double``` object ,country population of world population percentage
  





### Json File Example: Egypt
```json
{
  "IR": {
    "name": {
      "common": "Iran",
      "official": "Islamic Republic of Iran",
      "native": {
        "fas": {
          "official": "جمهوری اسلامی ایران",
          "common": "ایران"
        }
      }
    },
    "demonym": "Iranian",
    "capital": "Tehran",
    "iso_3166_1_alpha2": "IR",
    "iso_3166_1_alpha3": "IRN",
    "iso_3166_1_numeric": "364",
    "currency": {
      "IRR": {
        "iso_4217_code": "IRR",
        "iso_4217_numeric": 364,
        "iso_4217_name": "Iranian rial",
        "iso_4217_minor_unit": 2
      }
    },
    "tld": [
      ".ir",
      "ایران."
    ],
    "alt_spellings": [
      "IR",
      "Islamic Republic of Iran",
      "Iran, Islamic Republic of",
      "Jomhuri-ye Eslāmi-ye Irān"
    ],
    "languages": {
      "fas": "Persian"
    },
    "translations": {
      "deu": {
        "official": "Islamische Republik Iran",
        "common": "Iran"
      },
      "fra": {
        "official": "République islamique d'Iran",
        "common": "Iran"
      },
      "hrv": {
        "official": "Islamska Republika Iran",
        "common": "Iran"
      },
      "jpn": {
        "official": "イラン·イスラム共和国",
        "common": "イラン・イスラム共和国"
      },
      "nld": {
        "official": "Islamitische Republiek Iran",
        "common": "Iran"
      },
      "por": {
        "official": "República Islâmica do Irã",
        "common": "Irão"
      },
      "rus": {
        "official": "Исламская Республика Иран",
        "common": "Иран"
      },
      "spa": {
        "official": "República Islámica de Irán",
        "common": "Iran"
      },
      "fin": {
        "official": "Iranin islamilainen tasavalta",
        "common": "Iran"
      }
    },
    "geo": {
      "continent": {
        "AS": "Asia"
      },
      "postal_code": true,
      "latitude": "32 00 N",
      "latitude_dec": "32.50077819824219",
      "longitude": "53 00 E",
      "longitude_dec": "54.2942008972168",
      "max_latitude": "39.7754",
      "max_longitude": "62",
      "min_latitude": "25.05",
      "min_longitude": "27.4455",
      "area": 1648195,
      "region": "Asia",
      "subregion": "Southern Asia",
      "world_region": "EMEA",
      "region_code": "142",
      "subregion_code": "034",
      "landlocked": false,
      "borders": [
        "AFG",
        "ARM",
        "AZE",
        "IRQ",
        "PAK",
        "TUR",
        "TKM"
      ],
      "independent": "Yes"
    },
    "dialling": {
      "calling_code": [
        "98"
      ],
      "national_prefix": "0",
      "national_number_lengths": [
        10
      ],
      "national_destination_code_lengths": [
        2
      ],
      "international_prefix": "00"
    },
    "extra": {
      "geonameid": 130758,
      "edgar": 0,
      "itu": "IRN",
      "marc": "ir",
      "wmo": "IR",
      "ds": "IR",
      "fifa": "IRN",
      "fips": "IR",
      "gaul": 117,
      "ioc": "IRI",
      "cowc": "IRN",
      "cown": 630,
      "fao": 102,
      "imf": 429,
      "ar5": "MAF",
      "address_format": null,
      "eu_member": null,
      "vat_rates": null
    },
    "population": {
      "count": 79615300,
      "worldPercentage": 1.07
    },
    "wikiLink": "/wiki/Iran"
  }
}
```





### Design goals and limitations
While this package provides `getworld` for convenience, as the name implies, the design goal of this package
is for countires data like codes, names, capitals and geographical info and so on.

 
### Usage
A simple usage example:

```dart
import  'package:getworld/getworld.dart';
void  main() async {
await  GetWorld().initialize();
print(Countries.length);
print(Currencies.length);
print(Languages.length);
}
```
## Features and bugs
Please file feature requests and bugs at the [issue tracker][tracker].
[issue tracker](https://github.com/AmremadDev/getworld/issues)


### References

 1. [**Countries ISO 3166 code**](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes)
 2. [**Languages ISO 639**](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
 3. [**Currencies ISO_4217**](https://en.wikipedia.org/wiki/ISO_4217)
 4. [**arash16/countries-languages**](https://github.com/arash16/countries-languages/tree/master/lib)
 5.  [**ksafranski/Common-Currency.json**](https://gist.github.com/ksafranski/2973986)
 6. [**CryceTruly/currencies.json**](https://gist.github.com/CryceTruly/3ebce5ed665e027c132de1706a3db990)
 7. [**dr5hn/countries-states-cities-database**](https://github.com/dr5hn/countries-states-cities-database)
