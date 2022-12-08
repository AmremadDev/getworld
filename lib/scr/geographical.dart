
import 'country.dart';
import 'enums.dart';
import 'latlng.dart';

class Geographical {
  bool? postal_code;
  LatLng? latLng_dms;
  LatLng? latLng_dec;
  LatLng? latLng_min;
  LatLng? latLng_max;
  double? area;
  String? region;
  String? subregion;
  String? world_region;
  String? region_code;
  String? subregion_code;
  bool? landlocked;
  List<Country?>? borders;
  String? independent;

   ///Continents that country lies in
  List<Continents>? continent = [];

  Geographical({
    this.postal_code,
    this.area,
    this.region,
    this.subregion,
    this.world_region,
    this.region_code,
    this.subregion_code,
    this.landlocked,
    this.borders,
    this.independent,
    this.latLng_dms,
    this.latLng_dec,
    this.latLng_min,
    this.latLng_max,
    this.continent,
  });

  Map toJson() => {
        "postal_code": postal_code,
        "area": area,
        "region": region,
        "subregion": subregion,
        "world_region": world_region,
        "region_code": region_code,
        "subregion_code": subregion_code,
        "landlocked": landlocked,
        "borders": borders?.map((e) => e?.iso_3166_1_alpha3).toList(),
        "independent": independent,
        "latLng_dmc": latLng_dms?.toJson(),
        "latLng_dec": latLng_dec?.toJson(),
        "latLng_min": latLng_min?.toJson(),
        "latLng_max": latLng_max?.toJson(),
        "continent": continent?.map((e) => e.value).toList()
      };
}
