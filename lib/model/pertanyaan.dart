class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sampledata = [
  {
    "id": 1,
    "question": "Manakah dari pernyataan berikut yang benar tentang Matriks ?",
    "options": [
      'Matriks selalu memiliki jumlah baris dan jumlah kolom yang sama',
      'Matriks selalu memiliki entri 1 pada salah satu baris atau kolomnya',
      'Ukuran dari suatu Matriks dapat ditentukan melalui jumlah baris dan jumlah kolomnya',
      'tidak ada pernyataan yang benar'
    ],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question":
        "Bagaimana cara untuk mengetahui letak dari suatu entri pada Matriks ?",
    "options": [
      'Tidak ada caranya',
      'Dilihat dari himpunan bilangannya',
      'Ditentukan dulu apakah matriksnya persegi atau bukan',
      'Dilihat dari nomor baris ke-berapa dan nomor kolom ke-berapa'
    ],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question":
        "Apakah entri-entri pada Matriks hanya dapat berupa bilangan bulat saja ?",
    "options": [
      'Tidak terbatas bilangan bulat saja, bisa berupa bilangan pada himpunan yang lebih luas',
      'Ya, hanya dapat berupa bilangan bulat positif saja',
      'Ya, hanya dapat berupa bilangan bulat positif dan negatif',
      'Hanya boleh bilangan 1 sampai 10 saja'
    ],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question":
        "Misalkan matriks A berukuran 2x2 yang semua entrinya bilangan 1. Apa yang terjadi jika kita coba jumlahkan dengan matriks 3x3 yang semua entrinya nol ?",
    "options": [
      'Hasilnya berupa matriks berukuran 2x3 yang semua entrinya 1',
      'Hasilnya berupa matriks berukuran 2x3 yang semua entrinya 0',
      'Tidak bisa dijumlahkan',
      'Menghasilkan matriks identitas'
    ],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question":
        "Misalkan matriks A dan B, dimana matriks A tidak sama dengan B, mereka memiliki ukuran yang sama dengan entri tidak semuanya nol. Apakah hasil pengurangan A-B akan sama dengan B-A ?",
    "options": [
      'Sama karena sifat komutatif',
      'Tidak sama karena operasi pengurangan matriks tidak komutatif',
      'Tergantung dengan himpunan bilangan pada entri matriks tersebut',
      'Tergantung jumlah kolom matriks A'
    ],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question":
        "Apakah skalar pengali pada operasi perkalian matriks dengan skalar haruslah bilangan bulat ?",
    "options": [
      'Tidak harus, bisa berupa bilangan apapun, seperti rasional/pecahan, irrasional, dan lainnya',
      'Harus, supaya mudah dikerjakan',
      'Harus, supaya menghasilkan matriks persegi ',
      'Tidak, karena pengalinya hanya boleh bilangan 1 atau 0'
    ],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "Dua buah matriks dikatakan sama jika dan hanya jika...",
    "options": [
      'Memiliki ukuran yang sama dan entri-entri pada posisi yang seletak nilainya sama',
      'Memiliki ukuran yang sama dan semua entrinya berupa bilangan positif',
      'Memiliki ukuran minimal 3x3 dan berupa matriks persegi',
      'Memiliki ukuran yang berbeda, entrinya semuanya 1, dan berukuran minimal 2x2'
    ],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question":
        "Apakah benar bahwa dua buah matriks bisa dikalikan hanya jika dua buah matriks tersebut berukuran sama dan berupa matriks persegi ?",
    "options": [
      'Benar, supaya hasil kalinya juga berupa matriks persegi',
      'Salah, karena hanya matriks dengan ukuran yang berbeda yang bisa dikalikan',
      'Salah, karena jika matriks pertama memiliki jumlah kolom sama dengan jumlah baris matriks kedua maka kedua matriks tersebut bisa dikalikan',
      'Benar, karena jika syarat tersebut tidak dipenuhi operasi perkalian tidak bisa dilakukan'
    ],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "Bagaimana cara menentukan transpose dari suatu matriks ?",
    "options": [
      'Menjadikan baris-baris matriks menjadi kolom-kolom atau sebaliknya',
      'Mengubah matriks menjadi matriks segitiga atas atau segitiga bawah',
      'Mengubah entri-entrinya menjadi bilangan 1 atau 0',
      'Mengalikan dengan skalar bilangan prima'
    ],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question":
        "Misalkan hasil perkalian matriks AB = C. Jika B adalah matriks identitas perkalian, apa yang bisa kita simpulkan dari matriks C ?",
    "options": [
      'Matriks C dapat diperoleh dengan mengalikan matriks A dengan skalar 2',
      'Matriks C sama dengan matriks A',
      'Tidak dapat ditarik kesimpulan',
      'Matriks C juga akan selalu berupa matriks identitas'
    ],
    "answer_index": 1,
  },
];
