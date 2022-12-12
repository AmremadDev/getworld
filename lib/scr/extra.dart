class Extra {
  final int? geonameid;
  final String? edgar;
  final String? itu;
  final String? marc;
  final String? wmo;
  final String? ds;
  final String? fifa;
  final String? fips;
  final int? gaul;
  final String? ioc;
  final String? cowc;
  final int? cown;
  final int? fao;
  final int? imf;
  final String? ar5;
  final String? address_format;
  final String? eu_member;
  
  Extra({
    this.geonameid,
    this.edgar,
    this.itu,
    this.marc,
    this.wmo,
    this.ds,
    this.fifa,
    this.fips,
    this.gaul,
    this.ioc,
    this.cowc,
    this.cown,
    this.fao,
    this.imf,
    this.ar5,
    this.address_format,
    this.eu_member,
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
