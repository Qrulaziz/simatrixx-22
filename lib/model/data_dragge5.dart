enum TeksuType5 { satu, dua, tiga, empat }

class Teksu5 {
  final String teksmu;
  final TeksuType5 type;

  Teksu5({required this.teksmu, required this.type});
}

final allTeksu5 = [
  Teksu5(teksmu: "4", type: TeksuType5.satu),
  Teksu5(teksmu: "6", type: TeksuType5.dua),
  Teksu5(teksmu: "-9", type: TeksuType5.tiga),
  Teksu5(teksmu: "-1", type: TeksuType5.empat),
];
