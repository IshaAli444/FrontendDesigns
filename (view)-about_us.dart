import 'package:flutter/material.dart';

class Aboutuspage extends StatelessWidget {
  const Aboutuspage({super.key});

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
          "About Us",
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum et venenatis, et phasellus urna eget volutpat scelerisque. Morbi mauris faucibus vestibulum diam eleifend cursus ac commodo. Ultrices nisl sed massa massa in iaculis quisque iaculis tellus. Tellus lacus non convallis et maecenas eget arcu.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Image.asset(
                    'assets/Map.png',
                    width: 345,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

