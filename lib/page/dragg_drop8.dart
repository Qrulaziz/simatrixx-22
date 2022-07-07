import 'package:flutter/material.dart';
import 'package:simatrixx_22/page/home.dart';

class DraggablePuzzle8 extends StatelessWidget {
  const DraggablePuzzle8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernamemu1 = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Selamat kamu telah menyelesaikan minigame ini, tekan tombol di bawah untuk kembali ke halaman utama. Terima kasih",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Ketikkan username",
                        labelText: "User Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      controller: usernamemu1,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) =>
                                    Home(usernamemu: usernamemu1.text)),
                            (route) => false);
                      },
                      child: const Text("Kembali",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ))),
                ]),
          ),
        ),
      ),
    );
  }
}
