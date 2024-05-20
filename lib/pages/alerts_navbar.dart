import 'package:flutter/material.dart';

class AlertsNavBar extends StatelessWidget {
  const AlertsNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Alerts BottomAppBar"),
          centerTitle: true,
        ),
        body: const Text(
          "Alerts Section",
          style: TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
