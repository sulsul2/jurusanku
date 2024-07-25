import 'package:flutter/cupertino.dart';
import 'package:fe_jurusanku/theme.dart';

class DiscussionPage extends StatelessWidget {
  const DiscussionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: surface2,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Coming Soon!',style: titleHome.copyWith(color: white,fontWeight: bold),),
          SizedBox(height: 10,),
          Text('Fitur ini masih dalam perkembangan, jadi tunggu saja ya! :-)',style: titleLarge.copyWith(color: white),textAlign: TextAlign.center,)
        ],
      )
    );
  }
}
