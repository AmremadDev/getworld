class LatLng {

  ///Described latitude coordinate point.
  String? latitude;
  ///Described longitude coordinate point.
  String? longitude;

  LatLng({
    this.latitude,
    this.longitude,
  });

  Map toJson() => {
        "latitude": latitude,
        "longitude": longitude,
      };
}
