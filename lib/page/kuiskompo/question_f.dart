import 'package:flutter/material.dart';
import 'package:simatrixx_22/model/pertanyaan.dart';

class Questionf extends StatelessWidget {
  const Questionf({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      sampledata[0]['question'],
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
