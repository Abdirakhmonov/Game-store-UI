import 'package:flutter/material.dart';

class SocialNavBar extends StatelessWidget {
  const SocialNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Social BottomAppBar"),
          centerTitle: true,
        ),
        body: const Text(
          "Social Section",
          style: TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
