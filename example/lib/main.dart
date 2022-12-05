
import '../../lib/getworld.dart';

void main() async  {
   await GetWorld().initialize();

  print(Countries.length);
  print(Currencies.length);
  print(Languages.length);
}
