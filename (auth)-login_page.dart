import 'package:flutter/material.dart';
import 'package:flutter_scooble_app/auth/sign_up_page.dart';
import 'package:flutter_scooble_app/widget/custom_button.dart';
import 'package:flutter_scooble_app/widget/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                'assets/Vector.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Image.asset('assets/Group 16.png',
                  width: double.infinity, fit: BoxFit.cover)
            ]),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
              child:
                  CustomTextField(icon: Icons.email_outlined, label: 'Email'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(height: 1, color: Colors.black),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 5),
              child: CustomTextField(label: 'Password', icon: Icons.lock),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(height: 1, color: Colors.black),
            ),
            const SizedBox(height: 5),
            TextButton(
                onPressed: () {},
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password?',
                      style: TextStyle(color: Color.fromARGB(255, 47, 8, 94))),
                )),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: CustomButtonPage(
                title: 'Log in',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()));
                },
              ),
            ),
            const SizedBox(height: 5),
            const Text("If you don't have an account registered",
                style: TextStyle(color: Colors.black, fontSize: 12)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('You can',
                    style: TextStyle(color: Colors.black, fontSize: 12)),
                TextButton(
                    onPressed: () {},
                    child: const Text('Register here!',
                        style: TextStyle(
                            color: Color.fromARGB(255, 206, 98, 9),
                            fontSize: 12)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
