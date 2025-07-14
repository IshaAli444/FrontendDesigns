import 'package:flutter/material.dart';
import 'package:flutter_ui_screens/view/welcome.dart';
import 'package:flutter_ui_screens/widget/custom_button.dart';
import 'package:flutter_ui_screens/widget/custom_container.dart';
import 'package:flutter_ui_screens/widget/password_container.dart';

class SignupScreen extends StatelessWidget 
{
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Colors.white,
      appBar: AppBar
      (
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      body: SingleChildScrollView
      (
        child: Column
        (
          children: 
          [
            const SizedBox(height: 35),
            const Center(child: Text('Create account', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold))),
            const SizedBox(height: 50),
            const Padding
            (
              padding: EdgeInsets.only(left: 25, right: 25),
              child: CustomContainer(icon: Icons.person, label: 'Name'),
            ),
            const SizedBox(height: 10),
            const Padding
            (
              padding: EdgeInsets.only(left: 25, right: 25),
              child: PasswordContainer(icon: Icons.lock, label: 'Password', iconP: Icons.password_outlined),
            ),
            const SizedBox(height: 10),
            const Padding
            (
              padding: EdgeInsets.only(left: 25, right: 25),
              child: CustomContainer(icon: Icons.email, label: 'Email'),
            ),
            const SizedBox(height: 10),
            const Padding
            (
              padding: EdgeInsets.only(left: 25, right: 25),
              child: CustomContainer(icon: Icons.phone, label: 'Mobile'),
            ),
            const SizedBox(height: 70),
            Padding
            (
              padding: const EdgeInsets.only(left:25, right: 25),
              child: CustomButtonPage(title: 'Create', ontap: () {const WelcomePage();}),
            ),
            const SizedBox(height: 40),
            TextButton(onPressed: () {}, child: const Text('Or create account with social media', style: TextStyle(color: Colors.grey))),
            
            Padding
            (
              padding: const EdgeInsets.only(bottom: 20, top: 5),
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Image.asset('assets/facebook.png', height: 20, width: 20),
                  const SizedBox(width: 3),
                  Image.asset('assets/twitter.png', height: 25.5, width: 25.5),
                  const SizedBox(width: 3),
                  Image.asset('assets/google plus.png', height: 20, width: 20)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
