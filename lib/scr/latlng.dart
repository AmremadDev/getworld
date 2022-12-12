class LatLng {
  ///Latitude coordinate point.
  String latitude;

  ///Longitude coordinate point.
  String longitude;

  LatLng({
    required this.latitude,
    required this.longitude,
  });

  Map toJson() => {
        "latitude": latitude,
        "longitude": longitude,
      };
}
