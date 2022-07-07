import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simatrixx_22/controllers/question_controller.dart';
import 'package:simatrixx_22/page/home.dart';
import 'package:simatrixx_22/page/kuis.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController qnController12 = Get.put(QuestionController());

    String whichTeksSelamat() {
      if (qnController12.numOfCorrectAns * 10 > 80) {
        return "Selamat, kamu mendapatkan skor yang tinggi";
      } else if (qnController12.numOfCorrectAns * 10 > 60 &&
          qnController12.numOfCorrectAns * 10 < 80) {
        return "Skor yang lumayan, tingkatkan lagi";
      } else {
        return "Sayang sekali, skor kamu rendah, belajar lebih giat lagi";
      }
    }

    String whichAnim() {
      if (qnController12.numOfCorrectAns * 10 > 80) {
        return "success";
      } else if (qnController12.numOfCorrectAns * 10 > 60 &&
          qnController12.numOfCorrectAns * 10 < 80) {
        return "idle";
      } else {
        return "fail";
      }
    }

    return Scaffold(
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 150,
              child: SizedBox(
                height: 200,
                child: FlareActor(
                  "assets/rive/Teddy.flr",
                  shouldClip: false,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  animation: whichAnim(),
                ),
              ),
            ),
            Positioned(
              top: 350,
              child: Container(
                height: 320,
                width: MediaQuery.of(context).size.width - 37,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        whichTeksSelamat(),
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontFamily: 'Poppins'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Text(
                      "Score",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                        "${qnController12.numOfCorrectAns * 10}/${qnController12.questions.length * 10}"),
                    ElevatedButton(
                        onPressed: () {
                          qnController12.numOfCorrectAns12 = 0;
                          qnController12.animationController12.reset();
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const Kuis()),
                              (route) => false);
                        },
                        child: const Text("Coba Lagi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Poppins'))),
                    ElevatedButton(
                        onPressed: () {
                          qnController12.numOfCorrectAns12 = 0;
                          qnController12.animationController12.reset();
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Home(usernamemu: '')),
                              (route) => false);
                        },
                        child: const Text("Kembali ke Halaman Utama",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
