import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onTap;
  const MyButton(
      {super.key,
      required this.color,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: color),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
