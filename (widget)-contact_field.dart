import 'package:flutter/material.dart';

class CustomContactField extends StatelessWidget 
{
  final String label;

  const CustomContactField({super.key, required this.label});

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      height: 25,
      decoration: const BoxDecoration
      (
        color: Color.fromARGB(255, 218, 216, 216),
        boxShadow: 
          [ 
            BoxShadow
            (
              color: Color.fromARGB(255, 26, 73, 51),
              blurRadius: 2,
              spreadRadius: 1,
              offset: Offset(3, 4),
            )
          ]
      ),
      child: TextField
      (
        decoration: InputDecoration
        (
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 12), 
          border: InputBorder.none, 
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), 
          hintStyle: const TextStyle(color: Colors.black)
        ),
      ),
    );
  }
}
