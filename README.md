<p align="center">
  <img src="https://raw.githubusercontent.com/AmremadDev/getworld/master/logo/Capture.JPG" alt="Sublime's custom image"/>
</p>

# getworld
Simple package for getting countries, currenices and languages information.

## Installation

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
  getworld: ^1.0.0
```
Alternatively, your editor might support  `dart pub get`  or  `flutter pub get`. Check the docs for your editor to learn more.
### Import it
Now in your Dart code, you can use:
```dart
import 'package:getworld/getworld.dart';
```

## Design goals and limitations
While this package provides `getworld` for convenience, as the name implies, the design goal of this package
is for countires data like codes, names, capitals and geographical info and so on.

 
## Usage
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


## References

 1. [**Countries ISO 3166 code**](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes)
 2. [**Languages ISO 639**](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
 3. [**Currencies ISO_4217**](https://en.wikipedia.org/wiki/ISO_4217)
 4. [**arash16/countries-languages**](https://github.com/arash16/countries-languages/tree/master/lib)
 5.  [**ksafranski/Common-Currency.json**](https://gist.github.com/ksafranski/2973986)
 6. [**CryceTruly/currencies.json**](https://gist.github.com/CryceTruly/3ebce5ed665e027c132de1706a3db990)
 7. [**dr5hn/countries-states-cities-database**](https://github.com/dr5hn/countries-states-cities-database)
 8. [**country.io**](http://country.io/)
