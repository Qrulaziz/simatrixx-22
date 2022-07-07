import 'package:flutter/material.dart';
import 'package:simatrixx_22/controllers/utils.dart';
import 'package:simatrixx_22/model/data_dragge4.dart';
import 'package:simatrixx_22/model/draggable_widget4.dart';
import 'package:simatrixx_22/page/dragg_drop5.dart';

class DraggablePuzzle4 extends StatefulWidget {
  const DraggablePuzzle4({Key? key}) : super(key: key);

  @override
  State<DraggablePuzzle4> createState() => _DraggablePuzzle4State();
}

class _DraggablePuzzle4State extends State<DraggablePuzzle4> {
  final List<Teksu4> all = allTeksu4;
  final List<Teksu4> satu = [];
  final List<Teksu4> dua = [];
  final List<Teksu4> tiga = [];
  final List<Teksu4> empat = [];

  void removeAll(Teksu4 toRemove) {
    all.removeWhere((teksu4) => teksu4.teksmu == toRemove.teksmu);
    satu.removeWhere((teksu4) => teksu4.teksmu == toRemove.teksmu);
    dua.removeWhere((teksu4) => teksu4.teksmu == toRemove.teksmu);
    tiga.removeWhere((teksu4) => teksu4.teksmu == toRemove.teksmu);
    empat.removeWhere((teksu4) => teksu4.teksmu == toRemove.teksmu);
  }

  int score4 = 0;
  int indeksu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Score $score4 ",
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
                    .map((teksu4) => DraggableWidget4(teksu4: teksu4))
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
                    teksus4: dua,
                    teksmu: "",
                    acceptTypes: [TeksuType4.dua],
                    onAccept: (data) => setState(() {
                      removeAll(data);
                      dua.add(data);
                    }),
                  ),
                  const SizedBox(height: 10),
                  buildTarget(
                    context,
                    teksus4: empat,
                    teksmu: "",
                    acceptTypes: [TeksuType4.empat],
                    onAccept: (data) => setState(() {
                      removeAll(data);
                      empat.add(data);
                    }),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  buildTarget(
                    context,
                    teksus4: tiga,
                    teksmu: "",
                    acceptTypes: [TeksuType4.tiga],
                    onAccept: (data) => setState(() {
                      removeAll(data);
                      tiga.add(data);
                    }),
                  ),
                  const SizedBox(height: 10),
                  buildTarget(
                    context,
                    teksus4: satu,
                    teksmu: "",
                    acceptTypes: [TeksuType4.satu],
                    onAccept: (data) => setState(() {
                      removeAll(data);
                      satu.add(data);
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
                width: 18,
                height: 18,
                child: Image.asset(
                  "assets/minus1.png",
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
                    child: buildNumber("31", Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: buildNumber("-8", Colors.white),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Container(
                    child: buildNumber("15", Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: buildNumber("-2", Colors.white),
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
                    child: buildNumber("13", Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: buildNumber("-7", Colors.white),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Container(
                    child: buildNumber("28", Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: buildNumber("-11", Colors.white),
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
                      builder: (context) => const DraggablePuzzle5()));
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
    required List<Teksu4> teksus4,
    required List<TeksuType4> acceptTypes,
    required DragTargetAccept<Teksu4> onAccept,
  }) =>
      DragTarget<Teksu4>(
          builder: (context, candidateData, rejectedData) => Stack(
                children: [
                  ...teksus4
                      .map((teksu4) => DraggableWidget4(teksu4: teksu4))
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
                score4 += 25;
              });
            } else {
              Utils.showSnackBar(context,
                  text: "Kurang tepat!?!?", color: Colors.red);
              setState(() {
                score4 -= 10;
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
