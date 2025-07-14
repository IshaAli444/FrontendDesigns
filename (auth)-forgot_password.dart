import 'package:flutter/material.dart';
import 'package:flutter_ui_screens/view/welcome.dart';
import 'package:flutter_ui_screens/widget/custom_button.dart';
import 'package:flutter_ui_screens/widget/custom_container.dart';

class ForgotPasswod extends StatelessWidget 
{
  const ForgotPasswod({super.key});

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
      body: Column
      (
        children: 
        [
          const SizedBox(height: 35),
          const Center(child: Text('Forgot Password', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold))),
          const SizedBox(height: 20),
          Center
          (
            child: Padding
            (
              padding: const EdgeInsets.only(left: 24),
              child: Container
                (
                  height: 100,
                  width: 260,
                  color: Colors.white,
                  child: const Text("Provide your accont's email for which you want to reset password", style: TextStyle(color: Colors.grey, fontSize: 14)),
                ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding
            (
              padding: EdgeInsets.only(left: 25, right: 25),
              child: CustomContainer(icon: Icons.email, label: 'Email'),
            ),
            const SizedBox(height: 70),
            Padding
            (
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: CustomButtonPage(title: 'Next', ontap: () {const WelcomePage();},),
            ),
        ],
      ),
    );
  }
}
