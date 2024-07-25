import 'package:fe_jurusanku/widgets/bab_card.dart';
import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class MateriPage extends StatelessWidget {
  final String courseName;

  const MateriPage(
      {super.key, this.courseName = 'Algoritma dan Struktur Data'});

  static const Map<String, Map<String, dynamic>> courses = {
    'Algoritma dan Struktur Data': {
      'materi': [
        {
          'name': 'Array dan Linked List',
          'imageUrl': 'assets/materi.png',
          'externalUrl':
              'https://drive.google.com/file/d/1rxx9fvbcqO0uKojg6NaXmRGdaaGGzirk/view?usp=sharing',
        },
        {
          'name': 'Stack and Queue',
          'imageUrl': 'assets/materi2.png',
          'externalUrl':
              'https://drive.google.com/file/d/1rxx9fvbcqO0uKojg6NaXmRGdaaGGzirk/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Algoritma dan Struktur Data\nDefinisi Algoritma dan Struktur Data\nAnalisis kompleksitas waktu dan ruang\nNotasi Big-O\nPemilihan algoritma dan keputusan desain',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Struktur Data Dasar\nAnalisis kompleksitas waktu dan ruang\nNotasi Big-O\nPemilihan algoritma dan keputusan desain',
        },
      ],
      'proyek': [
        {
          'name': 'Binomo',
          'imageUrl': 'assets/materi3.png',
          'externalUrl': '',
        },
        {
          'name': 'Simplicity',
          'imageUrl': 'assets/materi4.png',
          'externalUrl': '',
        },
      ],
    },
    'Jaringan Komputer': {
      'materi': [
        {
          'name': 'Pengantar Jaringan',
          'imageUrl': 'assets/jaringan1.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/1-_D2N28SwqOMP6YvhQ_Quq4abW1n9YVo/view?usp=sharing',
        },
        {
          'name': 'Topologi Jaringan',
          'imageUrl': 'assets/jaringan2.jpeg',
          'externalUrl':
              'https://drive.google.com/file/d/1-_D2N28SwqOMP6YvhQ_Quq4abW1n9YVo/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Jaringan dan Topologi Jaringan\nDefinisi Jaringan dan Topologi\nKonsep Dasar Jaringan\nModel OSI\nPerangkat Jaringan',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Protokol Jaringan\nTCP/IP\nIP Addressing\nSubnetting\nRouting',
        },
      ],
      'proyek': [
        {
          'name': 'Simulasi Jaringan',
          'imageUrl': 'assets/jaringan1.jpg',
          'externalUrl': '',
        },
        {
          'name': 'Konfigurasi Router',
          'imageUrl': 'assets/jaringan2.jpeg',
          'externalUrl': '',
        },
      ],
    },
    'Anatomi': {
      'materi': [
        {
          'name': 'Sistem Peredaran Darah',
          'imageUrl': 'assets/anatomi1.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/1Zpi_dUKw5GcOnOx_ICyrKu_yeZ7YEi3D/view?usp=sharing',
        },
        {
          'name': 'Sistem Saraf',
          'imageUrl': 'assets/anatomi2.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/1Zpi_dUKw5GcOnOx_ICyrKu_yeZ7YEi3D/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Anatomi dan Sistem Organ\nDefinisi Anatomi\nStruktur dan Fungsi Sistem Organ\nSistem Peredaran Darah',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Sistem Saraf dan Sistem Pencernaan\nStruktur dan Fungsi Sistem Saraf\nStruktur dan Fungsi Sistem Pencernaan',
        },
      ],
      'proyek': [
        {
          'name': 'Proyek Sistem Saraf',
          'imageUrl': 'assets/anatomi2.jpg',
          'externalUrl': '',
        },
        {
          'name': 'Model Peredaran Darah',
          'imageUrl': 'assets/anatomi1.jpg',
          'externalUrl': '',
        },
      ],
    },
    'Farmakologi': {
      'materi': [
        {
          'name': 'Patomekanisme',
          'imageUrl': 'assets/farmakologi1.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/14FjI2TA3ZghMa81I4p9z8OR-jLECnVhh/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Farmakologi dan Terminologi Dasar\nFarmakokinetik\nAbsorpsi, Distribusi, Metabolisme, Ekskresi\nFarmakodinamik\nMekanisme Kerja Obat',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Farmakokinetik Lanjut\nFaktor yang Mempengaruhi Farmakokinetik\nInteraksi Obat\nFarmakogenomik\nVariabilitas Respon Obat',
        },
      ],
      'proyek': [],
    },
    'Animasi': {
      'materi': [
        {
          'name': 'Prinsip Animasi',
          'imageUrl': 'assets/animasi1.jpeg',
          'externalUrl':
              'https://drive.google.com/file/d/1NeunzCUGMB8KYB55iH1JhW2mxunjWw5O/view?usp=sharing',
        },
        {
          'name': 'Teknik Animasi 2D',
          'imageUrl': 'assets/animasi2.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/1NeunzCUGMB8KYB55iH1JhW2mxunjWw5O/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Animasi\nSejarah Animasi\nPrinsip Animasi\nTeknik Animasi Tradisional\nTeknik Animasi Digital',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Animasi 2D\nPerangkat Lunak Animasi 2D\nTeknik Frame-by-Frame\nTweening\nRigging',
        },
      ],
      'proyek': [],
    },
    'Desain Grafis': {
      'materi': [
        {
          'name': 'Desain Grafis Dasar',
          'imageUrl': 'assets/visual1.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/17-E2C6J89Z_bQoLmP5KM47fYYoaRGNOV/view?usp=sharing',
        },
        {
          'name': 'Teori Warna',
          'imageUrl': 'assets/visual2.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/17-E2C6J89Z_bQoLmP5KM47fYYoaRGNOV/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Desain Grafis\nSejarah Desain Grafis\nPrinsip Desain Grafis\nElemen Desain\nTipografi',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Teori Warna\nPsikologi Warna\nPalet Warna\nKombinasi Warna\nPenggunaan Warna dalam Desain',
        },
      ],
      'proyek': [],
    },
    'Teori Komunikasi': {
      'materi': [
        {
          'name': 'Prinsip Komunikasi',
          'imageUrl': 'assets/komunikasi1.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/17kCbWtam6ChpXWEgW34mQUYXVaQQIxwC/view?usp=sharing',
        },
        {
          'name': 'Komunikasi Massa',
          'imageUrl': 'assets/komunikasi2.png',
          'externalUrl':
              'https://drive.google.com/file/d/17kCbWtam6ChpXWEgW34mQUYXVaQQIxwC/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Teori Komunikasi\nDefinisi dan Ruang Lingkup Komunikasi\nModel-model Komunikasi\nProses Komunikasi\nKomunikasi Verbal dan Nonverbal',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Teori Komunikasi Interpersonal\nHubungan Interpersonal\nKomunikasi dalam Kelompok\nDinamika Kelompok\nResolusi Konflik',
        },
      ],
      'proyek': [],
    },
    'Integral': {
      'materi': [
        {
          'name': 'Integral Kompleks',
          'imageUrl': 'assets/mat_1.png',
          'externalUrl':
              'https://drive.google.com/file/d/1aT1VMG08BUD7_W8pRz72LNz7vammpgwn/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Integral\nDefinisi Integral\nIntegral Tak Tentu\nTeknik Pengintegralan\nAplikasi Integral dalam Geometri',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Integral Tentu\nTeorema Dasar Kalkulus\nMetode Substitusi\nMetode Parsial\nAplikasi Integral dalam Fisika',
        },
      ],
      'proyek': [],
    },
    'Statistika': {
      'materi': [
        {
          'name': 'Statistika ANOVA',
          'imageUrl': 'assets/statistika1.jpeg',
          'externalUrl':
              'https://drive.google.com/file/d/12TLPnsDSWsTMumbe5Y0SKhSKGQxLkcNo/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Statistika\nDefinisi Statistika\nJenis-jenis Data\nPengumpulan Data\nPenyajian Data dalam Bentuk Tabel dan Grafik',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Ukuran Pemusatan Data\nRata-rata\nMedian\nModus\nUkuran Penyebaran Data\nRange\nSimpangan Baku\nVarians',
        },
      ],
      'proyek': [],
    },
    'Makhluk Hidup': {
      'materi': [
        {
          'name': 'Archive Nature',
          'imageUrl': 'assets/biologi1.jpeg',
          'externalUrl':
              'https://drive.google.com/file/d/1kxuujzk6pX31yI7Ez1qXzS-W-nLr_d_V/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Biologi\nStruktur Sel\nFungsi Organel Sel\nProses Metabolisme',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Genetika dan Evolusi\nPewarisan Sifat\nTeori Evolusi\nAdaptasi Organisme',
        },
      ],
      'proyek': [],
    },
    'Perancangan Produk': {
      'materi': [
        {
          'name': 'Perancangan Produk Plastik',
          'imageUrl': 'assets/ti1.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/1lIbu8MVMMo85KBqQqqWyzioLOWv3qs3m/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Perancangan Produk\nProses Desain\nAnalisis Kebutuhan\nKonsep dan Ideasi',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Pengembangan Produk\nPrototyping\nEvaluasi Desain\nPerbaikan dan Iterasi',
        },
      ],
      'proyek': [],
    },
    'Aliran Genetik': {
      'materi': [
        {
          'name': 'Aliran Informasi Genetik',
          'imageUrl': 'assets/farmasi_1.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/1gFEITYmODulechAwqgRSPSXyC4elY72J/view?usp=sharing',
        },
        {
          'name': 'Regulasi Ekspresi Gen',
          'imageUrl': 'assets/farmasi_2.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/1gFEITYmODulechAwqgRSPSXyC4elY72J/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Genetika\nStruktur DNA dan RNA\nReplikasi DNA\nTranskripsi dan Translasi',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Mutasi Genetik\nPewarisan Sifat\nAnalisis Genetik\nBioteknologi dan Aplikasinya',
        },
      ],
      'proyek': [],
    },
    'Prinsip Ekonomi': {
      'materi': [
        {
          'name': 'Dasar-Dasar Ekonomi',
          'imageUrl': 'assets/ie_1.jpg',
          'externalUrl':
              'https://drive.google.com/file/d/1AoEJRBp4RzI8ORGQh0SEe1ADkYMQQIk1/view?usp=sharing',
        },
      ],
      'silabus': [
        {
          'minggu': 'Minggu 1-2',
          'deskripsi':
              ': Pengantar Ekonomi\nPermintaan dan Penawaran\nKeseimbangan Pasar\nElastisitas',
        },
        {
          'minggu': 'Minggu 3-4',
          'deskripsi':
              ': Teori Produksi dan Biaya\nProduksi Marginal\nBiaya Produksi\nSkala Ekonomi',
        },
      ],
      'proyek': [],
    },
  };
  Widget _buildCourseContent() {
    var materi = courses[courseName]?['materi'] ?? [];
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: ListView.builder(
        itemCount: materi.length,
        itemBuilder: (context, index) {
          var item = materi[index];
          return Column(
            children: [
              BabCard(
                name: item['name'],
                imageUrl: item['imageUrl'],
                externalUrl: item['externalUrl'],
              ),
              SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSyllabusContent() {
    var silabus = courses[courseName]?['silabus'] ?? [];
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: silabus.map<Widget>((item) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: item['minggu'],
                    style: bodyLarge.copyWith(color: black, fontWeight: bold),
                    children: [
                      TextSpan(
                        text: item['deskripsi'],
                        style: bodyLarge.copyWith(fontWeight: regular),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildProjectContent() {
    var proyek = courses[courseName]?['proyek'] ?? [];
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: ListView.builder(
        itemCount: proyek.length,
        itemBuilder: (context, index) {
          var item = proyek[index];
          return Column(
            children: [
              BabCard(
                name: item['name'],
                imageUrl: item['imageUrl'],
                externalUrl: item['externalUrl'],
              ),
              SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: TabBar(
              tabs: [
                Tab(text: "Materi Kursus"),
                Tab(text: "Silabus"),
                Tab(text: "Project"),
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
              _buildCourseContent(),
              _buildSyllabusContent(),
              _buildProjectContent(),
            ]),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: surface2,
      appBar: AppBar(
        backgroundColor: surface2,
        leading: BackButton(color: white),
        title: Text('Kursus', style: titleMedium.copyWith(color: white)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Text(
                  courseName,
                  style: displaySmall.copyWith(color: white, fontWeight: bold),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 30),
                _tabSection(context)
              ],
            ),
          )
        ],
      ),
    );
  }
}
