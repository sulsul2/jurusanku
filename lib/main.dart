import 'package:fe_jurusanku/pages/jurusan_page.dart';
import 'package:fe_jurusanku/pages/main_page.dart';
import 'package:fe_jurusanku/pages/materi_page.dart';
import 'package:fe_jurusanku/pages/register/register_disabel_page.dart';
import 'package:fe_jurusanku/pages/register/register_siswa_page.dart';
import 'package:fe_jurusanku/pages/test/result_page.dart';
import 'package:fe_jurusanku/pages/sign_in_page.dart';
import 'package:fe_jurusanku/pages/register/sign_up_page.dart';
import 'package:fe_jurusanku/pages/test/test_page.dart';
import 'package:fe_jurusanku/providers/randomMajor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/splash_page.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => MajorProvider(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/register-siswa': (context) => RegisterSiswaPage(),
        '/register-disabel': (context) => RegisterDisabelPage(),
        '/home': (context) => MainPage(),
        '/jurusan': (context) => JurusanPage(),
        '/test': (context) => TestPage(),
        '/test-result': (context) => ResultPage(),
        '/materi': (context) => MateriPage(),
      },
    );
  }
}
