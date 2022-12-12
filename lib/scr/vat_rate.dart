class VATRate {
  ///Standard VAT.
  double? standard;

  ///Reduced rates.
  List<double>? reduced;

  ///Super reduced rates.
  double? super_reduced;

  ///VAT rate for parking.
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
