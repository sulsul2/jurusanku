import 'package:fe_jurusanku/widgets/jurusan_card.dart';
import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class BookmarkPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        color: surface,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                          'Bookmarked Jurusan',
                          style:
                          headlineSmall.copyWith(color: primary, fontWeight: bold),
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_border_outlined,
                        color: onPrimary,
                      ),
                      style: IconButton.styleFrom(backgroundColor: primary),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40,),
              JurusanCard(
                name: 'Pendidikan\nDokter',
                bookmarked: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
