import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, required this.text, this.onPressed});

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          backgroundColor: Colors.blueAccent.shade700),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
