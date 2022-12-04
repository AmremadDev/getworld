class Population {

  ///
  final int? count;

  ///
  final double? worldPercentage;

  Population({this.count, this.worldPercentage});
  Map toJson() => {
    "count": count, "worldPercentage": worldPercentage
  };
}

