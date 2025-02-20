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
            CustomTextform(hint: 'Enter password', myController: pass),
            const SizedBox(height: 18),
            const Text('Confirm Password',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            CustomTextform(hint: 'Enter confirm password', myController: pass),
            const SizedBox(height: 16),
            const SizedBox(
              width: double.infinity,
              child: Text('Forget Password?',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 16),
            CustomButtonAuth(
              text: 'Login',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 60),
                  backgroundColor: Colors.red.shade500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Or Login With',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/google.png',
                    color: Colors.black,
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {},
              child: const Text.rich(
                textAlign: TextAlign.center,
                TextSpan(children: [
                  TextSpan(
                      text: 'Don\'t have an account?',
                      style: TextStyle(fontSize: 18)),
                  TextSpan(
                      text: '  Register',
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
