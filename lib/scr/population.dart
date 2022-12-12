class Population {
  ///Population number
  final int count;

  ///Country population of world
  final double worldPercentage;

  Population({
    required this.count,
    required this.worldPercentage,
  });
  Map toJson() => {
        "count": count,
        "worldPercentage": worldPercentage,
      };
}
