import 'package:flutter/material.dart';

class headingtext extends StatelessWidget {
  final String text1;
  final String text2;
  const headingtext({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          text2,
          style: TextStyle(
              color: Color(0xff000000),
              fontSize: 14,
              fontWeight: FontWeight.w200),
        ),
        SizedBox(
          height: 35,
        ),
      ],
    );
  }
}
