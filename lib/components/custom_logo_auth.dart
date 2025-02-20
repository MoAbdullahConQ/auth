import 'package:flutter/material.dart';

class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration:
          BoxDecoration(color: Colors.grey.shade100, shape: BoxShape.circle),
      child: Image.asset(
        'assets/logo.png',
      ),
    );
  }
}
