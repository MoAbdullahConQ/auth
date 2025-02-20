import 'package:flutter/material.dart';
import 'package:flutter_course_wael/components/custom_button_auth.dart';
import 'package:flutter_course_wael/components/custom_logo_auth.dart';
import 'package:flutter_course_wael/components/textformfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            CustomLogoAuth(),
            const SizedBox(height: 10),
            const Text(
              'Login',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text('Login to continue using the app',
                style: TextStyle(color: Colors.grey, fontSize: 16)),
            const SizedBox(height: 20),
            const Text('Email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            CustomTextform(hint: 'Enter your email', myController: email),
            const SizedBox(height: 18),
            const Text('Password',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            CustomTextform(hint: 'Enter password', myController: pass),
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
              onTap: () {
                Navigator.of(context).pushNamed('register');
              },
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
