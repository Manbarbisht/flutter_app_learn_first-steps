import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Manudev";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manu Dev App"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          // ignore: prefer_const_constructors
          child: Text("Welcome To $days Days by $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
