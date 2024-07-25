import 'package:fe_jurusanku/utils/ScreenArguments.dart';
import 'package:fe_jurusanku/widgets/course_card.dart';
import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class JurusanPage extends StatelessWidget {
  final String jurusan;

  const JurusanPage({super.key, this.jurusan = 'Teknik Informatika'});

  static const Map<String, Map<String, dynamic>> jurusanData = {
    'Teknik Informatika': {
      'description':
          'Teknik Informatika adalah jurusan yang mempelajari cara menggunakan teknologi komputer secara optimal guna menangani masalah transformasi atau pengolahan data dengan proses logika. Jurusan ini mempelajari berbagai prinsip terkait ilmu komputer, mulai dari pemrograman, komputasi, sistem operasi, hingga jaringan komputer. Mahasiswa Teknik Informatika akan mempelajari berbagai mata kuliah, di antaranya:',
      'courses': [
        {
          'imageUrl': 'assets/alstrukdat.png',
          'title': 'Algoritma dan Struktur Data',
        },
        {
          'imageUrl': 'assets/jarkom.png',
          'title': 'Jaringan Komputer',
        },
      ],
      'careerPaths': [
        'Software Engineer',
        'Data Scientist',
        'Data Analyst',
        'Network Engineer',
      ],
    },
    'Pendidikan Dokter': {
      'description':
          'Pendidikan Dokter adalah jurusan yang mempelajari ilmu-ilmu dasar kedokteran serta keterampilan klinis yang diperlukan untuk menjadi seorang dokter. Mahasiswa akan mempelajari anatomi, fisiologi, patologi, farmakologi, dan berbagai mata kuliah lainnya.',
      'courses': [
        {
          'imageUrl': 'assets/pd_1.jpg',
          'title': 'Anatomi',
        },
        {
          'imageUrl': 'assets/pd_2.jpeg',
          'title': 'Farmakologi',
        },
      ],
      'careerPaths': [
        'Dokter Umum',
        'Dokter Spesialis',
      ],
    },
    'Ilmu Komunikasi': {
      'description':
          'Ilmu Komunikasi adalah jurusan yang mempelajari proses komunikasi dalam berbagai konteks. Mahasiswa akan mempelajari teori komunikasi, komunikasi massa, hubungan masyarakat, dan berbagai mata kuliah lainnya.',
      'courses': [
        {
          'imageUrl': 'assets/ik_1.jpg',
          'title': 'Teori Komunikasi',
        },
      ],
      'careerPaths': [
        'Public Relations',
        'Media Analyst',
      ],
    },
    'Matematika': {
      'description':
          'Matematika adalah jurusan yang mempelajari teori, aplikasi, dan penyelesaian masalah yang berkaitan dengan angka dan struktur. Mahasiswa akan mempelajari berbagai konsep seperti kalkulus, aljabar, statistika, dan lainnya.',
      'courses': [
        {
          'imageUrl': 'assets/mat_1.png',
          'title': 'Integral',
        },
        {
          'imageUrl': 'assets/mat_2.png',
          'title': 'Statistika',
        },
      ],
      'careerPaths': ['Aktuaris', 'Data Analyst'],
    },
    'Desain Komunikasi': {
      'description':
          'Desain Komunikasi Visual (DKV) adalah jurusan yang mempelajari cara mengkomunikasikan pesan melalui visual. Mahasiswa akan mempelajari desain grafis, tipografi, animasi, dan berbagai mata kuliah lainnya.',
      'courses': [
        {
          'imageUrl': 'assets/dkv_1.jpg',
          'title': 'Desain Grafis',
        },
        {
          'imageUrl': 'assets/dkv_2.jpeg',
          'title': 'Animasi',
        },
      ],
      'careerPaths': [
        'Graphic Designer',
        'Art Director',
      ],
    },
    'Biologi': {
      'description':
          'Biologi adalah jurusan yang mempelajari berbagai aspek kehidupan dan organisme hidup, termasuk struktur, fungsi, pertumbuhan, evolusi, dan distribusi mereka. Mahasiswa akan mempelajari berbagai mata kuliah, di antaranya:',
      'courses': [
        {
          'imageUrl': 'assets/biologi.jpg',
          'title': 'Makhluk Hidup',
        },
      ],
      'careerPaths': ['Biochemist', 'Science Journalist'],
    },
    'Teknik Industri': {
      'description':
          'Teknik Industri adalah jurusan yang mempelajari cara mengoptimalkan sistem produksi dan manufaktur melalui prinsip-prinsip teknik. Mahasiswa akan mempelajari manajemen produksi, optimasi, dan analisis sistem.',
      'courses': [
        {
          'imageUrl': 'assets/ti_1.jpg',
          'title': 'Perancangan Produk',
        },
      ],
      'careerPaths': [
        'Industrial Engineer',
        'Production Manager',
      ],
    },
    'Farmasi': {
      'description':
          'Farmasi adalah jurusan yang mempelajari ilmu tentang obat-obatan, termasuk cara pembuatan, penggunaan, dan efeknya pada tubuh manusia. Mahasiswa akan mempelajari kimia farmasi, farmakologi, dan teknologi farmasi.',
      'courses': [
        {
          'imageUrl': 'assets/farmasi_1.jpg',
          'title': 'Aliran Genetik',
        },
      ],
      'careerPaths': [
        'Pharmacist',
        'Clinical Research Scientist',
      ],
    },
    'Ilmu Ekonomi': {
      'description':
          'Ilmu ekonomi merupakan ilmu pengetahuan tentang kegiatan sosial manusia dalam memenuhi kebutuhan hidupnya yang diperoleh dari lingkungan.',
      'courses': [
        {
          'imageUrl': 'assets/ie_1.jpg',
          'title': 'Prinsip Ekonomi',
        },
      ],
      'careerPaths': [
        'Akuntan',
        'Market Research Analyst',
      ],
    },
  };

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: TabBar(
              tabs: [
                Tab(text: "Katalog Kursus"),
                Tab(text: "Career Path"),
              ],
              indicatorColor: primaryDark,
              labelStyle: button.copyWith(fontWeight: bold, color: primaryDark),
              dividerColor: surface2,
              unselectedLabelColor: surface3,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.81,
            child: TabBarView(children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Wrap(
                  spacing: 16, // Spasi horizontal antar elemen
                  runSpacing: 20, // Spasi vertikal antar elemen
                  alignment: WrapAlignment.center,
                  children: _getCourseCards(),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ListView(
                  children: _getCareerPaths(),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  List<Widget> _getCourseCards() {
    var courses = jurusanData[jurusan]?['courses'] ?? [];
    return courses.map<Widget>((course) {
      return CourseCard(
        isView: false,
        imageUrl: course['imageUrl'],
        title: course['title'],
      );
    }).toList();
  }

  List<Widget> _getCareerPaths() {
    var careerPaths = jurusanData[jurusan]?['careerPaths'] ?? [];
    return careerPaths.map<Widget>((path) {
      return Column(
        children: [
          _buildCareerPath(path),
          SizedBox(height: 20),
        ],
      );
    }).toList();
  }

  Widget _buildCareerPath(String title) {
    return Container(
      height: 75,
      width: 326,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: white,
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: headlineSmall,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: surface2,
      appBar: AppBar(
        backgroundColor: surface2,
        leading: BackButton(
          color: white,
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/home',
              arguments: ScreenArguments(
                false,
                'assets/DiscoLight_Icon.png',
              ),
            );
          },
        ),
        title: Text(
          'Jurusan $jurusan',
          style: titleMedium.copyWith(color: white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                Text(
                  jurusan,
                  style: displaySmall.copyWith(color: white, fontWeight: bold),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(20),
                  width: 328,
                  height: 266,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: white,
                  ),
                  child: Column(
                    children: [
                      Text(
                        jurusanData[jurusan]?['description'] ?? '',
                        style: bodySmall,
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: primary90,
                            ),
                            child: Text(
                              'Selengkapnya',
                              style: button.copyWith(
                                fontWeight: bold,
                                color: primary,
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Icon(
                            Icons.bookmark,
                            color: primary,
                            size: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                _tabSection(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
