import 'dart:core';

import './scr/currency.dart';

extension CurrenciesExtensions on List<Currency> {
  List<Currency>? hasCode2 (String iso_4217_code) {
    return where((e) => e.iso_4217_code ==iso_4217_code).toList();
  }
  
}