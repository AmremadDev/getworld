
import './city.dart';
import './latlng.dart';

class Province {
  String? name;
  String? state_code;
  LatLng? latLng;
  String? type;
  List<City>? cities = [];
  Province({
    this.name,
    this.state_code,
    this.latLng,
    this.type,
    this.cities,
  });

  Map toJson() => {
        "name": name,
        "state_code": state_code,
        "latLng": latLng?.toJson(),
        "type": type,
        "cities": cities?.map((e) => e.toJson()).toList(),
      };
}

