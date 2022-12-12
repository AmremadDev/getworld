import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:getworld/getworld.dart';
import 'dart:developer' as developer;

import 'package:intl/intl.dart';

// https://pub.dev/packages/vm_service
import 'package:vm_service/vm_service.dart' show MemoryUsage, VM, VmService;
import 'package:vm_service/vm_service_io.dart' show vmServiceConnectUri;

void main() async {
  // Stopwatch stopwatch = Stopwatch()..start();

  GetWorld().initialize();
//   print(GetWorld.Countries.toJson());
//   print(GetWorld.Languages);
//   print(GetWorld.Currencies);
//  _writeJsonFile (GetWorld.Countries , "d:/countries.json");

// printHeapUsage();
// printHeapUsage();
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





Future<void> printHeapUsage() async {
  MemoryUsage mem = await getMemoryUsage();
  print(NumberFormat.compact().format(mem.heapUsage));
}

Future<MemoryUsage> getMemoryUsage() async {
  developer.ServiceProtocolInfo info = await developer.Service.getInfo();
  VmService service =
      await vmServiceConnectUri(info.serverWebSocketUri.toString());
  VM vm = await service.getVM();
  String? isolateId = vm.isolates?.first.id;
  MemoryUsage mem;
  if (isolateId == null) {
    mem = MemoryUsage(externalUsage: 0, heapCapacity: 0, heapUsage: 0);
  } else {
    mem = await service.getMemoryUsage(isolateId);
  }
  return mem;
}