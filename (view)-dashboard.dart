import 'package:flutter/material.dart';
import 'package:flutter_ui_screens/view/about_us.dart';
import 'package:flutter_ui_screens/view/contact_us.dart';
import 'package:flutter_ui_screens/view/service_screen.dart';
import 'package:flutter_ui_screens/view/test.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const DrawerButton(),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.black),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 130,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 22, 78, 23),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
            Container(
              height: 20,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8, top: 40, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                        padding: EdgeInsets.only(right: 8.0, top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('01',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            Text('ACTIVE',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))
                          ],
                        ),
                      )),
                  Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                        padding: EdgeInsets.only(right: 8.0, top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('01',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            Text('PENDING',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))
                          ],
                        ),
                      )),
                  Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                        padding: EdgeInsets.only(right: 8.0, top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('01',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            Text('ARCHIVE',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ]),
          const SizedBox(height: 60),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ServiceScreen()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 22, 78, 23),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Column(
                        children: [
                          Icon(Icons.check_box, color: Colors.white, size: 50),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0, top: 35),
                            child: Text('Services',
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Contactuspage()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 22, 78, 23),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Column(
                        children: [
                          Icon(Icons.phone, color: Colors.white, size: 50),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0, top: 35),
                            child: Text('Contact  us',
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Aboutuspage()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 22, 78, 23),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Column(
                        children: [
                          Icon(Icons.person, color: Colors.white, size: 50),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0, top: 35),
                            child: Text('About us',
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TestPage()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 22, 78, 23),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Column(
                        children: [
                          Icon(Icons.question_mark,
                              color: Colors.white, size: 50),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0, top: 35),
                            child: Text('Support',
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

