import 'package:flutter/material.dart';
import 'package:simatrixx_22/page/KD,Indikator,Tujuan/kd_ui.dart';

class KDWidget extends StatelessWidget {
  const KDWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: KDUI(),
      ),
    );
  }
}
