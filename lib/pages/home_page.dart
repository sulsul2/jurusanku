import 'package:fe_jurusanku/pages/jurusan_page.dart';
import 'package:fe_jurusanku/providers/randomMajor.dart';
import 'package:flutter/material.dart';
import 'package:fe_jurusanku/widgets/jurusan_card.dart';
import 'package:fe_jurusanku/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  final int currentIndex;
  final Function(int) onIndexChanged;
  final bool beforeTest;

  HomePage(
      {this.currentIndex = 0,
      required this.onIndexChanged,
      this.beforeTest = true});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  Widget header() {
    return Container(
      height: 56,
      margin: EdgeInsets.only(top: 30),
      child: Text(
        'Beranda',
        style: bodyLarge.copyWith(color: primary50),
      ),
      alignment: Alignment.center,
    );
  }

  Widget beforeTest() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Apa jurusan impianmu?',
          style: titleLarge.copyWith(color: primary, fontWeight: bold),
        ),
        SizedBox(height: 10),
        Text(
          'Kamu belum ambil tes minat bakat, lho! Ambil tesnya sekarang untuk tahu.',
          style: titleMedium,
        ),
      ],
    );
  }

  Widget afterTest(MajorProvider majorProvider) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text('Rekomendasi jurusanmu', style: titleMedium),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JurusanPage(
                        jurusan: majorProvider.randomMajor?['title'] ??
                            'Teknik Informatika'),
                  ),
                );
              },
              child: Text('Detail', style: button.copyWith(color: primary)),
              style: OutlinedButton.styleFrom(side: BorderSide(color: primary)),
            ),
          ],
        ),
        Text(
          majorProvider.randomMajor?['title'] ?? 'Teknik Informatika',
          style: titleLarge.copyWith(color: primary, fontWeight: bold),
        ),
        SizedBox(height: 10),
        Text(
          'Berdasarkan tes terakhir: 7 Januari 2024, 19.00',
          style: titleMedium,
        ),
      ],
    );
  }

  Widget topSheet(BuildContext context) {
    final majorProvider = Provider.of<MajorProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: 'Hello, ',
                    style: titleHome.copyWith(color: white),
                    children: [
                      TextSpan(
                        text: 'Gevyn!',
                        style: titleHome.copyWith(fontWeight: bold),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person, size: 27),
                color: primary,
                style: IconButton.styleFrom(backgroundColor: primaryFixed),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: double.infinity,
            decoration: BoxDecoration(
                color: white, borderRadius: BorderRadius.circular(12)),
            child: widget.beforeTest ? beforeTest() : afterTest(majorProvider),
          ),
          SizedBox(height: 23),
          ElevatedButton(
            onPressed: () {
              widget.onIndexChanged(0);
            },
            style: ElevatedButton.styleFrom(
                fixedSize: Size(301, 40), elevation: 0),
            child: Text(
              "Ambil Tes Minat Bakat Sekarang",
              style: button.copyWith(color: primary, fontWeight: bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget forYou(MajorProvider majorProvider) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Container(
                height: 576,
                width: 328,
                padding: EdgeInsets.only(left: 5, right: 5, top: 18),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 271,
                      height: 198.84,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              majorProvider.randomMajor?['imageUrl'] ??
                                  'assets/informatics1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      majorProvider.randomMajor?['title'] ??
                          'Teknik Informatika',
                      style: headlineMedium.copyWith(fontWeight: bold),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
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
                                Text('Jurusan ini', style: bodyLarge),
                                SizedBox(height: 10),
                                Container(
                                  height: 99,
                                  width: 99,
                                  decoration: BoxDecoration(
                                      color: tertiary90,
                                      borderRadius: BorderRadius.circular(100)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    '80%',
                                    style: headlineLarge.copyWith(
                                        color: tertiary20, fontWeight: bold),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text('Cocok dengan kamu',
                                    style: bodyMedium,
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 136,
                                decoration: BoxDecoration(
                                    color: secondary95,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('#1',
                                        style: displaySmall.copyWith(
                                            fontWeight: bold,
                                            color: titleCard)),
                                    Text('peminat',
                                        style: titleMedium.copyWith(
                                            color: titleCard,
                                            fontWeight: bold)),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 100,
                                width: 136,
                                decoration: BoxDecoration(
                                    color: secondary95,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.bookmark_border_outlined,
                                        size: 40, color: titleCard),
                                    Text(
                                      '1147',
                                      style: titleMedium.copyWith(
                                          color: titleCard, fontWeight: bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JurusanPage(
                                jurusan: majorProvider.randomMajor?['title'] ??
                                    'Teknik Informatika'),
                          ),
                        );
                      },
                      child: Text('Detail Jurusan',
                          style: button.copyWith(
                              fontWeight: bold, color: onPrimary)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primary, fixedSize: Size(301, 40)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _tabSection(BuildContext context, MajorProvider majorProvider) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          Material(
            child: Container(
              child: TabBar(
                tabs: [
                  Tab(text: "Trending"),
                  Tab(text: "Semua Jurusan"),
                  Tab(text: "For You"),
                ],
                indicatorColor: primary,
                labelStyle: button.copyWith(fontWeight: bold, color: primary),
                dividerColor: surface,
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: ListView(
                    children: [
                      JurusanCard(name: 'Pendidikan Dokter'),
                      SizedBox(height: 20),
                      JurusanCard(
                          name: 'Teknik Informatika',
                          imageUrl: 'assets/informatics.png'),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: ListView(
                    children: [
                      JurusanCard(
                          name: 'Ilmu Komunikasi',
                          imageUrl: 'assets/ilkom.png'),
                      SizedBox(height: 20),
                      JurusanCard(name: 'Pendidikan Dokter'),
                      SizedBox(height: 20),
                      JurusanCard(
                          name: 'Teknik Informatika',
                          imageUrl: 'assets/informatics.png'),
                      SizedBox(height: 20),
                      JurusanCard(
                          name: 'Matematika',
                          imageUrl: 'assets/matematika.jpeg'),
                      SizedBox(height: 20),
                      JurusanCard(
                          name: 'Biologi', imageUrl: 'assets/biologi.jpg'),
                      SizedBox(height: 20),
                      JurusanCard(
                          name: 'Farmasi', imageUrl: 'assets/farmasi.jpeg'),
                      SizedBox(height: 20),
                      JurusanCard(
                          name: 'Teknik Industri',
                          imageUrl: 'assets/industri.jpg'),
                      SizedBox(height: 20),
                      JurusanCard(
                          name: 'Ilmu Ekonomi',
                          imageUrl: 'assets/ekonomi.jpeg'),
                      SizedBox(height: 20),
                      JurusanCard(
                          name: 'Desain Komunikasi',
                          imageUrl: 'assets/dkv.png'),
                    ],
                  ),
                ),
                forYou(majorProvider),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final majorProvider = Provider.of<MajorProvider>(context);

    return Scaffold(
      body: Container(
        color: surface,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/backgroundtop.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  header(),
                  topSheet(context),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15, left: 30, right: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Eksplor Jurusan',
                      style: headlineSmall.copyWith(
                          color: primary, fontWeight: bold),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: onPrimary),
                    style: IconButton.styleFrom(backgroundColor: primary),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _tabSection(context, majorProvider),
            ),
          ],
        ),
      ),
    );
  }
}
