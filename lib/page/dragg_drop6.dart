import 'package:flutter/material.dart';
import 'package:simatrixx_22/controllers/utils.dart';
import 'package:simatrixx_22/model/data_dragge6.dart';
import 'package:simatrixx_22/model/draggable_widget6.dart';
import 'package:simatrixx_22/page/dragg_drop7.dart';

class DraggablePuzzle6 extends StatefulWidget {
  const DraggablePuzzle6({Key? key}) : super(key: key);

  @override
  State<DraggablePuzzle6> createState() => _DraggablePuzzle6State();
}

class _DraggablePuzzle6State extends State<DraggablePuzzle6> {
  final List<Teksu6> all = allTeksu6;
  final List<Teksu6> satu = [];
  final List<Teksu6> dua = [];
  final List<Teksu6> tiga = [];
  final List<Teksu6> empat = [];

  void removeAll(Teksu6 toRemove) {
    all.removeWhere((teksu6) => teksu6.teksmu == toRemove.teksmu);
    satu.removeWhere((teksu6) => teksu6.teksmu == toRemove.teksmu);
    dua.removeWhere((teksu6) => teksu6.teksmu == toRemove.teksmu);
    tiga.removeWhere((teksu6) => teksu6.teksmu == toRemove.teksmu);
    empat.removeWhere((teksu6) => teksu6.teksmu == toRemove.teksmu);
  }

  int score6 = 0;
  int indeksu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Score $score6 ",
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
                left: 12.0, right: 12.0, top: 12.0, bottom: 15.0),
            child: SafeArea(
              child: Text(
                "Tempatkan bilangan-bilangan di bawah ke dalam entri-entri yang sesuai!",
                style: TextStyle(
                    color: Colors.purple, fontSize: 16, fontFamily: 'Poppins'),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: all
                    .map((teksu6) => DraggableWidget6(teksu6: teksu6))
                    .toList(),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 35,
                height: 120,
                child: Image.asset(
                  "assets/leftbracket.png",
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  buildTarget(
                    context,
                    teksus6: tiga,
                    teksmu: "",
                    acceptTypes: [TeksuType6.tiga],
                    onAccept: (data) => setState(() {
                      removeAll(data);
                      tiga.add(data);
                    }),
                  ),
                  const SizedBox(height: 10),
                  buildTarget(
                    context,
                    teksus6: satu,
                    teksmu: "",
                    acceptTypes: [TeksuType6.satu],
                    onAccept: (data) => setState(() {
                      removeAll(data);
                      satu.add(data);
                    }),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  buildTarget(
                    context,
                    teksus6: dua,
                    teksmu: "",
                    acceptTypes: [TeksuType6.dua],
                    onAccept: (data) => setState(() {
                      removeAll(data);
                      dua.add(data);
                    }),
                  ),
                  const SizedBox(height: 10),
                  buildTarget(
                    context,
                    teksus6: empat,
                    teksmu: "",
                    acceptTypes: [TeksuType6.empat],
                    onAccept: (data) => setState(() {
                      removeAll(data);
                      empat.add(data);
                    }),
                  ),
                ],
              ),
              SizedBox(
                width: 35,
                height: 120,
                child: Image.asset(
                  "assets/rightbracket.png",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 35,
                height: 120,
                child: Image.asset(
                  "assets/leftbracket.png",
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  Container(
                    child: buildNumber("4", Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: buildNumber("8", Colors.white),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Container(
                    child: buildNumber("5", Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: buildNumber("7", Colors.white),
                  ),
                ],
              ),
              SizedBox(
                width: 35,
                height: 120,
                child: Image.asset(
                  "assets/rightbracket.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
                child: SafeArea(
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      "assets/equal1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 35,
                height: 120,
                child: Image.asset(
                  "assets/leftbracket.png",
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  Container(
                    child: buildNumber("20", Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: buildNumber("44", Colors.white),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Container(
                    child: buildNumber("19", Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: buildNumber("46", Colors.white),
                  ),
                ],
              ),
              SizedBox(
                width: 35,
                height: 120,
                child: Image.asset(
                  "assets/rightbracket.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          const SizedBox(height: 80.0),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text(
                          'Petunjuk',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
                        ),
                        content: const Text(
                          'Geser kotak-kotak berwarna merah tersebut ke dalam entri-entri matriks kosong yang ada. Geserlah ke dalam entri yang sesuai. Setiap menggeser ke dalam entri yang benar akan mendapatkan poin 25, jika salah -10 poin. Skor maksimal 100.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
                        ),
                        actions: [
                          OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Tutup'))
                        ],
                      ));
            },
            child: Center(
              child: Container(
                height: 45,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                ),
                child: const Center(
                    child: Text(
                  "Petunjuk",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Poppins'),
                )),
              ),
            ),
          ),
          const SizedBox(height: 25.0),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DraggablePuzzle7()));
            },
            child: Center(
              child: Container(
                height: 45,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                ),
                child: const Center(
                    child: Text(
                  "Soal selanjutnya",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Poppins'),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTarget(
    BuildContext context, {
    required String teksmu,
    required List<Teksu6> teksus6,
    required List<TeksuType6> acceptTypes,
    required DragTargetAccept<Teksu6> onAccept,
  }) =>
      DragTarget<Teksu6>(
          builder: (context, candidateData, rejectedData) => Stack(
                children: [
                  ...teksus6
                      .map((teksu6) => DraggableWidget6(teksu6: teksu6))
                      .toList(),
                  IgnorePointer(
                    child: buildNumber(teksmu, Colors.transparent),
                  )
                ],
              ),
          onWillAccept: (data) => true,
          onAccept: (data) {
            if (acceptTypes.contains(data.type)) {
              Utils.showSnackBar(context,
                  text: "Jawaban yang tepat!!", color: Colors.green);
              setState(() {
                score6 += 25;
              });
            } else {
              Utils.showSnackBar(context,
                  text: "Kurang tepat!?!?", color: Colors.red);
              setState(() {
                score6 -= 10;
              });
            }
            onAccept(data);
          });

  Widget buildNumber(String text, Color color) => Container(
        margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
        alignment: Alignment.center,
        width: 35,
        height: 45,
        color: color,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.purple,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'),
          textAlign: TextAlign.center,
        ),
      );
}
