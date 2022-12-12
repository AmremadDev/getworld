import './city.dart';
import './latlng.dart';

class Province {
  ///Province/State name.
  final String name;

  ///Province/State code.
  final String province_code;

  ///Latitude and Longitude coordinate points.
  final LatLng latLng;

  ///State/Province type.
  final String? type;

  ///List of cities in the Province/State
  List<City>? cities = [];

  Province({
    required this.name,
    required this.province_code,
    required this.latLng,
    required this.type,
    this.cities,
  });

  Map toJson() => {
        "name": name,
        "state_code": province_code,
        "latLng": latLng.toJson(),
        "type": type,
        "cities": cities?.map((e) => e.toJson()).toList(),
      };
}
