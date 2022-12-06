import 'package:getworld/getworld.dart';

void main() {
  Stopwatch stopwatch = Stopwatch()..start();

  GetWorld().initialize();

  print(Countries.length);
  print(Currencies.hasCode2("EGP")![0].full_name);
  print(Languages.length);

  print('doSomething() executed in ${stopwatch.elapsed}');
}
