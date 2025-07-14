import 'package:flutter/material.dart';
import 'package:flutter_ui_screens/auth/forgot_password.dart';
import 'package:flutter_ui_screens/auth/signup_screen.dart';
import 'package:flutter_ui_screens/view/dashboard.dart';
import 'package:flutter_ui_screens/widget/custom_button.dart';
import 'package:flutter_ui_screens/widget/custom_container.dart';
import 'package:flutter_ui_screens/widget/password_container.dart';

class LoginScreen extends StatelessWidget 
{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column
          (
            children: 
            [
              const SizedBox(height: 70),
              const Align
              (
                alignment: Alignment.topCenter,
                child: Text('Hello', style: TextStyle(color: Colors.black, fontSize: 54, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height:4),
              const Text('Sign in to your account', style: TextStyle(color: Colors.black, fontSize: 11.5)),
              const SizedBox(height: 80),
            const CustomContainer(icon: Icons.person, label: 'User name'),
              const SizedBox(height: 20),
              const PasswordContainer(icon: Icons.lock, label: 'Password', iconP: Icons.password_outlined),
              const SizedBox(height: 10),
              TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswod()));}, child: const Align(alignment: Alignment.centerRight, child: Text('forgot your password?', style: TextStyle(color: Colors.grey, fontSize: 14, decoration: TextDecoration.underline)))),
              const SizedBox(height: 40),
              CustomButtonPage(title: 'Sign In', ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));},),
              const SizedBox(height: 40),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  const Text("Don't have an account?", style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold)),
                  TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen()));}, child: const Text('Create', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
