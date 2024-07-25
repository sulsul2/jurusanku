import 'package:fe_jurusanku/pages/jurusan_page.dart';
import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

// ignore: must_be_immutable
class JurusanCard extends StatefulWidget {
  String name;
  String imageUrl;
  bool bookmarked;
  JurusanCard({this.name = '',this.imageUrl = 'assets/doctor.png',this.bookmarked = false});

  @override
  State<JurusanCard> createState() => _JurusanCardState();
}

class _JurusanCardState extends State<JurusanCard> {

  late bool bookmarked;

  @override
  void initState() {
    super.initState();
    bookmarked = widget.bookmarked;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: 328,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: white,
      ),
      child:Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => JurusanPage(jurusan: widget.name),
                ),
              );
            },
            child: Container(
              height: 145,
              width: 156,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('${widget.imageUrl}'),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10,right: 10,left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(bottom: 5),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          bookmarked = true;
                        });
                      },
                        child: Icon(bookmarked ? Icons.bookmark : Icons.bookmark_border_outlined,color: primary,)),
                    alignment: Alignment.centerRight,
                  ),
                  Text('${widget.name}',style: titleLarge.copyWith(fontWeight: bold),overflow: TextOverflow.ellipsis,textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.bookmark_border_outlined,color: neutral60,),
                      SizedBox(width: 5,),
                      Text('1,1rb',style: labelSmall.copyWith(color: neutral60,fontWeight: bold),)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
