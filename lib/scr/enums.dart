enum Continents {
  Africa("AF", "Africa"),
  Antarctica("AN", "Antarctica"),
  Asia("AS", "Asia"),
  Europe("EU", "Europe"),
  North_America("NA", "North America"),
  Oceania("OC", "Oceania"),
  South_America("SA", "South America");

  const Continents(this.value, this.name);
  final String name;
  final String value;
}
