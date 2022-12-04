class Dialling {
  final String calling_code;
  final int? national_number_lengths;

  Dialling({
    required this.calling_code,
    required this.national_number_lengths,
  });

  Map toJson() => {
        "calling_code": calling_code,
        "national_number_lengths": national_number_lengths,
      };
}
