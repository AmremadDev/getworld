import 'latlng.dart';

class City {
  ///City id.
  int? id;

  ///City name.
  String? name;

  ///Described latitude and longitude coordinate points.
  LatLng? latLng;

  City({
    this.id,
    this.name,
    this.latLng,
  });
  Map toJson() => {"id": id, "name": name, "latLng": latLng?.toJson()};
}
