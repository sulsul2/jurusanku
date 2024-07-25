import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class SignUpPage extends StatelessWidget {

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
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Username or Email',
                          labelStyle: button.copyWith(color: label),
                          border: OutlineInputBorder(),
                          isCollapsed: true,
                          contentPadding: EdgeInsets.all(15)
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: button.copyWith(color: label),
                          border: OutlineInputBorder(),
                          isCollapsed: true,
                          contentPadding: EdgeInsets.all(15)
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: button.copyWith(color: label),
                          border: OutlineInputBorder(),
                          isCollapsed: true,
                          contentPadding: EdgeInsets.all(15)
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/register-disabel');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primary,
                            fixedSize: Size(260, 40),
                            foregroundColor: onPrimary
                        ),
                        child: Text("Create New Account",style: button.copyWith(color: onPrimary,fontWeight: bold),)
                    ),
                    SizedBox(height: 20,),
                    Text('OR',style: displayBody,),
                    SizedBox(height: 20,),
                    OutlinedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/register-disabel');
                        },
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: primary,

                            ),
                            fixedSize: Size(260, 40)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/logingoogle.png',width: 18,),
                            SizedBox(width: 12,),
                            Text('Sign up with Google',style: button.copyWith(fontWeight: bold,color: primary),)
                          ],
                        )
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
