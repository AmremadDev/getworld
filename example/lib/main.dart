import 'dart:convert';
import 'dart:io';
import 'package:getworld/getworld.dart';

void main() async {
  Stopwatch stopwatch = Stopwatch()..start();

  GetWorld().initialize();
  print(Countries.length);
  print(Languages.length);
  print(Currencies.length);

  print('GetWorld.intitialize executed in ${stopwatch.elapsed.inMilliseconds} Milliseconds\n');

  //Find by common/offical name
  stopwatch.reset();
  print(Countries.where((country) => country.name.official.toLowerCase().contains("Egypt".toLowerCase()) || country.name.common.toLowerCase().contains("Egypt".toLowerCase())).map((e) => e.name.common));
  print('Countries.where executed  in ${stopwatch.elapsed.inMilliseconds} Milliseconds\n');

  //Find by calling_code
  stopwatch.reset();
  print(Countries.where((country) => country.dialling!.calling_code.contains("+1")).map((e) => e.name.common));
  print('Countries.where executed  in ${stopwatch.elapsed.inMilliseconds} Milliseconds\n');

  //Find by Currency object
  stopwatch.reset();
  print(Countries.where(
          (country) => country.currencies!.contains(Currencies.firstWhere((cur) => cur.iso_4217_code == "USD")))
      .map((e) => e.name.common));
  print('Countries.where executed  in ${stopwatch.elapsed.inMilliseconds} Milliseconds\n');

  //Find by Currency code
  stopwatch.reset();
  print(Countries.where((country) => country.currencies!.any((currency) => currency.iso_4217_code == "USD"))
      .map((e) => e.name.common));
  print('Countries.where executed  in ${stopwatch.elapsed.inMilliseconds} Milliseconds\n');
}

// ignore: unused_element
void _writeJsonFile(Object object, String path) {
  final File file = File(path);
  file.writeAsStringSync(json.encode(object));
  print("${object.runtimeType} exported at $path");
}
