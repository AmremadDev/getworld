class 
VATRate {
  double? standard;
  List<double>? reduced;
  double? super_reduced;
  double? parking;

  VATRate({
    this.standard,
    this.reduced,
    this.super_reduced,
    this.parking,
  });

      Map toJson() => {
        "standard": standard,
        "reduced": reduced,
        "super_reduced": super_reduced,
        "parking": parking,
    };
}




