import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text1;
  final VoidCallback ontap;
  const Button({super.key, required this.text1, required this.ontap, });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        width: double.infinity,
        height: 63,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xff77207D),
        ),
        child: Center(
            child: Text(
          widget.text1,
          style: TextStyle(fontSize: 16, color: Colors.white),
        )),
      ),
    );
  }
}
