enum TeksuType { satu, dua, tiga, empat }

class Teksu {
  final String teksmu;
  final TeksuType type;

  Teksu({required this.teksmu, required this.type});
}

final allTeksu = [
  Teksu(teksmu: "-9", type: TeksuType.satu),
  Teksu(teksmu: "4", type: TeksuType.dua),
  Teksu(teksmu: "15", type: TeksuType.tiga),
  Teksu(teksmu: "-5", type: TeksuType.empat),
];
