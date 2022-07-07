enum TeksuType4 { satu, dua, tiga, empat }

class Teksu4 {
  final String teksmu;
  final TeksuType4 type;

  Teksu4({required this.teksmu, required this.type});
}

final allTeksu4 = [
  Teksu4(teksmu: "-13", type: TeksuType4.satu),
  Teksu4(teksmu: "44", type: TeksuType4.dua),
  Teksu4(teksmu: "43", type: TeksuType4.tiga),
  Teksu4(teksmu: "-15", type: TeksuType4.empat),
];
