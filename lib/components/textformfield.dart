import 'package:flutter/material.dart';

class CustomTextform extends StatelessWidget {
  const CustomTextform(
      {super.key, required this.hint, required this.myController});

  final String hint;
  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: const Icon(Icons.visibility),
        fillColor: Colors.grey.shade100,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: const BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.white)),
      ),
    );
  }
}
