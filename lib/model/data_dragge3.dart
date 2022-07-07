enum TeksuType3 { satu, dua, tiga, empat }

class Teksu3 {
  final String teksmu;
  final TeksuType3 type;

  Teksu3({required this.teksmu, required this.type});
}

final allTeksu3 = [
  Teksu3(teksmu: "-2", type: TeksuType3.satu),
  Teksu3(teksmu: "5", type: TeksuType3.dua),
  Teksu3(teksmu: "36", type: TeksuType3.tiga),
  Teksu3(teksmu: "4", type: TeksuType3.empat),
];
