import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const MyTextBox(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(fontSize: 15),
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
