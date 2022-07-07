import 'package:flutter/material.dart';

class KDUI extends StatelessWidget {
  const KDUI({Key? key}) : super(key: key);

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
                  backgroundImage: AssetImage("assets/KD.png"),
                )),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const ListTile(
          title: Center(
              child: Text(
            "Kompetensi Dasar (KD)",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
          )),
          subtitle: Center(
              child: Text(
            "Kompetensi Dasar yang dibahas pada media ini yaitu: ",
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
                'Kompetensi Dasar',
              ], isHeader: true),
              buildRow([
                '3.3.1',
                'Menjelaskan matriks dan kesamaan matriks dengan menggunakan masalah kontekstual dan melakukan operasi pada matriks yang meliputi penjumlahan, pengurangan, perkalian skalar, dan perkalian matriks, serta transpose.',
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
