import 'package:fe_jurusanku/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background1.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('JurusanKu',style: displayMedium.copyWith(fontWeight: bold,color: white),),
            SizedBox(height: 102,),
            Text('Temukan jurusan\nkuliah terbaik\nuntukmu sekarang,\nhanya dalam satu\naplikasi.',style: headlineSmall.copyWith(color: white,fontWeight: bold),textAlign: TextAlign.center,),
            SizedBox(height: 102,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/sign-in');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: white,
                  fixedSize: Size(260, 40)
                ),
                child: Text("Login",style: button.copyWith(color: primary,fontWeight: bold),)
            ),
            SizedBox(height: 16,),
            OutlinedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/sign-up");
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: white,
                  ),
                  fixedSize: Size(260, 40)
                ),
                child: Text('Sign Up',style: button.copyWith(color: white,fontWeight: bold),)
            )
          ],
        ),
      ),
    );
  }
}
