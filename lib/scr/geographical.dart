import 'country.dart';
import 'enums.dart';
import 'latlng.dart';

class Geographical {
  ///Geographical area postal code
  final bool? postal_code;

  ///coordinate point in **degrees minutes seconds** form.
  final LatLng latLng_dms;

  ///coordinate point in **decimal** form.
  final LatLng latLng_dec;

  ///minmum coordinate point in **decimal** form.
  final LatLng latLng_min;

  ///maxmum coordinate point in **decimal** form.
  final LatLng latLng_max;

  ///land area in km².
  final double area;

  ///geographical region.
  final String? region;

  ///geographical sub-region.
  final String? subregion;

  ///geographical world region.
  final String? world_region;

  ///geographical sub-region numeric code.
  final String? region_code;

  ///geographical sub-region numeric code.
  final String? subregion_code;

  ///landlocked status.
  final bool? landlocked;

  ///land borders.
  final List<Country> borders = [];

  ///independent status.
  final String independent;

  ///Continents that country lies in.
  final List<Continents> continent = [];

  Geographical({
    this.postal_code,
    required this.area,
    this.region,
    this.subregion,
    this.world_region,
    this.region_code,
    this.subregion_code,
    this.landlocked,
    // this.borders,
    // this.continent,
    required this.independent,
    required this.latLng_dms,
    required this.latLng_dec,
    required this.latLng_min,
    required this.latLng_max,
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
        "borders": borders.map((e) => e.iso_3166_1_alpha3).toList(),
        "independent": independent,
        "latLng_dmc": latLng_dms.toJson(),
        "latLng_dec": latLng_dec.toJson(),
        "latLng_min": latLng_min.toJson(),
        "latLng_max": latLng_max.toJson(),
        "continent": continent.map((e) => e.value).toList()
      };
}
