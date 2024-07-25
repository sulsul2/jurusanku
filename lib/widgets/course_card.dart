import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';
import 'package:fe_jurusanku/pages/materi_page.dart'; // Import the MateriPage

// ignore: must_be_immutable
class CourseCard extends StatefulWidget {
  bool isView;
  String imageUrl;
  String title;

  CourseCard({
    this.isView = true,
    this.imageUrl = 'assets/alstrukdat.png',
    this.title = 'Algoritma dan Struktur Data',
  });

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  late bool _isView;

  @override
  void initState() {
    super.initState();
    // Initialize _isView with the value from the constructor parameter
    _isView = widget.isView;
  }

  bool get isView => _isView;

  void setIsView(bool value) {
    setState(() {
      _isView = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 231,
      width: 155,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12), color: white),
      child: Column(
        children: [
          Container(
            width: 155,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage('${widget.imageUrl}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.title,
              style: titleSmall.copyWith(fontWeight: bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              if (_isView) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MateriPage(courseName: widget.title),
                  ),
                );
              }
              setIsView(true);
            },
            child: Text(
              '${_isView ? 'View' : 'Enroll'}',
              style: button.copyWith(color: primary, fontWeight: bold),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonCard,
              elevation: 0,
              side: BorderSide(color: primary),
              fixedSize: Size(127, 40),
            ),
          ),
        ],
      ),
    );
  }
}
