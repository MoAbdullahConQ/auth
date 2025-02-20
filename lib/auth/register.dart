import 'package:flutter/material.dart';
import 'package:flutter_course_wael/components/custom_button_auth.dart';
import 'package:flutter_course_wael/components/custom_logo_auth.dart';
import 'package:flutter_course_wael/components/textformfield.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const CustomLogoAuth(),
            const SizedBox(height: 10),
            const Text(
              'Register',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text('Enter Your Personal Information',
                style: TextStyle(color: Colors.grey, fontSize: 16)),
            const SizedBox(height: 20),
            const Text('Username',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            CustomTextform(hint: 'Enter your name', myController: email),
            const Text('Email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            CustomTextform(hint: 'Enter your email', myController: email),
            const SizedBox(height: 18),
            const Text('Password',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            CustomTextform(
              hint: 'Enter password',
              myController: pass,
              passVisability: true,
            ),
            const SizedBox(height: 18),
            const Text('Confirm Password',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            CustomTextform(
              hint: 'Enter confirm password',
              myController: pass,
              passVisability: true,
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            CustomButtonAuth(
              text: 'Register',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('login');
              },
              child: const Text.rich(
                textAlign: TextAlign.center,
                TextSpan(children: [
                  TextSpan(
                      text: 'Have an account?',
                      style: TextStyle(fontSize: 18)),
                  TextSpan(
                      text: '  Login',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold)),
                ]),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
