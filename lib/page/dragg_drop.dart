import 'package:flutter/material.dart';
import 'package:simatrixx_22/controllers/utils.dart';
import 'package:simatrixx_22/model/data_dragge.dart';
import 'package:simatrixx_22/model/draggable_widget.dart';
import 'package:simatrixx_22/page/dragg_drop2.dart';

class DraggablePuzzle extends StatefulWidget {
  const DraggablePuzzle({Key? key}) : super(key: key);

  @override
  State<DraggablePuzzle> createState() => _DraggablePuzzleState();
}

class _DraggablePuzzleState extends State<DraggablePuzzle> {
  final List<Teksu> all = allTeksu;
  final List<Teksu> satu = [];
  final List<Teksu> dua = [];
  final List<Teksu> tiga = [];
  final List<Teksu> empat = [];

  void removeAll(Teksu toRemove) {
    all.removeWhere((teksu) => teksu.teksmu == toRemove.teksmu);
    satu.removeWhere((teksu) => teksu.teksmu == toRemove.teksmu);
    dua.removeWhere((teksu) => teksu.teksmu == toRemove.teksmu);
    tiga.removeWhere((teksu) => teksu.teksmu == toRemove.teksmu);
    empat.removeWhere((teksu) => teksu.teksmu == toRemove.teksmu);
  }

  int score = 0;
  int indeksu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("Score $score ",
                style: const TextStyle(fontFamily: 'Poppins')),
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
                children:
                    all.map((teksu) => DraggableWidget(teksu: teksu)).toList(),
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
                    teksus: dua,
                    teksmu: "",
                    acceptTypes: [TeksuType.dua],
                    onAccept: (data) => setState(() {
                      removeAll(data);
                      dua.add(data);
                    }),
                  ),
                  const SizedBox(height: 10),
                  buildTarget(
                    context,
                    teksus: empat,
                    teksmu: "",
                    acceptTypes: [TeksuType.empat],
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
                    teksus: tiga,
                    teksmu: "",
                    acceptTypes: [TeksuType.tiga],
                    onAccept: (data) => setState(() {
                      removeAll(data);
                      tiga.add(data);
                    }),
                  ),
                  const SizedBox(height: 10),
                  buildTarget(
                    context,
                    teksus: satu,
                    teksmu: "",
                    acceptTypes: [TeksuType.satu],
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
                  "assets/plus1.png",
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
                    child: buildNumber("7", Colors.white),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Container(
                    child: buildNumber("-6", Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: buildNumber("9", Colors.white),
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
                    child: buildNumber("8", Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: buildNumber("2", Colors.white),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Container(
                    child: buildNumber("9", Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: buildNumber("0", Colors.white),
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
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
                          textAlign: TextAlign.justify,
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
                      builder: (context) => const DraggablePuzzle2()));
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
    required List<Teksu> teksus,
    required List<TeksuType> acceptTypes,
    required DragTargetAccept<Teksu> onAccept,
  }) =>
      DragTarget<Teksu>(
          key: UniqueKey(),
          builder: (context, candidateData, rejectedData) => Stack(
                children: [
                  ...teksus
                      .map((teksu) => DraggableWidget(teksu: teksu))
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
                score += 25;
              });
            } else {
              Utils.showSnackBar(context,
                  text: "Kurang tepat!?!?", color: Colors.red);
              setState(() {
                score -= 10;
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
              fontSize: 19,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'),
          textAlign: TextAlign.center,
        ),
      );
}
