enum TeksuType6 { satu, dua, tiga, empat }

class Teksu6 {
  final String teksmu;
  final TeksuType6 type;

  Teksu6({required this.teksmu, required this.type});
}

final allTeksu6 = [
  Teksu6(teksmu: "5", type: TeksuType6.satu),
  Teksu6(teksmu: "2", type: TeksuType6.dua),
  Teksu6(teksmu: "1", type: TeksuType6.tiga),
  Teksu6(teksmu: "3", type: TeksuType6.empat),
];
