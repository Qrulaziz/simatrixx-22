import 'package:flutter/material.dart';

class TujuanUI extends StatelessWidget {
  const TujuanUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/trenggalek.jpg",
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
            ),
            const Positioned(
                bottom: -50,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/tujuan.png"),
                )),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const ListTile(
          title: Center(
              child: Text(
            "Tujuan Pembelajaran",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
          )),
          subtitle: Center(
              child: Text(
            "Tujuan pembelajaran dari penggunaan media ini meliputi: ",
            style: TextStyle(fontFamily: 'Poppins'),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            border: TableBorder.all(color: Colors.black87),
            columnWidths: const {
              0: FractionColumnWidth(0.2),
              1: FractionColumnWidth(0.8),
            },
            children: [
              buildRow([
                'No',
                'Tujuan Pembelajaran',
              ], isHeader: true),
              buildRow([
                '3.3.1',
                'Memahami pengertian matriks berdasarkan masalah kontekstual',
              ]),
              buildRow([
                '3.3.2',
                'Menentukan jenis-jenis matriks',
              ]),
              buildRow([
                '3.3.3',
                'Menentukan kesamaan dua matriks',
              ]),
              buildRow([
                '3.3.4',
                'Menentukan transpose dari suatu matriks',
              ]),
              buildRow([
                '3.3.5',
                'Menentukan hasil penjumlahan dua matriks',
              ]),
              buildRow([
                '3.3.6',
                'Menentukan pengurangan dua matriks',
              ]),
              buildRow([
                '3.3.7',
                'Menentukan hasilkali skalar dengan matriks',
              ]),
              buildRow([
                '3.3.8',
                'Menentukan hasil perkalian matriks dengan matriks',
              ]),
            ],
          ),
        ),
      ],
    );
  }
}

TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
      children: cells.map((cell) {
        final style = TextStyle(
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            fontSize: 16.0,
            color: Colors.black,
            fontFamily: 'Poppins');
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Center(child: Text(cell, style: style)),
        );
      }).toList(),
    );
