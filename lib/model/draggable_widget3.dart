import 'package:flutter/material.dart';
import 'package:simatrixx_22/model/data_dragge3.dart';

class DraggableWidget3 extends StatelessWidget {
  final Teksu3 teksu3;
  const DraggableWidget3({Key? key, required this.teksu3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<Teksu3>(
      data: teksu3,
      child: buildNumber(teksu3.teksmu, Colors.red),
      feedback: Material(
        child: buildNumber(teksu3.teksmu, Colors.red),
      ),
      childWhenDragging: buildNumber("", Colors.white),
    );
  }

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
