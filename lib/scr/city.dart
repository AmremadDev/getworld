import './latlng.dart';

class City {
  ///City name.
  final String name;

  ///Latitude and Longitude coordinate points.
  final LatLng latLng;

  City({
    required this.name,
    required this.latLng,
  });
  Map toJson() => {"name": name, "latLng": latLng.toJson()};
}
