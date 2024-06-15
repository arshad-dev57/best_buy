import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String? buttonText;
  final VoidCallback tap;
  Button1({
    super.key,
    required this.buttonText, required this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xffDB3022),
      ),
      child: ElevatedButton(
          onPressed: tap,
          child: Text(
            buttonText!,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          )),
    );
  }
}
