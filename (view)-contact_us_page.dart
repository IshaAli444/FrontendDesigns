import 'package:flutter/material.dart';
import 'package:flutter_ui_screens/widget/custom_contact_field.dart';

class Contactuspage extends StatelessWidget {
  const Contactuspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(13),
            bottomRight: Radius.circular(13),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 7, 60, 9),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
        title: const Text(
          "Contact Us",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Container(
            width: 400,
            height: 540,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 7, 60, 9),
              border: Border.all(
                color: const Color.fromARGB(255, 128, 128, 128),
                width: 1,
              ),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(150),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 4.0,
                  blurRadius: 8.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.only(left: 40, right: 10),
                  child: Row(
                    children: [
                      Icon(
                        size: 30,
                        Icons.call,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '03001122333',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 40, right: 10),
                  child: Row(
                    children: [
                      Icon(
                        size: 30,
                        Icons.mail,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'abc@gmail.com',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 40, right: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'street num#37\n city,Pakistan',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 26),
                const Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: CustomContactField(label: 'Name'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: CustomContactField(label: 'Email'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: CustomContactField(label: 'Message'),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 7, 60, 9),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 7, 40, 12),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(3, 4),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text('Send Message',
                        style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
