import 'package:flutter/material.dart';
import 'package:game_app/dashboardpages/dashboard_page.dart';
import 'package:game_app/pages/choose_payment.dart';
import 'package:game_app/pages/create_account.dart';
import 'package:game_app/pages/loading_screen.dart';
import 'package:game_app/pages/signinscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}
