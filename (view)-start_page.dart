import 'package:flutter/material.dart';
import 'package:flutter_scooble_app/auth/login_page.dart';
import 'package:flutter_scooble_app/widget/custom_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Heading',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 14),
                  Text(
                      '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      style: TextStyle(color: Colors.black, fontSize: 14)),
                  SizedBox(height: 10),
                  Text(
                      ' ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
                      style: TextStyle(color: Colors.black, fontSize: 14)),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: CustomButtonPage(
                title: 'Get Started',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

