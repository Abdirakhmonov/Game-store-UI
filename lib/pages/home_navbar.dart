import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home BottomAppBar"),
          centerTitle: true,
        ),
        body: const Text(
          "Home Section",
          style: TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
