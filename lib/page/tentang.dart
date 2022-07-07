import 'package:flutter/material.dart';
import 'package:simatrixx_22/page/profile_ui.dart';

class TentangMedia extends StatelessWidget {
  const TentangMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: ProfileUI()),
    );
  }
}
