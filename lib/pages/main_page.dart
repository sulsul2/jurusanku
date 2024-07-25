import 'package:fe_jurusanku/pages/bookmark_page.dart';
import 'package:fe_jurusanku/pages/discussion_page.dart';
import 'package:fe_jurusanku/pages/home_page.dart';
import 'package:fe_jurusanku/pages/test/personality_test_page.dart';
import 'package:fe_jurusanku/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fe_jurusanku/providers/randomMajor.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 1;

  void changeIndex(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  Widget customBottomNav() {
    return BottomNavigationBar(
      onTap: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: primary90,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            child: Image.asset('assets/question.png', width: 25, color: primary),
          ),
          activeIcon: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryFixedDim,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset('assets/question.png', width: 20, color: primary),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/home.png', width: 25, color: primary),
          label: '',
          activeIcon: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryFixedDim,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset('assets/home.png', width: 20, color: primary),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark, color: primary),
          label: '',
          activeIcon: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryFixedDim,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(Icons.bookmark, color: primary, size: 20),
          ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/discussion.png', width: 25, color: primary),
          label: '',
          activeIcon: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryFixedDim,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset('assets/discussion.png', width: 20, color: primary),
          ),
        ),
      ],
    );
  }

  Widget body({bool beforeTest = false}) {
    switch (currentIndex) {
      case 0:
        return PersonalityTestPage();
      case 1:
        return HomePage(
          currentIndex: currentIndex,
          onIndexChanged: changeIndex,
          beforeTest: beforeTest,
        );
      case 2:
        return BookmarkPage();
      case 3:
        return DiscussionPage();
      default:
        return HomePage(
          currentIndex: currentIndex,
          onIndexChanged: changeIndex,
          beforeTest: beforeTest,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final majorProvider = Provider.of<MajorProvider>(context);

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(beforeTest: majorProvider.randomMajor == null),
    );
  }
}
