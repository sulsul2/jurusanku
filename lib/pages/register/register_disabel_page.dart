import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class RegisterDisabelPage extends StatelessWidget {

  String dropdownValue = 'Jenis Disabilitas';
  List<String> options = <String>['Tuna Rungu','Tuna Wicara','Tuna Netra','Jenis Disabilitas'];

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
                    Text('Apakah Anda beridentifikasi sebagai  penyandang disabilitas?',style: bodyLarge,textAlign: TextAlign.center,),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/register-disabel');
                          },
                          child: Text('Ya',style: button.copyWith(color: primary),),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:primary90,
                              elevation: 0,
                              fixedSize: Size(129, 40),
                              side: BorderSide(color: primary)
                          ),
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/register-disabel');
                          },
                          child: Text('Tidak',style: button.copyWith(color: primary),),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:primary90,
                              elevation: 0,
                              fixedSize: Size(129, 40),
                              side: BorderSide(color: primary)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                      text: 'Jika ',
                      style: bodyLarge.copyWith(color: black),
                      children: [
                        TextSpan(
                          text: 'ya',
                          style: bodyLarge.copyWith(fontWeight: bold)
                        ),
                        TextSpan(
                          text: ', mohon sebutkan tipe disabilitas yang Anda agar '
                        ),
                        TextSpan(
                          text: 'JurusanKu',
                          style: bodyLarge.copyWith(fontWeight: bold)
                        ),
                        TextSpan(
                          text: ' dapat disesuaikan dengan kebutuhan Anda.'
                        )
                      ]
                    ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: black)
                      ),
                      child: DropdownButton<String>(
                        underline: Container(
                          height: 3,
                          color: Colors.transparent, //<-- SEE HERE
                        ),
                        style: button.copyWith(color: label),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        isExpanded: true,
                        value: dropdownValue,
                        items:options.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/register-siswa');
                        },
                        child: Text('Selanjutnya',style: button.copyWith(color: white),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary,
                        elevation: 0,
                        fixedSize: Size(276, 40)
                      ),
                    )
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
