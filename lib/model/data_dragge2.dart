enum TeksuType2 { satu, dua, tiga, empat }

class Teksu2 {
  final String teksmu;
  final TeksuType2 type;

  Teksu2({required this.teksmu, required this.type});
}

final allTeksu2 = [
  Teksu2(teksmu: "17", type: TeksuType2.satu),
  Teksu2(teksmu: "3", type: TeksuType2.dua),
  Teksu2(teksmu: "-6", type: TeksuType2.tiga),
  Teksu2(teksmu: "18", type: TeksuType2.empat),
];
