import 'latlng.dart';

class City {
  ///City name.
  String? name;

  ///Described latitude and longitude coordinate points.
  LatLng? latLng;

  City({
    this.name,
    this.latLng,
  });
  Map toJson() => {"name": name, "latLng": latLng?.toJson()};
}
