import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String maintext;
  final String undertext;
  final String textbutton;
  const HeadingText({super.key, required this.maintext, required this.undertext, required this.textbutton});

  @override
  Widget build(BuildContext context) {
    return   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      
                       maintext,
                      style: const TextStyle(
                        
                          fontSize: 36,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      undertext,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                      ),
                    )
                  ],
                ),
                TextButton(onPressed: (){}, child:  Text(textbutton,style: TextStyle(fontSize: 11,color: Colors.black),))
              ],
            );
  }
}