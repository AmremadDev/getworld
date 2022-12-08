
import './city.dart';
import './latlng.dart';


class Province {
  int? id;
  String? name;
  String? state_code;
  LatLng? latLng;
  String? type;
  List<City>? cities = [];
  Province({
    this.id,
    this.name,
    this.state_code,
    this.latLng,
    this.type,
    this.cities,
  });

  Map toJson() => {
        "id": id,
        "name": name,
        "state_code": state_code,
        "latLng": latLng,
        "type": type,
        "cities": cities,
      };

//   @override
//   String toString() {
//     String indent = "${"          " * 2}";
//     String str = '''
// $indent id     : ${this.id}
// $indent name   : ${this.name}
// $indent latLng : ${this.latLng.toString()}
// $indent type   : ${this.type}
// $indent cities : \n${this.cities?.join()}
// $indent *******************************************************************************************************************************
// ''';
//     //
//     return str;
//   }

}

