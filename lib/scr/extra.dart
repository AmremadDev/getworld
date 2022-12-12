class Extra {
  ///Geoname ID.
  final int geonameid;

  ///Electronic Data Gathering, Analysis, and Retrieval system.
  final String edgar;

  ///Codes assigned by the International Telecommunications Union.
  final String itu;

  ///MAchine-Readable Cataloging codes from the Library of Congress.
  final String marc;

  ///Country abbreviations by the World Meteorological Organization.
  final String wmo;

  ///Distinguishing signs of vehicles in international traffic.
  final String ds;

  ///Codes assigned by the Fédération Internationale de Football Association.
  final String fifa;

  ///Codes from the U.S. Federal Information Processing Standard
  final String fips;

  ///Global Administrative Unit Layers from the Food and Agriculture Organization
  final int? gaul;

  ///Codes assigned by the International Olympics Committee
  final String ioc;

  ///Correlates of War character
  final String cowc;

  ///Correlates of War numeric
  final int? cown;

  /// Food and Agriculture Organization
  final int? fao;

  ///International Monetary Fund
  final int? imf;

  ///Fifth Assessment Report (AR5)
  final String ar5;

  ///Address forma
  final String address_format;

  ///European Union Member
  final String eu_member;

  Extra({
    required this.geonameid,
    required this.edgar,
    required this.itu,
    required this.marc,
    required this.wmo,
    required this.ds,
    required this.fifa,
    required this.fips,
    required this.gaul,
    required this.ioc,
    required this.cowc,
    required this.cown,
    required this.fao,
    required this.imf,
    required this.ar5,
    required this.address_format,
    required this.eu_member,
  });

  Map toJson() => {
        "geonameid": geonameid,
        "edgar": edgar,
        "itu": itu,
        "marc": marc,
        "wmo": wmo,
        "ds": ds,
        "fifa": fifa,
        "fips": fips,
        "gaul": gaul,
        "ioc": ioc,
        "cowc": cowc,
        "cown": cown,
        "fao": fao,
        "imf": imf,
        "ar5": ar5,
        "address_format": address_format,
        "eu_member": eu_member,
      };
}
