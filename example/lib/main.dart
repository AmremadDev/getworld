import 'package:getworld/getworld.dart';

void main() {
  Stopwatch stopwatch = Stopwatch()..start();

  GetWorld().initialize();
  print('GetWorld().initialize() executed in ${stopwatch.elapsed.inMilliseconds} Milliseconds');

 
  stopwatch.reset();
  Countries.equalDialCode("+2")?.forEach((element) {
    print(element.name);
  });
  print('Countries.containOfficialName executed in ${stopwatch.elapsed.inMilliseconds} Milliseconds');

  stopwatch.reset();
  print(Countries.alphabetSetByOfficialName());
  print('Countries.containOfficialName executed in ${stopwatch.elapsed.inMilliseconds} Milliseconds');

  // print(Currencies.withCode("EGP")![0].full_name);
  // print(Languages.length);

 
}
