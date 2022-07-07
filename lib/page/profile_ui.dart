import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

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
                  backgroundImage: AssetImage("assets/fotoku.png"),
                )),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const ListTile(
          title: Center(
              child: Text(
            "Sahrul Aziz",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 16),
          )),
          subtitle: Center(
              child: Text(
            "Beginner Developer",
            style: TextStyle(fontFamily: 'Poppins'),
          )),
        ),
        const ListTile(
          title: Text(
            "Tentang Pembuat",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 16),
          ),
          subtitle: Text(
            "Halo, saya Sahrul Aziz berasal dari Trenggalek, Jawa Timur. Saat ini, saya adalah seorang mahasiswa jurusan Pendidikan Matematika di salah satu Universitas Swasta di Malang. Matematika dan Teknologi menjadi minat utama saya saat ini, khususnya pengembangan web dan aplikasi mobile android. Media ini merupakan aplikasi mobile android yang pertama saya buat. Tentu masih banyak kekurangan namun diharapkan masih memberikan manfaat kepada pengguna.",
            style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
            textAlign: TextAlign.justify,
          ),
        ),
        const ListTile(
          title: Text(
            "Tentang Media",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 16),
          ),
          subtitle: Text(
            "Media ini merupakan media berbasis android pada materi matriks kelas XI. Media ini sebagai bentuk produk penelitian skripsi yang dilakukan oleh pembuat media. Subjek uji coba media ini adalah siswa kelas XI SMA Negeri 1 Dongko Trenggalek. Diharapkan siswa dapat menemukan pengalaman baru dalam proses belajar, khususnya materi matriks melalui penggunaan media ini. ",
            style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
            textAlign: TextAlign.justify,
          ),
        ),
        ListTile(
          title: const Text(
            "Resources",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 16),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Media ini dibuat menggunakan Flutter, yaitu framework dari Google yang digunakan untuk mengembangkan aplikasi Mobile, Web, dan Desktop. Berikut beberapa sumber penting dalam pengembangan media ini: ",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
                textAlign: TextAlign.justify,
              ),
              Text(
                "1. Dokumentasi resmi Flutter (https://flutter.dev)",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
              ),
              Text(
                "2. Channel YouTube : Erico Darmawan Handoyo, freeCodeCamp.org, Programmer Zaman Now, Johannes Milke, Flutter",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
              ),
              Text(
                "3. Stackoverflow (https://stackoverflow.com)",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
              ),
              Text(
                "4. Aset gambar diambil dari Freepik (https://www.freepik.com)",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
              ),
              Text(
                "5. Flutter Rive/Flare Animation",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
