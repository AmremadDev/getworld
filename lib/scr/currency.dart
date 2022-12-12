class Currency {
  ///ISO 4217 currency alpha-3 code
  final String iso_4217_code;

  ///ISO 4217 currency numeric
  final String iso_4217_numeric;

  ///official ISO 4217 currency name
  final String iso_4217_name;

  ///The smallest unit of a currency, depending on the number of decimals.
  final int? iso_4217_minor_unit;

  ///English full name
  final String full_name;

  ///Currency symbol.
  final String symbol;

  ///Currency native symbol.
  final String symbol_native;

  ///Currency decimal_digits.
  final int decimal_digits;

  ///Currency Rounding
  final double rounding;

  ///Plural name.
  final String name_plural;

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
