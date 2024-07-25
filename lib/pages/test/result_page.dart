import 'dart:math';
import 'package:fe_jurusanku/pages/home_page.dart';
import 'package:fe_jurusanku/providers/randomMajor.dart';
import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String selectedOption =
        ModalRoute.of(context)!.settings.arguments as String;
    final randomMajor = getRandomMajor(selectedOption);
    final randomPercentage = getRandomPercentage();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: transparent,
          title: Text(
            'Profil',
            style: bodyLarge.copyWith(color: primaryFixedDim),
          ),
          centerTitle: true,
          leading: BackButton(
            color: white,
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xffB24BC3),
            Color(0xffEC37A9),
          ])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Rekomendasi jurusan untukmu',
                  style: displaySmall.copyWith(fontWeight: bold, color: white),
                ),
                SizedBox(height: 32),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 750,
                      width: 329,
                    ),
                    Positioned(
                      top: 95,
                      child: Container(
                        width: 329,
                        padding: EdgeInsets.only(
                          top: 120,
                          right: 15,
                          left: 15,
                          bottom: 15,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: white),
                        child: Column(
                          children: [
                            Text(
                              randomMajor['title']!,
                              style: headlineMedium.copyWith(fontWeight: bold),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 210,
                              width: 136,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  color: tertiary99,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Text(
                                    'Jurusan ini',
                                    style: bodyLarge,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 99,
                                    width: 99,
                                    decoration: BoxDecoration(
                                        color: tertiary90,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '$randomPercentage%',
                                      style: headlineLarge.copyWith(
                                          color: tertiary20, fontWeight: bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Cocok dengan kamu',
                                    style: bodyMedium,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              randomMajor['description']!,
                              style: bodySmall,
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Provider.of<MajorProvider>(context,
                                        listen: false)
                                    .setRandomMajor(randomMajor);
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(
                                      currentIndex: 0,
                                      onIndexChanged: (index) {},
                                      beforeTest: false,
                                    ),
                                  ),
                                  (Route<dynamic> route) => false,
                                );
                              },
                              child: Text(
                                'Kembali ke Beranda',
                                style: button.copyWith(color: white),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: primary,
                                  elevation: 0,
                                  fixedSize: Size(301, 40)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 271,
                      height: 189,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage(randomMajor['imageUrl']!))),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Map<String, String> getRandomMajor(String selectedOption) {
    final Map<String, Map<String, dynamic>> majors = {
      'Teknik Informatika': {
        'description':
            'Teknik Informatika adalah jurusan yang mempelajari cara menggunakan teknologi komputer secara optimal guna menangani masalah transformasi atau pengolahan data dengan proses logika. Jurusan ini mempelajari berbagai prinsip terkait ilmu komputer, mulai dari pemrograman, komputasi, sistem operasi, hingga jaringan komputer.',
        'imageUrl': 'assets/informatics.png',
      },
      'Pendidikan Dokter': {
        'description':
            'Pendidikan Dokter adalah jurusan yang mempelajari ilmu-ilmu dasar kedokteran serta keterampilan klinis yang diperlukan untuk menjadi seorang dokter. Mahasiswa akan mempelajari anatomi, fisiologi, patologi, farmakologi, dan berbagai mata kuliah lainnya.',
        'imageUrl': 'assets/doctor.png',
      },
      'Ilmu Komunikasi': {
        'description':
            'Ilmu Komunikasi adalah jurusan yang mempelajari proses komunikasi dalam berbagai konteks. Mahasiswa akan mempelajari teori komunikasi, komunikasi massa, hubungan masyarakat, dan berbagai mata kuliah lainnya.',
        'imageUrl': 'assets/ilkom.png',
      },
      'Matematika': {
        'description':
            'Matematika adalah jurusan yang mempelajari teori, aplikasi, dan penyelesaian masalah yang berkaitan dengan angka dan struktur. Mahasiswa akan mempelajari berbagai konsep seperti kalkulus, aljabar, statistika, dan lainnya.',
        'imageUrl': 'assets/matematika.jpeg',
      },
      'Desain Komunikasi': {
        'description':
            'Desain Komunikasi Visual (DKV) adalah jurusan yang mempelajari cara mengkomunikasikan pesan melalui visual. Mahasiswa akan mempelajari desain grafis, tipografi, animasi, dan berbagai mata kuliah lainnya.',
        'imageUrl': 'assets/dkv.png',
      },
      'Biologi': {
        'description':
            'Biologi adalah jurusan yang mempelajari berbagai aspek kehidupan dan organisme hidup, termasuk struktur, fungsi, pertumbuhan, evolusi, dan distribusi mereka. Mahasiswa akan mempelajari berbagai mata kuliah, di antaranya:',
        'imageUrl': 'assets/biologi.jpg',
      },
      'Teknik Industri': {
        'description':
            'Teknik Industri adalah jurusan yang mempelajari cara mengoptimalkan sistem produksi dan manufaktur melalui prinsip-prinsip teknik. Mahasiswa akan mempelajari manajemen produksi, optimasi, dan analisis sistem.',
        'imageUrl': 'assets/industri.jpg',
      },
      'Farmasi': {
        'description':
            'Farmasi adalah jurusan yang mempelajari ilmu tentang obat-obatan, termasuk cara pembuatan, penggunaan, dan efeknya pada tubuh manusia. Mahasiswa akan mempelajari kimia farmasi, farmakologi, dan teknologi farmasi.',
        'imageUrl': 'assets/farmasi.jpeg',
      },
      'Ilmu Ekonomi': {
        'description':
            'Ilmu ekonomi merupakan ilmu pengetahuan tentang kegiatan sosial manusia dalam memenuhi kebutuhan hidupnya yang diperoleh dari lingkungan.',
        'imageUrl': 'assets/ekonomi.jpeg',
      },
    };

    final List<String> ipaMajors = [
      'Teknik Informatika',
      'Pendidikan Dokter',
      'Matematika',
      'Biologi',
      'Teknik Industri',
      'Farmasi'
    ];

    final List<String> ipsMajors = [
      'Ilmu Komunikasi',
      'Desain Komunikasi',
      'Ilmu Ekonomi'
    ];

    final List<String> selectedMajors =
        selectedOption == 'IPA' ? ipaMajors : ipsMajors;
    final random = Random();
    final randomMajorKey =
        selectedMajors[random.nextInt(selectedMajors.length)];

    return {
      'title': randomMajorKey,
      'description': majors[randomMajorKey]!['description'] as String,
      'imageUrl': majors[randomMajorKey]!['imageUrl'] as String,
    };
  }

  int getRandomPercentage() {
    final random = Random();
    return 60 +
        random.nextInt(41); // Generates a random number between 60 and 100
  }
}
