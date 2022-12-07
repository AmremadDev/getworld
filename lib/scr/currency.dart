class Currency {

  ///three-letter ISO 4217 currency alpha code
  final String iso_4217_code;

  ///three-number ISO 4217 currency numeric
  final String iso_4217_numeric;

  ///official ISO 4217 currency name
  final String iso_4217_name;

  final int? iso_4217_minor_unit;

  ///English full name
  final String? full_name;


  final String? symbol;
  
  final String? symbol_native;

  final int? decimal_digits;

  final double? rounding;

  ///Plural name.
  final String? name_plural;

  ///Withdrawal date.
  final String? withdrawal_date;
  Currency({
    required this.iso_4217_code,
    required this.iso_4217_numeric,
    required this.iso_4217_name,
    required this.iso_4217_minor_unit,
    required this.full_name,
    required this.symbol,
    required this.symbol_native,
    required this.decimal_digits,
    required this.rounding,
    required this.name_plural,
    required this.withdrawal_date,
  });

  Map toJson() => {
        "iso_4217_code": iso_4217_code,
        "iso_4217_numeric": iso_4217_numeric,
        "iso_4217_name": iso_4217_name,
        "iso_4217_minor_unit": iso_4217_minor_unit,
        "full_name": full_name,
        "symbol": symbol,
        "symbol_native": symbol_native,
        "decimal_digits": decimal_digits,
        "rounding": rounding,
        "name_plural": name_plural,
        "withdrawal_date": withdrawal_date
      };
}
