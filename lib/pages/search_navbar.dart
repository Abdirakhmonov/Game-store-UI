import 'package:flutter/material.dart';

class SearchtNavBar extends StatelessWidget {
  const SearchtNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Search BottomAppBar"),
          centerTitle: true,
        ),
        body: const Text(
          "Search Section",
          style: TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
