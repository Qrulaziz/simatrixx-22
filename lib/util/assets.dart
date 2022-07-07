import 'package:flutter/material.dart';
import 'package:simatrixx_22/model/course.dart';

class Assets {
  // ignore: prefer_const_declarations
  static final imageAvatar = 'assets/avatar.png';

  static final menuCourse = [
    {
      'title': 'Matriks Dasar',
      'image': 'assets/math1.png',
      'modul': '3 chapter',
    },
    {
      'title': 'Operasi Matriks',
      'image': 'assets/math2.jpg',
      'modul': '4 chapter',
    }
  ];

  static final minigames = [
    'assets/quiz.png',
    'assets/puzzle.png',
  ];

  static final videos = [
    'assets/matrix.png',
    'assets/tanya.png',
    'assets/logo_tambah.png',
    'assets/logo_kurang.png',
    'assets/logo_kali.png',
    'assets/logo_kali2.png',
  ];

  static final List<Course> courses = [
    Course(
        color: Colors.cyan.shade200,
        duration: '15 Menit',
        image: 'assets/matrix.png',
        modul: 17,
        name: 'Apa Itu Matriks ??',
        type: ['Matriks Dasar'],
        subpokok1: 'Pendahuluan',
        subpokok2: 'Definisi Matriks',
        subpokok3: 'Ukuran dari Matriks',
        subpokok4: 'Video materi',
        desc1:
            'Pada kehidupan sehari-hari kita sering melihat data yang ditampilkan dalam bentuk tabel. Misalnya tabel jumlah siswa dan siswi, tabel laporan keuangan, dan lain-lain. Bagian penting dari sebuah tabel adalah adanya baris dan kolom. Pada baris dan kolom tertentu memuat informasi tertentu juga (informasi jumlah siswa misalnya). Sehingga jika kita tukar posisinya dengan baris dan kolom yang berbeda akan memuat nilai yang berbeda. Berikut contoh tabel:',
        desc2:
            'Dari tabel di atas dapat kita lihat bahwa cara untuk mengetahui data jumlah siswa laki-laki kelas X adalah dengan melihat pada baris kedua dan kolom kedua dari tabel tersebut. Lalu apa kaitan antara tabel dengan Matriks ? Simak pembahasan berikut.',
        desc3:
            'Matriks adalah jajaran persegi panjang dari bilangan-bilangan yang disusun dalam baris dan kolom. Bilangan-bilangan dalam jajaran tersebut disebut entri dari matriks. Suatu matriks biasanya dinotasikan menggunakan alfabet kapital.',
        desc4:
            'Matriks A di atas memiliki jumlah baris sebanyak m-baris dan jumlah kolom sebanyak n-kolom. Posisi dari entri matriks A dapat ditentukan menggunakan cara yang sama seperti pada tabel sebelumnya yaitu dilihat dari baris dan kolom ke berapa entri/bilangan tersebut terletak. Jadi entri pada baris pertama dan kolom pertama adalah a11, pada baris pertama kolom kedua adalah a12, dst. Dari konsep baris dan kolom ini nantinya akan digunakan untuk menentukan ukuran dari suatu matriks yang mana akan dibahas pada bagian selanjutnya.',
        desc5:
            'Ukuran (Ordo) dari suatu matriks ditentukan dari jumlah baris dan jumlah kolom matriks tersebut. Untuk lebih jelasnya simak contoh matriks berikut: ',
        desc6:
            'Matriks M memiliki jumlah baris yaitu 2-baris dan jumlah kolom yaitu 3-kolom maka matriks M dikatakan memiliki ukuran 2x3. Sedangkan matriks K karena memiliki jumlah baris dan jumlah kolom masing-masing 3 maka matriks K dikatakan berukuran 3x3. Pada matriks M, entri pada baris pertama dan kolom pertama adalah 2, baris kedua dan kolom pertama adalah 7, dst.',
        desc7:
            'Masih banyak contoh lain matriks dengan ukuran yang berbeda-beda. Namun berdasarkan ukuran dan juga entrinya akan terdapat jenis-jenis matriks khusus yang mana akan dibahas pada bagian Jenis-jenis Matriks.'),
    Course(
        color: Colors.green.shade200,
        duration: '15 Menit',
        image: 'assets/tanya.png',
        modul: 17,
        name: 'Jenis-jenis Matriks',
        type: ['Matriks Dasar'],
        subpokok1: 'Jenis-jenis Matriks',
        subpokok2: 'Lanjutan',
        subpokok3: 'Lanjutan',
        subpokok4: 'Video materi',
        desc1:
            'Seperti sudah dibahas pada bagian sebelumnya, dengan ukuran dan entri matriks yang bisa bermacam-macam, berikut ini jenis-jenis matriks:\n 1. Matriks Persegi merupakan matriks yang memiliki jumlah baris sama dengan jumlah kolom. Contoh: ',
        desc2:
            '2. Matriks diagonal merupakan matriks persegi dengan semua entri selain diagonal utama adalah 0. Contoh:',
        desc3:
            '3. Matriks identitas merupakan matriks diagonal dengan semua entri di diagonal utama adalah 1. Contoh:',
        desc4:
            '4. Matriks segitiga bawah merupakan matriks persegi dengan semua entri di atas diagonal utamanya adalah 0. Contoh:',
        desc5:
            '5. Matriks segitiga atas merupakan matriks persegi dengan semua entri di bawah diagonal utamanya adalah 0. Contoh:',
        desc6:
            'Dengan adanya bermacam-macam ukuran dan jenis matriks maka hal selanjutnya yang akan kita pelajari adalah bagaimana operasi antara matriks yang satu dengan lainnya. Dalam hal ini kita akan melihat apa yang disebut dengan operasi aljabar pada matriks.',
        desc7:
            'Akan dibahas 4 operasi aljabar pada matriks yaitu: (1) Operasi Penjumlahan, (2) Operasi Pengurangan, (3) Operasi Perkalian dengan Skalar, (4) Operasi Perkalian Matriks. Materi ini akan dibahas pada bagian selanjutnya.'),
    Course(
        color: Colors.blue.shade200,
        duration: '15 Menit',
        image: 'assets/logo_tambah.png',
        modul: 17,
        name: 'Operasi Penjumlahan',
        type: ['Operasi Matriks'],
        subpokok1: 'Operasi Penjumlahan',
        subpokok2: 'Lanjutan',
        subpokok3: 'Lanjutan',
        subpokok4: 'Video materi',
        desc1:
            'Jika dua buah matriks memiliki ukuran yang sama, yaitu memiliki jumlah baris sama dengan jumlah kolom, maka jumlah kedua matriks tersebut diperoleh dengan menjumlahkan entri-entri yang bersesuaian dari kedua matriks tersebut. Contoh:',
        desc2:
            'Dari contoh tersebut dapat kita perhatikan bahwa penjumlahan dilakukan entri per entri pada posisi yang sama, yaitu entri pada baris pertama kolom pertama matriks B dengan entri pada baris pertama dan kolom pertama matriks A, dst. Karena dalam menjumlahkan matriks kita menjumlahkan entri-entri pada posisi yang bersesuaian maka penjumlahan matriks bersifat komutatif yaitu A+B = B+A.',
        desc3:
            'Saat kita mengatakan operasi, pada dasarnya kita mengoperasikan dua hal (matriks). Walaupun pada kenyataannya kita diminta melakukan penjumlahan 3 buah matriks atau lebih namun pada tiap langkahnya kita harus memilih dua buah matriks untuk dioperasikan terlebih dahulu. Untuk lebih jelasnya simak contoh berikut:',
        desc4:
            'Silahkan dicek kembali bahwa memang (K + L) + M = K + (L + M). Jadi mau kita jumlahkan K dengan L terlebih dahulu kemudian hasilnya dijumlahkan dengan M atau kita jumlahkan M dengan L dulu kemudian hasilnya kita jumlahkan dengan K, hasilnya akan sama saja. ',
        desc5:
            'Akhir dari chapter ini akan kita tutup dengan melihat perilaku penjumlahan matriks yang semua entrinya berupa nol dengan matriks lain. Walaupun cukup sederhana namun setidaknya penting untuk diketahui. Contohnya sbb:',
        desc6:
            'Karena setiap entri di matriks M ditambahkan dengan nol nilai hasiltambahnya tetap berupa entri-entri dari matriks M. Sehingga secara umum untuk sembarang matriks M jika dijumlahkan dengan matriks nol hasilnya adalah matriks M tersebut.',
        desc7: ''),
    Course(
        color: Colors.red.shade200,
        duration: '15 Menit',
        image: 'assets/logo_kurang.png',
        modul: 17,
        name: 'Operasi Pengurangan',
        type: ['Operasi Matriks'],
        subpokok1: 'Operasi Pengurangan',
        subpokok2: 'Lanjutan',
        subpokok3: 'Lanjutan',
        subpokok4: 'Video materi',
        desc1:
            'Seperti halnya pada operasi penjumlahan, operasi pengurangan pada matriks didefinisikan dengan jika dua buah matriks memiliki ukuran yang sama, maka pengurangan dari kedua matriks tersebut diperoleh dengan mengurangkan entri-entri yang bersesuaian dari kedua matriks tersebut. Contoh:',
        desc2:
            'Konsep operasi pengurangan hampir sama dengan operasi penjumlahan, yaitu syaratnya dua matriks yang ingin dioperasikan harus memiliki ukuran yang sama dan operasi yang dilakukan entri per entri pada posisi yang sama. Namun terdapat konsep yang berlaku di operasi pernjumlahan tetapi tidak di operasi pengurangan.',
        desc3:
            'Konsep yang dimaksud adalah konsep komutatif. Pada operasi penjumlahan konsep komutatif berlaku yaitu A + B = B + A. Namun pada operasi pengurangan A - B = B - A tidak berlaku (atau lebih tepatnya tidak selalu benar sembarang A dan B). Berikut contohnya:',
        desc4:
            'Jadi dalam menggunakan konsep-konsep yang ada kita perlu hati-hati. Harus kita cek kebenarannya dan juga batasan-batasan yang mungkin ada dari konsep tersebut.',
        desc5:
            'Pada bagian akhir chapter ini kita akan melihat bahwa pada dasarnya saat kita melakukan operasi pengurangan, A - B misalnya, sama saja dengan kita melakukan operasi penjumlahan yakni A + (-B). Contoh :',
        desc6:
            'Bagaimana kita memaknai -B dan bagaimana kita mendapatkan -B dari B. Akan kita bahas pada chapter selanjutnya yaitu pada Operasi Perkalian dengan Skalar.',
        desc7: ''),
    Course(
        color: Colors.orange.shade200,
        duration: '15 Menit',
        image: 'assets/logo_kali.png',
        modul: 17,
        name: 'Operasi Perkalian dengan Skalar',
        type: ['Operasi Matriks'],
        subpokok1: 'Operasi Perkalian dengan Skalar',
        subpokok2: 'Lanjutan',
        subpokok3: 'Lanjutan',
        subpokok4: 'Video materi',
        desc1:
            'Misalkan diketahui skalar alpha (a) dan matriks A maka perkalian skalar dengan matriks didefinisikan dengan mengalikan nilai skalar tersebut dengan masing-masing entri dari matriks A. Contoh: ',
        desc2:
            'Karena pada akhirnya kita mengalikan nilai skalar tertentu dengan setiap entri-entri matriks maka kita bisa mengubah urutan perkaliannya. Sehingga skalar dikalikan dengan matriks atau matriks dikalikan skalar akan memiliki makna yang sama.',
        desc3:
            'Pada chapter sebelumnya sempat kita bahas mengenai matriks -B. Dari konsep perkalian skalar dengan matriks maka untuk memperoleh matriks -B kita mengalikan nilai skalar -1 ke setiap entri dari matriks B. Berikut contohnya : ',
        desc4:
            'Berdasarkan konsep operasi saat kita ingin mengalikan skalar dengan matriks dimana terdapat 2 atau lebih skalar cara yang bisa dilakukan adalah mengalikan dulu setiap skalar dengan skalar yang lain atau bisa juga mengalikan masing-masing skalar dengan matriks terlebih dahulu.',
        desc5:
            'Untuk lebih jelasnya simak contoh berikut dimana akan terdapat 3 buah skalar dan sebuah matriks yang ingin kita kalikan.',
        desc6:
            'Bisa dicek kembali sebagai latihan contoh di atas. Pada chapter selanjutnya akan dibahas bagaimana kita melakukan operasi perkalian antara matriks dengan matriks, bagaimana syarat dua buah matriks bisa dikalikan, dan cara-cara apa saja yang bisa digunakan untuk mengalikan matriks. Sampai jumpa pada chapter selanjutnya.',
        desc7: ''),
    Course(
        color: Colors.indigo.shade200,
        duration: '15 Menit',
        image: 'assets/logo_kali2.png',
        modul: 17,
        name: 'Operasi Perkalian Matriks',
        type: ['Operasi Matriks'],
        subpokok1: 'Operasi Perkalian Matriks',
        subpokok2: 'Lanjutan',
        subpokok3: 'Lanjutan',
        subpokok4: 'Video materi',
        desc1:
            'Perkalian matriks dapat didefinisikan sebagai kombinasi linear dari kolom-kolom matriks, yaitu misalkan kita ingin mengalikan matriks A dengan matriks B maka hasilkali kedua matriks tersebut merupakan kombonasi linear dari kolom-kolom matriks A. Sehingga syarat perkalian matriks dapat dilakukan adalah matriks pertama harus memiliki jumlah kolom sama dengan jumlah baris matriks kedua. Untuk lebih jelasnya simak contoh berikut:',
        desc2: '',
        desc3:
            'Namun ada juga cara lain untuk mengalikan matriks, cara ini yang biasanya diajarkan oleh para Guru di sekolah. Simak contoh berikut:',
        desc4:
            'Dari contoh di atas dapat diperhatikan bahwa kita seakan-akan mengalikan baris-baris matriks A dengan kolom-kolom matriks B dari masing-masing entrinya yang kemudian hasilnya dijumlahkan. ',
        desc5:
            'Dengan metode seperti itu maka kita dapat menentukan bahwa ukuran matriks hasilkali AB adalah jumlah baris matriks A dikali jumlah kolom matriks B. Dalam contoh di atas menghasilkan matriks berukuran 2x4. ',
        desc6:
            'Jadi sebagai pengingat agar dua buah matriks bisa dikalikan apabila jumlah kolom matriks pertama sama dengan jumlah baris matriks kedua. Dan secara umum perkalian matriks tidak komutatif, artinya AB tidak sama dengan BA.',
        desc7: ''),
    Course(
        color: Colors.indigo.shade200,
        duration: '15 Menit',
        image: 'assets/transpose.png',
        modul: 17,
        name: 'Kesamaan Matriks dan Transpose',
        type: ['Matriks Dasar'],
        subpokok1: 'Kesamaan dua Matriks',
        subpokok2: 'Transpose',
        subpokok3: 'Lanjutan',
        subpokok4: 'Video materi',
        desc1:
            'Seperti sudah dibahas pada bagian sebelumnya bahwa matriks memiliki ukuran (Ordo) yang bermacam-macam dan juga jenis-jenis yang bermacam-macam pula. Lalu apakah dua buah matriks bisa dikatakan sama ? syarat dan kondisinya seperti apa ?, pada bagian ini akan kita bahas kesamaan antara dua matriks. Dua buah matriks dikatakan sama jika keduanya memiliki ukuran (Ordo) yang sama dan entri-entri pada posisi yang seletak nilainya sama. Untuk lebih jelasnya simak contoh berikut:',
        desc2:
            'Jadi dua buah matriks dikatakan sama jika memenuhi dua syarat tersebut.',
        desc3:
            'Transpose adalah suatu konsep dalam matriks dimana baris-baris dari suatu matriks dijadikan kolom-kolom atau sebaliknya sehingga menghasilkan matriks transpose. Untuk lebih jelasnya simak contoh berikut: ',
        desc4:
            'Dari contoh di atas dapat diperhatikan bahwa matriks transpose dari matriks non-persegi akan menghasilkan matriks transpose dengan ukuran yang berbeda.',
        desc5:
            'Salah satu observasi yang cukup penting yaitu bahwa matriks transpose jika kita transpose-kan lagi akan menghasilkan matriks awal. Simak contoh berikut: ',
        desc6: '',
        desc7: ''),
  ];
}
