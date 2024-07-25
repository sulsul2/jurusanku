import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class RegisterSiswaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background3.png'),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('JurusanKu',style: displayMedium.copyWith(color: white,fontWeight: bold),),
              SizedBox(height: 8,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text('Sudah punya akun?',style: bodySmall.copyWith(fontWeight: bold,color: white)),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/sign-in');
                      },
                      child: Text(' Ketuk disini untuk login.',style: bodySmall.copyWith(fontWeight: bold,color: white)
                      ),
                    )
                  ]
              ),
              SizedBox(height: 17,),
              Text('Sign Up',style: displayTitle.copyWith(fontWeight: bold,color: white),),
              SizedBox(height: 17,),
              Container(
                width: 328,
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 28),
                decoration: BoxDecoration(
                    color: white1,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    Text('Apakah Anda seorang siswa atau mentor?',style: bodyLarge,textAlign: TextAlign.center,),
                    SizedBox(height: 30,),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text('Siswa',style: button.copyWith(color: primary),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:primary90,
                          fixedSize: Size(275, 40),
                          elevation: 0,
                          side: BorderSide(color: primary)
                        ),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text('Mentor',style: button.copyWith(color: primary),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:primary90,
                          fixedSize: Size(275, 40),
                          elevation: 0,
                          side: BorderSide(color: primary)
                        ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
