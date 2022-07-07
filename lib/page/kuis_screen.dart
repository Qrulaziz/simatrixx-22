import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simatrixx_22/controllers/question_controller.dart';
import 'package:simatrixx_22/page/kuiskompo/body.dart';

class KuisScreen extends StatelessWidget {
  const KuisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController controller23 = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: controller23.nextQuestion, child: const Text("Skip")),
        ],
      ),
      body: const Body(),
    );
  }
}
