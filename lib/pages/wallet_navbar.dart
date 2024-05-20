import 'package:flutter/material.dart';

class WalletNavBar extends StatelessWidget {
  const WalletNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Wallet BottomAppBar"),
          centerTitle: true,
        ),
        body: const Text(
          "Wallet Section",
          style: TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
