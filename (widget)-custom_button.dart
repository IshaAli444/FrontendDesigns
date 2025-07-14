import 'package:flutter/material.dart';

class CustomButtonPage extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  const CustomButtonPage({super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          height: 55,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 206, 93, 4),
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
          child: Center(
              child: Text(title,
                  style: const TextStyle(color: Colors.white, fontSize: 18)))),
    );
  }
}

