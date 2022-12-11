import 'dart:convert';
import 'dart:io';
import 'package:getworld/getworld.dart';

void main() {
  Stopwatch stopwatch = Stopwatch()..start();

  GetWorld().initialize();
  print(GetWorld.Countries.length);
  print(GetWorld.Currencies.length);
  print(GetWorld.Languages.length);

 _writeJsonFile (GetWorld.Countries , "d:/countries.json");
 
//   print(Countries[0].toJson());

//   stopwatch.reset();
//   Countries.equalDialCode("+2")?.forEach((element) {
//     print(element.name);
//   });
//   print('Countries.containOfficialName executed in ${stopwatch.elapsed.inMilliseconds} Milliseconds');

//   stopwatch.reset();
//   print(Countries.alphabetSetByOfficialName());
//   print('Countries.containOfficialName executed in ${stopwatch.elapsed.inMilliseconds} Milliseconds');

//   // print(Currencies.withCode("EGP")![0].full_name);
//   // print(Languages.length);

//  print("/" *100);
//   stopwatch.reset();

// List<Country> list = Countries.where((e) => e.dialling!.calling_code.contains("+20")).toList();
// print(list.toJson());

//   print('Countries.containOfficialName executed in ${stopwatch.elapsed.inMilliseconds} Milliseconds');

//   //  _writeJsonFile("d:/ddd.json", Countries);
}

// ignore: unused_element
void _writeJsonFile( Object object, String path) {
  final File file = File(path);
  file.writeAsStringSync(json.encode(object));
  print("${object.runtimeType} exported at $path");
}
