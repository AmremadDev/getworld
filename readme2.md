<p align="center">
  <img src="https://github.com/AmremadDev/getworld/blob/master/logo/logo.png?raw=true" alt="Sublime's custom image"/>
</p>

# getworld
Simple package for getting countries, currenices and languages information.

## Table of Contents
- [Table of Contents](#table-of-contents)
  - [01. Installation](#installation)
  - [02. Country Object](#country-object)
  - [03. Language Object](#language-object)
  - [04. Currency Object](#currency-object)
  - [05. Name Object](#name-object)
  - [06. Dialing Object](#dialing-object)
  - [07. LatLng Object](#latLng-object)
  - [08. Province Object](#province-object)
  - [09. City Object](#city-object)
  - [10. Geographical Object](#geographical-object)
  - [11. Extra Object](#extra-object)
  - [12. Population Object](#population-object)
  - [13. Json File Example: Egypt](#json-file-example-egypt)
  - [14. Usage](#usage)
  - [15. Features and bugs](#features-and-bugs)
  - [16. References](#references)

### 01. Installation
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

### 02. Country Object
The countries data based on ISO_3166 countries codes.

| Object | Type | Description |
|--|--|--|
|`Country.name`|`Name`|detrmine the offical and common name of country.|
|`Country.natives`|`Map<Language, Name>`|set of all available native names.|
|`Country.translations`|`Map<Language, Name>`|set of all available translation names.|
|`Country.demonym`|`String`|set of all available translation names.|
|`Country.demonym`|`String`|name of residents.|
|`Country.capital`|`String`|capital city name.|
|`Country.iso_3166_1_alpha2`|`String`|code ISO 3166-1 alpha-2.|
|`Country.iso_3166_1_alpha3`|`String`|code ISO 3166-1 alpha-3.|
|`Country.iso_3166_1_numeric`|`String`|code ISO 3166-1 numeric.|
|`Country.languages`|`Language`|list of official languages.|
|`Country.currencies`|`Currency`|list of official currencies.|
|`Country.tld`|`List<String>`|country code top-level domains.|
|`Country.alt_spellings`|`List<String>`|alternative spellings of country name.|
|`Country.provinces`|`List<Province>`|list of States/Provinces and it's cities.|
|`Country.geographical`|`Geographical`|describe all Geographical information.|
|`Country.dialling`|`Dialling`|dialing information.|
|`Country.extra`|`Extra`|some extra data of country.|
|`Country.population`|`Population`|population count and country population of world population percentage.|
|`Country.wikiLink`|`String`|relative link to country wikipedia page.|

### 03. Language Object
The Languages data based on ISO 639-3 languages codes.

| Object | Type | Description |
|--|--|--|
|`Language.iso_639_1_alpha2`|`String`|code iso_639_1 alpha-2.|
|`Language.iso_639_2_alpha3`|`String`|code iso_639_2 alpha-3.|
|`Language.family`|`String`|language family.|
|`Language.native`|`String`|set of all available translation names.|
|`Language.wikiUrl`|`String`|relative link to language wikipedia page.|
|`Language.name_in`|`Map<Language, List<String>>`|set of all available translation names.|

### 04. Currency Object
The Currencies data based on ISO 4217 languages codes.

| Object | Type | Description |
|--|--|--|
|`Currency.iso_4217_code`|`String`|code iso_4217 alpha3.|
|`Currency.iso_4217_numeric`|`String`|code iso_4217_numeric.|
|`Currency.iso_4217_name`|`String`|code iso_4217_numeric.|
|`Currency.iso_4217_minor_unit`|`String`|the smallest unit of a currency, depending on the number of decimals.|
|`Currency.full_name`|`String`|english full name.|
|`Currency.symbol`|`String`|currency symbol.|
|`Currency.symbol_native`|`String`|currency native symbol.|
|`Currency.decimal_digits`|`String`|decimal_digits.|
|`Currency.rounding`|`String`|code iso_4217_numeric.|
|`Currency.name_plural`|`String`|currency plural name.|
|`Currency.withdrawal_date`|`String`|date of withdrawal.|

### 05. Name Object
| Object | Type | Description |
|--|--|--|
|`Name.common`|`String`|common name in english.|
|`Name.official`|`String`|official name in english.|

### 06. Dialing Object
| Object | Type | Description |
|--|--|--|
|`Dialing.calling_code`|`String`|calling code.|
|`Dialing.national_number_lengths`|`int`|national number lengths.|

### 07. LatLng Object
| Object | Type | Description |
|--|--|--|
|`LatLng.latitude`|`String`|latitude coordinate point.|
|`LatLng.longitude`|`String`|longitude coordinate point.|

### 08. Province Object
| Object | Type | Description |
|--|--|--|
|`Province.id`|`int`|.|
|`Province.name`|`String`|Described longitude coordinate point.|
|`Province.state_code`|`String`|State/Province code.|
|`Province.latLng`|`LatLng`|coordinate point in **decimal** form.|
|`Province.type`|`String`|State/Province type.|
|`Province.cities`|`List<City>`|List of cities in State/Province.|

### 09. City Object
| Object | Type | Description |
|--|--|--|
|`City.id`|`int`|.|
|`City.name`|`String`|name of city.|
|`City.latLng`|`LatLng`|coordinate point in **decimal** form.|

### 10. Geographical Object
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
  
### 11. Extra Object
| Object | Type | Description |
|--|--|--|
|`Extra.geonameid`|`String`|Geoname ID.|
|`Extra.edgar`|`String`|Electronic Data Gathering, Analysis, and Retrieval system.|
|`Extra.itu`|`String`|Codes assigned by the International Telecommunications Union.|
|`Extra.marc`|`String`|MAchine-Readable Cataloging codes from the Library of Congress.|
|`Extra.wmo`|`String`|Country abbreviations by the World Meteorological Organization.|
|`Extra.ds`|`String`|Distinguishing signs of vehicles in international traffic.|
|`Extra.fifa`|`String`|Codes assigned by the Fédération Internationale de Football Association.|
|`Extra.fips`|`String`|Codes from the U.S. Federal Information Processing Standard.|
|`Extra.gaul`|`String`|Global Administrative Unit Layers from the Food and Agriculture Organization.|
|`Extra.ioc`|`String`|Codes assigned by the International Olympics Committee.|
|`Extra.cowc`|`String`|Correlates of War character.|
|`Extra.cown`|`String`|Correlates of War numeric.|
|`Extra.fao`|`String`|Food and Agriculture Organization.|
|`Extra.imf`|`String`|International Monetary Fund.|
|`Extra.ar5`|`String`|Fifth Assessment Report (AR5).|
|`Extra.address_format`|`String`|Address format.|
|`Extra.eu_member`|`String`|European Union Member.|
|`Extra.vat_rates`|`String`|Value-Added Tax.|

### 12. Population Object
| Object | Type | Description |
|--|--|--|
|`Population.count`|`int`|population number.|
|`Population.worldPercentage`|`double`|country population of world population percentage.|


## Design goals and limitations
While this package provides `getworld` for convenience, as the name implies, the design goal of this package
is for countires data like codes, names, capitals and geographical info and so on.

 
## Usage
getworld must be intiialized with ```intitailze``` function and use it once over all the project.
```intitailze``` retrive data to three List ```Countries```, ```Currencies``` and ```Languages```.
and you can use all list properties over them like ```map```, ```forEach```, ```forEach```, ```where``` and ...

```dart
import  'package:getworld/getworld.dart';
void  main() async {
await GetWorld().initialize();
print(Countries.length);
print(Currencies.length);
print(Languages.length);
}
```
## Features and bugs
Please file feature requests and bugs at the [issue tracker][tracker].
[issue tracker](https://github.com/AmremadDev/getworld/issues)


## References
 1. [**Countries ISO 3166 code**](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes)
 2. [**Languages ISO 639**](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
 3. [**Currencies ISO_4217**](https://en.wikipedia.org/wiki/ISO_4217)
 4. [**arash16/countries-languages**](https://github.com/arash16/countries-languages/tree/master/lib)
 5. [**ksafranski/Common-Currency.json**](https://gist.github.com/ksafranski/2973986)
 6. [**CryceTruly/currencies.json**](https://gist.github.com/CryceTruly/3ebce5ed665e027c132de1706a3db990)
 7. [**dr5hn/countries-states-cities-database**](https://github.com/dr5hn/countries-states-cities-database)
