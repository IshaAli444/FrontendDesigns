import 'package:flutter/material.dart';

class PasswordContainer extends StatelessWidget 
{
  final String label;
  final IconData icon;
  final IconData iconP;
  const PasswordContainer({super.key, required this.icon, required this.label, required this.iconP});

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      decoration: BoxDecoration
      (
        borderRadius: BorderRadius.circular(40),
        boxShadow: 
        const [
          BoxShadow
          (
            color: Color.fromARGB(255, 213, 212, 212),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField
      (
        obscureText: true,
        decoration: InputDecoration
        (
          hintText: label,
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: Icon(icon),
          prefixIconColor: Colors.grey,
          suffixIcon: Icon(iconP),
          suffixIconColor: Colors.grey,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder
          (
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide
            (
              color: Colors.grey, 
            ),
          ),
        ),
      ),
    );
  }
}
