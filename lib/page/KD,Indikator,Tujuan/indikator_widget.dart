import 'package:flutter/material.dart';
import 'package:simatrixx_22/page/KD,Indikator,Tujuan/indikator_ui.dart';

class IndikatorWidget extends StatelessWidget {
  const IndikatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: IndikatorUI(),
      ),
    );
  }
}
