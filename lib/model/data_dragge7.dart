enum TeksuType7 { satu, dua, tiga, empat }

class Teksu7 {
  final String teksmu;
  final TeksuType7 type;

  Teksu7({required this.teksmu, required this.type});
}

final allTeksu7 = [
  Teksu7(teksmu: "1", type: TeksuType7.satu),
  Teksu7(teksmu: "2", type: TeksuType7.dua),
  Teksu7(teksmu: "3", type: TeksuType7.tiga),
  Teksu7(teksmu: "4", type: TeksuType7.empat),
];
