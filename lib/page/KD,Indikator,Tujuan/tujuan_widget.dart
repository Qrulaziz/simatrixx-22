import 'package:flutter/material.dart';
import 'package:simatrixx_22/page/KD,Indikator,Tujuan/tujuan_ui.dart';

class TujuanWidget extends StatelessWidget {
  const TujuanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: TujuanUI(),
      ),
    );
  }
}
